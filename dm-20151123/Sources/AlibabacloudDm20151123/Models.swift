import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import DarabonbaNumber
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpAddress"] as? String {
            self.ipAddress = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpFilterId"] as? String {
            self.ipFilterId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddIpfilterResponseBody()
            model.fromMap(value)
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
        if let value = dict["Ticket"] as? String {
            self.ticket = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ApproveReplyMailAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchSendMailRequest : Tea.TeaModel {
    public var accountName: String?

    public var addressType: Int32?

    public var clickTrace: String?

    public var headers: String?

    public var ipPoolId: String?

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
        if self.headers != nil {
            map["Headers"] = self.headers!
        }
        if self.ipPoolId != nil {
            map["IpPoolId"] = self.ipPoolId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AddressType"] as? Int32 {
            self.addressType = value
        }
        if let value = dict["ClickTrace"] as? String {
            self.clickTrace = value
        }
        if let value = dict["Headers"] as? String {
            self.headers = value
        }
        if let value = dict["IpPoolId"] as? String {
            self.ipPoolId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReceiversName"] as? String {
            self.receiversName = value
        }
        if let value = dict["ReplyAddress"] as? String {
            self.replyAddress = value
        }
        if let value = dict["ReplyAddressAlias"] as? String {
            self.replyAddressAlias = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["UnSubscribeFilterLevel"] as? String {
            self.unSubscribeFilterLevel = value
        }
        if let value = dict["UnSubscribeLinkType"] as? String {
            self.unSubscribeLinkType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnvId"] as? String {
            self.envId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BatchSendMailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeDomainDkimRecordRequest : Tea.TeaModel {
    public var dkimRsaLength: Int32?

    public var domain: String?

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
        if self.dkimRsaLength != nil {
            map["DkimRsaLength"] = self.dkimRsaLength!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
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
        if let value = dict["DkimRsaLength"] as? Int32 {
            self.dkimRsaLength = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
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

public class ChangeDomainDkimRecordResponseBody : Tea.TeaModel {
    public var changed: Bool?

    public var dkimPublicKey: String?

    public var dkimRsaLength: Int32?

    public var hostname: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changed != nil {
            map["Changed"] = self.changed!
        }
        if self.dkimPublicKey != nil {
            map["DkimPublicKey"] = self.dkimPublicKey!
        }
        if self.dkimRsaLength != nil {
            map["DkimRsaLength"] = self.dkimRsaLength!
        }
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Changed"] as? Bool {
            self.changed = value
        }
        if let value = dict["DkimPublicKey"] as? String {
            self.dkimPublicKey = value
        }
        if let value = dict["DkimRsaLength"] as? Int32 {
            self.dkimRsaLength = value
        }
        if let value = dict["Hostname"] as? String {
            self.hostname = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ChangeDomainDkimRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeDomainDkimRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChangeDomainDkimRecordResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainId"] as? Int32 {
            self.domainId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainStatus"] as? Int32 {
            self.domainStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MailAddressId"] as? Int32 {
            self.mailAddressId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckReplyToMailAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var dkimSelector: String?

    public override init() {
        super.init()
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
        if self.dkimSelector != nil {
            map["dkimSelector"] = self.dkimSelector!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
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
        if let value = dict["dkimSelector"] as? String {
            self.dkimSelector = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainId"] as? String {
            self.domainId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReplyAddress"] as? String {
            self.replyAddress = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Sendtype"] as? String {
            self.sendtype = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MailAddressId"] as? String {
            self.mailAddressId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateMailAddressResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Desc"] as? String {
            self.desc = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReceiversAlias"] as? String {
            self.receiversAlias = value
        }
        if let value = dict["ReceiversName"] as? String {
            self.receiversName = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReceiverId"] as? String {
            self.receiverId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateReceiverResponseBody()
            model.fromMap(value)
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
        if let value = dict["TagDescription"] as? String {
            self.tagDescription = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagId"] as? String {
            self.tagId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTagResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuppressionId"] as? String {
            self.suppressionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateUserSuppressionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DedicatedIpAutoRenewalRequest : Tea.TeaModel {
    public var autoRenewal: String?

    public var buyResourceIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenewal != nil {
            map["AutoRenewal"] = self.autoRenewal!
        }
        if self.buyResourceIds != nil {
            map["BuyResourceIds"] = self.buyResourceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenewal"] as? String {
            self.autoRenewal = value
        }
        if let value = dict["BuyResourceIds"] as? String {
            self.buyResourceIds = value
        }
    }
}

public class DedicatedIpAutoRenewalResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DedicatedIpAutoRenewalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DedicatedIpAutoRenewalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DedicatedIpAutoRenewalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DedicatedIpChangeWarmupTypeRequest : Tea.TeaModel {
    public var id: String?

    public var warmupType: String?

    public override init() {
        super.init()
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
        if self.warmupType != nil {
            map["WarmupType"] = self.warmupType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["WarmupType"] as? String {
            self.warmupType = value
        }
    }
}

public class DedicatedIpChangeWarmupTypeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DedicatedIpChangeWarmupTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DedicatedIpChangeWarmupTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DedicatedIpChangeWarmupTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DedicatedIpListRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageIndex: Int32?

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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DedicatedIpListResponseBody : Tea.TeaModel {
    public class Ips : Tea.TeaModel {
        public class IpExt : Tea.TeaModel {
            public var autoRenewal: Bool?

            public var hasSendMail: Bool?

            public var lastWarmUpTypeChangedTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoRenewal != nil {
                    map["AutoRenewal"] = self.autoRenewal!
                }
                if self.hasSendMail != nil {
                    map["HasSendMail"] = self.hasSendMail!
                }
                if self.lastWarmUpTypeChangedTime != nil {
                    map["LastWarmUpTypeChangedTime"] = self.lastWarmUpTypeChangedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoRenewal"] as? Bool {
                    self.autoRenewal = value
                }
                if let value = dict["HasSendMail"] as? Bool {
                    self.hasSendMail = value
                }
                if let value = dict["LastWarmUpTypeChangedTime"] as? String {
                    self.lastWarmUpTypeChangedTime = value
                }
            }
        }
        public var expiredTime: String?

        public var id: String?

        public var instanceId: String?

        public var ip: String?

        public var ipExt: DedicatedIpListResponseBody.Ips.IpExt?

        public var ipPoolName: String?

        public var startTime: String?

        public var status: String?

        public var warmupStatus: String?

        public var warmupType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ipExt?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.ipExt != nil {
                map["IpExt"] = self.ipExt?.toMap()
            }
            if self.ipPoolName != nil {
                map["IpPoolName"] = self.ipPoolName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.warmupStatus != nil {
                map["WarmupStatus"] = self.warmupStatus!
            }
            if self.warmupType != nil {
                map["WarmupType"] = self.warmupType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["IpExt"] as? [String: Any?] {
                var model = DedicatedIpListResponseBody.Ips.IpExt()
                model.fromMap(value)
                self.ipExt = model
            }
            if let value = dict["IpPoolName"] as? String {
                self.ipPoolName = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["WarmupStatus"] as? String {
                self.warmupStatus = value
            }
            if let value = dict["WarmupType"] as? String {
                self.warmupType = value
            }
        }
    }
    public var currentPage: Int32?

    public var hasMore: Bool?

    public var ips: [DedicatedIpListResponseBody.Ips]?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCounts: Int32?

    public override init() {
        super.init()
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
        if self.hasMore != nil {
            map["HasMore"] = self.hasMore!
        }
        if self.ips != nil {
            var tmp : [Any] = []
            for k in self.ips! {
                tmp.append(k.toMap())
            }
            map["Ips"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["HasMore"] as? Bool {
            self.hasMore = value
        }
        if let value = dict["Ips"] as? [Any?] {
            var tmp : [DedicatedIpListResponseBody.Ips] = []
            for v in value {
                if v != nil {
                    var model = DedicatedIpListResponseBody.Ips()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ips = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
        }
    }
}

public class DedicatedIpListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DedicatedIpListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DedicatedIpListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DedicatedIpNonePoolListResponseBody : Tea.TeaModel {
    public class Ips : Tea.TeaModel {
        public var id: String?

        public var ip: String?

        public override init() {
            super.init()
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
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
        }
    }
    public var ips: [DedicatedIpNonePoolListResponseBody.Ips]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ips != nil {
            var tmp : [Any] = []
            for k in self.ips! {
                tmp.append(k.toMap())
            }
            map["Ips"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ips"] as? [Any?] {
            var tmp : [DedicatedIpNonePoolListResponseBody.Ips] = []
            for v in value {
                if v != nil {
                    var model = DedicatedIpNonePoolListResponseBody.Ips()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ips = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DedicatedIpNonePoolListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DedicatedIpNonePoolListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DedicatedIpNonePoolListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DedicatedIpPoolCreateRequest : Tea.TeaModel {
    public var buyResourceIds: String?

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
        if self.buyResourceIds != nil {
            map["BuyResourceIds"] = self.buyResourceIds!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuyResourceIds"] as? String {
            self.buyResourceIds = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DedicatedIpPoolCreateResponseBody : Tea.TeaModel {
    public var id: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DedicatedIpPoolCreateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DedicatedIpPoolCreateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DedicatedIpPoolCreateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DedicatedIpPoolDeleteRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
    }
}

public class DedicatedIpPoolDeleteResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DedicatedIpPoolDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DedicatedIpPoolDeleteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DedicatedIpPoolDeleteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DedicatedIpPoolListRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageIndex: Int32?

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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DedicatedIpPoolListResponseBody : Tea.TeaModel {
    public class IpPools : Tea.TeaModel {
        public class Ips : Tea.TeaModel {
            public var id: String?

            public var ip: String?

            public override init() {
                super.init()
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
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
            }
        }
        public var createTime: String?

        public var id: String?

        public var ipCount: Int32?

        public var ips: [DedicatedIpPoolListResponseBody.IpPools.Ips]?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.ipCount != nil {
                map["IpCount"] = self.ipCount!
            }
            if self.ips != nil {
                var tmp : [Any] = []
                for k in self.ips! {
                    tmp.append(k.toMap())
                }
                map["Ips"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["IpCount"] as? Int32 {
                self.ipCount = value
            }
            if let value = dict["Ips"] as? [Any?] {
                var tmp : [DedicatedIpPoolListResponseBody.IpPools.Ips] = []
                for v in value {
                    if v != nil {
                        var model = DedicatedIpPoolListResponseBody.IpPools.Ips()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ips = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var currentPage: String?

    public var hasMore: Bool?

    public var ipPools: [DedicatedIpPoolListResponseBody.IpPools]?

    public var pageSize: String?

    public var requestId: String?

    public var totalCounts: Int32?

    public override init() {
        super.init()
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
        if self.hasMore != nil {
            map["HasMore"] = self.hasMore!
        }
        if self.ipPools != nil {
            var tmp : [Any] = []
            for k in self.ipPools! {
                tmp.append(k.toMap())
            }
            map["IpPools"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["HasMore"] as? Bool {
            self.hasMore = value
        }
        if let value = dict["IpPools"] as? [Any?] {
            var tmp : [DedicatedIpPoolListResponseBody.IpPools] = []
            for v in value {
                if v != nil {
                    var model = DedicatedIpPoolListResponseBody.IpPools()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipPools = tmp
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
        }
    }
}

public class DedicatedIpPoolListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DedicatedIpPoolListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DedicatedIpPoolListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DedicatedIpPoolUpdateRequest : Tea.TeaModel {
    public var buyResourceIds: String?

    public var id: String?

    public var updateResource: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyResourceIds != nil {
            map["BuyResourceIds"] = self.buyResourceIds!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.updateResource != nil {
            map["UpdateResource"] = self.updateResource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuyResourceIds"] as? String {
            self.buyResourceIds = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["UpdateResource"] as? Bool {
            self.updateResource = value
        }
    }
}

public class DedicatedIpPoolUpdateResponseBody : Tea.TeaModel {
    public var id: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DedicatedIpPoolUpdateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DedicatedIpPoolUpdateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DedicatedIpPoolUpdateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainId"] as? Int32 {
            self.domainId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDomainResponseBody()
            model.fromMap(value)
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
        if let value = dict["ToAddress"] as? String {
            self.toAddress = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteInvalidAddressResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FromType"] as? Int32 {
            self.fromType = value
        }
        if let value = dict["Id"] as? String {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteIpfilterByEdmIdResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MailAddressId"] as? Int32 {
            self.mailAddressId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteMailAddressResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReceiverId"] as? String {
            self.receiverId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteReceiverResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReceiverId"] as? String {
            self.receiverId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteReceiverDetailResponseBody()
            model.fromMap(value)
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
        if let value = dict["TagId"] as? Int32 {
            self.tagId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTagResponseBody()
            model.fromMap(value)
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
    }
}

public class DescAccountSummaryResponseBody : Tea.TeaModel {
    public var dailyQuota: Int32?

    public var dailyRemainFreeQuota: Int32?

    public var dayuStatus: Int32?

    public var domains: Int32?

    public var enableTimes: Int32?

    public var ipChannelType: String?

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
        if self.dailyRemainFreeQuota != nil {
            map["DailyRemainFreeQuota"] = self.dailyRemainFreeQuota!
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
        if self.ipChannelType != nil {
            map["IpChannelType"] = self.ipChannelType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DailyQuota"] as? Int32 {
            self.dailyQuota = value
        }
        if let value = dict["DailyRemainFreeQuota"] as? Int32 {
            self.dailyRemainFreeQuota = value
        }
        if let value = dict["DayuStatus"] as? Int32 {
            self.dayuStatus = value
        }
        if let value = dict["Domains"] as? Int32 {
            self.domains = value
        }
        if let value = dict["EnableTimes"] as? Int32 {
            self.enableTimes = value
        }
        if let value = dict["IpChannelType"] as? String {
            self.ipChannelType = value
        }
        if let value = dict["MailAddresses"] as? Int32 {
            self.mailAddresses = value
        }
        if let value = dict["MaxQuotaLevel"] as? Int32 {
            self.maxQuotaLevel = value
        }
        if let value = dict["MonthQuota"] as? Int32 {
            self.monthQuota = value
        }
        if let value = dict["QuotaLevel"] as? Int32 {
            self.quotaLevel = value
        }
        if let value = dict["Receivers"] as? Int32 {
            self.receivers = value
        }
        if let value = dict["RemainFreeQuota"] as? Int32 {
            self.remainFreeQuota = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SmsRecord"] as? Int32 {
            self.smsRecord = value
        }
        if let value = dict["SmsSign"] as? Int32 {
            self.smsSign = value
        }
        if let value = dict["SmsTemplates"] as? Int32 {
            self.smsTemplates = value
        }
        if let value = dict["Tags"] as? Int32 {
            self.tags = value
        }
        if let value = dict["Templates"] as? Int32 {
            self.templates = value
        }
        if let value = dict["UserStatus"] as? Int32 {
            self.userStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescAccountSummaryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainId"] as? Int32 {
            self.domainId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RequireRealTimeDnsRecords"] as? Bool {
            self.requireRealTimeDnsRecords = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public var dkimRsaLength: Int32?

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
        if self.dkimRsaLength != nil {
            map["DkimRsaLength"] = self.dkimRsaLength!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CnameAuthStatus"] as? String {
            self.cnameAuthStatus = value
        }
        if let value = dict["CnameConfirmStatus"] as? String {
            self.cnameConfirmStatus = value
        }
        if let value = dict["CnameRecord"] as? String {
            self.cnameRecord = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DefaultDomain"] as? String {
            self.defaultDomain = value
        }
        if let value = dict["DkimAuthStatus"] as? String {
            self.dkimAuthStatus = value
        }
        if let value = dict["DkimPublicKey"] as? String {
            self.dkimPublicKey = value
        }
        if let value = dict["DkimRR"] as? String {
            self.dkimRR = value
        }
        if let value = dict["DkimRsaLength"] as? Int32 {
            self.dkimRsaLength = value
        }
        if let value = dict["DmarcAuthStatus"] as? Int32 {
            self.dmarcAuthStatus = value
        }
        if let value = dict["DmarcHostRecord"] as? String {
            self.dmarcHostRecord = value
        }
        if let value = dict["DmarcRecord"] as? String {
            self.dmarcRecord = value
        }
        if let value = dict["DnsDmarc"] as? String {
            self.dnsDmarc = value
        }
        if let value = dict["DnsMx"] as? String {
            self.dnsMx = value
        }
        if let value = dict["DnsSpf"] as? String {
            self.dnsSpf = value
        }
        if let value = dict["DnsTxt"] as? String {
            self.dnsTxt = value
        }
        if let value = dict["DomainId"] as? String {
            self.domainId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["DomainStatus"] as? String {
            self.domainStatus = value
        }
        if let value = dict["DomainType"] as? String {
            self.domainType = value
        }
        if let value = dict["HostRecord"] as? String {
            self.hostRecord = value
        }
        if let value = dict["IcpStatus"] as? String {
            self.icpStatus = value
        }
        if let value = dict["MxAuthStatus"] as? String {
            self.mxAuthStatus = value
        }
        if let value = dict["MxRecord"] as? String {
            self.mxRecord = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SpfAuthStatus"] as? String {
            self.spfAuthStatus = value
        }
        if let value = dict["SpfRecord"] as? String {
            self.spfRecord = value
        }
        if let value = dict["SpfRecordV2"] as? String {
            self.spfRecordV2 = value
        }
        if let value = dict["TlDomainName"] as? String {
            self.tlDomainName = value
        }
        if let value = dict["TracefRecord"] as? String {
            self.tracefRecord = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDedicatedIpWarmUpDetailRequest : Tea.TeaModel {
    public var dedicatedIp: String?

    public var endDayMark: Int64?

    public var esp: String?

    public var startDayMark: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dedicatedIp != nil {
            map["DedicatedIp"] = self.dedicatedIp!
        }
        if self.endDayMark != nil {
            map["EndDayMark"] = self.endDayMark!
        }
        if self.esp != nil {
            map["Esp"] = self.esp!
        }
        if self.startDayMark != nil {
            map["StartDayMark"] = self.startDayMark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedIp"] as? String {
            self.dedicatedIp = value
        }
        if let value = dict["EndDayMark"] as? Int64 {
            self.endDayMark = value
        }
        if let value = dict["Esp"] as? String {
            self.esp = value
        }
        if let value = dict["StartDayMark"] as? Int64 {
            self.startDayMark = value
        }
    }
}

public class GetDedicatedIpWarmUpDetailResponseBody : Tea.TeaModel {
    public class Detail : Tea.TeaModel {
        public var dayMark: Int64?

        public var deliverCounts: Int64?

        public var esp: String?

        public var sendCounts: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dayMark != nil {
                map["DayMark"] = self.dayMark!
            }
            if self.deliverCounts != nil {
                map["DeliverCounts"] = self.deliverCounts!
            }
            if self.esp != nil {
                map["Esp"] = self.esp!
            }
            if self.sendCounts != nil {
                map["SendCounts"] = self.sendCounts!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DayMark"] as? Int64 {
                self.dayMark = value
            }
            if let value = dict["DeliverCounts"] as? Int64 {
                self.deliverCounts = value
            }
            if let value = dict["Esp"] as? String {
                self.esp = value
            }
            if let value = dict["SendCounts"] as? Int64 {
                self.sendCounts = value
            }
        }
    }
    public var detail: [GetDedicatedIpWarmUpDetailResponseBody.Detail]?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Detail"] as? [Any?] {
            var tmp : [GetDedicatedIpWarmUpDetailResponseBody.Detail] = []
            for v in value {
                if v != nil {
                    var model = GetDedicatedIpWarmUpDetailResponseBody.Detail()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.detail = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDedicatedIpWarmUpDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDedicatedIpWarmUpDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDedicatedIpWarmUpDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDedicatedIpWarmUpInfoRequest : Tea.TeaModel {
    public var dedicatedIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dedicatedIp != nil {
            map["DedicatedIp"] = self.dedicatedIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedIp"] as? String {
            self.dedicatedIp = value
        }
    }
}

public class GetDedicatedIpWarmUpInfoResponseBody : Tea.TeaModel {
    public class Info : Tea.TeaModel {
        public var esp: String?

        public var finished: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.esp != nil {
                map["Esp"] = self.esp!
            }
            if self.finished != nil {
                map["Finished"] = self.finished!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Esp"] as? String {
                self.esp = value
            }
            if let value = dict["Finished"] as? Bool {
                self.finished = value
            }
        }
    }
    public var info: [GetDedicatedIpWarmUpInfoResponseBody.Info]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.info != nil {
            var tmp : [Any] = []
            for k in self.info! {
                tmp.append(k.toMap())
            }
            map["Info"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Info"] as? [Any?] {
            var tmp : [GetDedicatedIpWarmUpInfoResponseBody.Info] = []
            for v in value {
                if v != nil {
                    var model = GetDedicatedIpWarmUpInfoResponseBody.Info()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.info = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDedicatedIpWarmUpInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDedicatedIpWarmUpInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDedicatedIpWarmUpInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpProtection"] as? String {
            self.ipProtection = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetIpProtectionResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["IpAddress"] as? String {
                    self.ipAddress = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ipfilters"] as? [Any?] {
                var tmp : [GetIpfilterListResponseBody.Data.Ipfilters] = []
                for v in value {
                    if v != nil {
                        var model = GetIpfilterListResponseBody.Data.Ipfilters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetIpfilterListResponseBody.Data()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetIpfilterListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuppressionListLevel"] as? String {
            self.suppressionListLevel = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSuppressionListLevelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTrackListRequest : Tea.TeaModel {
    public var accountName: String?

    public var dedicatedIp: String?

    public var dedicatedIpPoolId: String?

    public var endTime: String?

    public var esp: String?

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
        if self.dedicatedIp != nil {
            map["DedicatedIp"] = self.dedicatedIp!
        }
        if self.dedicatedIpPoolId != nil {
            map["DedicatedIpPoolId"] = self.dedicatedIpPoolId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.esp != nil {
            map["Esp"] = self.esp!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DedicatedIp"] as? String {
            self.dedicatedIp = value
        }
        if let value = dict["DedicatedIpPoolId"] as? String {
            self.dedicatedIpPoolId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Esp"] as? String {
            self.esp = value
        }
        if let value = dict["Offset"] as? String {
            self.offset = value
        }
        if let value = dict["OffsetCreateTime"] as? String {
            self.offsetCreateTime = value
        }
        if let value = dict["OffsetCreateTimeDesc"] as? String {
            self.offsetCreateTimeDesc = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
        if let value = dict["Total"] as? String {
            self.total = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["RcptClickCount"] as? String {
                    self.rcptClickCount = value
                }
                if let value = dict["RcptClickRate"] as? String {
                    self.rcptClickRate = value
                }
                if let value = dict["RcptOpenCount"] as? String {
                    self.rcptOpenCount = value
                }
                if let value = dict["RcptOpenRate"] as? String {
                    self.rcptOpenRate = value
                }
                if let value = dict["RcptUniqueClickCount"] as? String {
                    self.rcptUniqueClickCount = value
                }
                if let value = dict["RcptUniqueClickRate"] as? String {
                    self.rcptUniqueClickRate = value
                }
                if let value = dict["RcptUniqueOpenCount"] as? String {
                    self.rcptUniqueOpenCount = value
                }
                if let value = dict["RcptUniqueOpenRate"] as? String {
                    self.rcptUniqueOpenRate = value
                }
                if let value = dict["TotalNumber"] as? String {
                    self.totalNumber = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["stat"] as? [Any?] {
                var tmp : [GetTrackListResponseBody.Data.Stat] = []
                for v in value {
                    if v != nil {
                        var model = GetTrackListResponseBody.Data.Stat()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public var totalPages: Int32?

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
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OffsetCreateTime"] as? String {
            self.offsetCreateTime = value
        }
        if let value = dict["OffsetCreateTimeDesc"] as? String {
            self.offsetCreateTimeDesc = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetTrackListResponseBody.Data()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTrackListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTrackListByMailFromAndTagNameRequest : Tea.TeaModel {
    public var accountName: String?

    public var dedicatedIp: String?

    public var dedicatedIpPoolId: String?

    public var endTime: String?

    public var esp: String?

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
        if self.dedicatedIp != nil {
            map["DedicatedIp"] = self.dedicatedIp!
        }
        if self.dedicatedIpPoolId != nil {
            map["DedicatedIpPoolId"] = self.dedicatedIpPoolId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.esp != nil {
            map["Esp"] = self.esp!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DedicatedIp"] as? String {
            self.dedicatedIp = value
        }
        if let value = dict["DedicatedIpPoolId"] as? String {
            self.dedicatedIpPoolId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Esp"] as? String {
            self.esp = value
        }
        if let value = dict["Offset"] as? String {
            self.offset = value
        }
        if let value = dict["OffsetCreateTime"] as? String {
            self.offsetCreateTime = value
        }
        if let value = dict["OffsetCreateTimeDesc"] as? String {
            self.offsetCreateTimeDesc = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
        if let value = dict["Total"] as? String {
            self.total = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["RcptClickCount"] as? String {
                    self.rcptClickCount = value
                }
                if let value = dict["RcptClickRate"] as? String {
                    self.rcptClickRate = value
                }
                if let value = dict["RcptOpenCount"] as? String {
                    self.rcptOpenCount = value
                }
                if let value = dict["RcptOpenRate"] as? String {
                    self.rcptOpenRate = value
                }
                if let value = dict["RcptUniqueClickCount"] as? String {
                    self.rcptUniqueClickCount = value
                }
                if let value = dict["RcptUniqueClickRate"] as? String {
                    self.rcptUniqueClickRate = value
                }
                if let value = dict["RcptUniqueOpenCount"] as? String {
                    self.rcptUniqueOpenCount = value
                }
                if let value = dict["RcptUniqueOpenRate"] as? String {
                    self.rcptUniqueOpenRate = value
                }
                if let value = dict["TotalNumber"] as? String {
                    self.totalNumber = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Stat"] as? [Any?] {
                var tmp : [GetTrackListByMailFromAndTagNameResponseBody.TrackList.Stat] = []
                for v in value {
                    if v != nil {
                        var model = GetTrackListByMailFromAndTagNameResponseBody.TrackList.Stat()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public var totalPages: String?

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
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
        }
        if self.trackList != nil {
            map["TrackList"] = self.trackList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OffsetCreateTime"] as? String {
            self.offsetCreateTime = value
        }
        if let value = dict["OffsetCreateTimeDesc"] as? String {
            self.offsetCreateTimeDesc = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
        if let value = dict["TotalPages"] as? String {
            self.totalPages = value
        }
        if let value = dict["TrackList"] as? [String: Any?] {
            var model = GetTrackListByMailFromAndTagNameResponseBody.TrackList()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTrackListByMailFromAndTagNameResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnableEventbridge"] as? Bool {
                self.enableEventbridge = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetUserResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBlockSendingRequest : Tea.TeaModel {
    public var beginTime: Int32?

    public var blockEmail: String?

    public var blockType: String?

    public var endTime: Int32?

    public var maxResults: Int32?

    public var nextToken: String?

    public var senderEmail: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.blockEmail != nil {
            map["BlockEmail"] = self.blockEmail!
        }
        if self.blockType != nil {
            map["BlockType"] = self.blockType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.senderEmail != nil {
            map["SenderEmail"] = self.senderEmail!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int32 {
            self.beginTime = value
        }
        if let value = dict["BlockEmail"] as? String {
            self.blockEmail = value
        }
        if let value = dict["BlockType"] as? String {
            self.blockType = value
        }
        if let value = dict["EndTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["SenderEmail"] as? String {
            self.senderEmail = value
        }
    }
}

public class ListBlockSendingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var blockEmail: String?

        public var blockTime: Int32?

        public var reason: Int32?

        public var sendTime: Int32?

        public var senderEmail: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockEmail != nil {
                map["BlockEmail"] = self.blockEmail!
            }
            if self.blockTime != nil {
                map["BlockTime"] = self.blockTime!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.sendTime != nil {
                map["SendTime"] = self.sendTime!
            }
            if self.senderEmail != nil {
                map["SenderEmail"] = self.senderEmail!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlockEmail"] as? String {
                self.blockEmail = value
            }
            if let value = dict["BlockTime"] as? Int32 {
                self.blockTime = value
            }
            if let value = dict["Reason"] as? Int32 {
                self.reason = value
            }
            if let value = dict["SendTime"] as? Int32 {
                self.sendTime = value
            }
            if let value = dict["SenderEmail"] as? String {
                self.senderEmail = value
            }
        }
    }
    public var data: [ListBlockSendingResponseBody.Data]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListBlockSendingResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListBlockSendingResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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
    }
}

public class ListBlockSendingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBlockSendingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListBlockSendingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["EndBounceTime"] as? Int32 {
            self.endBounceTime = value
        }
        if let value = dict["EndCreateTime"] as? Int32 {
            self.endCreateTime = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StartBounceTime"] as? Int32 {
            self.startBounceTime = value
        }
        if let value = dict["StartCreateTime"] as? Int32 {
            self.startCreateTime = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["CreateTime"] as? Int32 {
                    self.createTime = value
                }
                if let value = dict["LastBounceTime"] as? Int32 {
                    self.lastBounceTime = value
                }
                if let value = dict["SuppressionId"] as? Int32 {
                    self.suppressionId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UserSuppressions"] as? [Any?] {
                var tmp : [ListUserSuppressionResponseBody.Data.UserSuppressions] = []
                for v in value {
                    if v != nil {
                        var model = ListUserSuppressionResponseBody.Data.UserSuppressions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListUserSuppressionResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUserSuppressionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MailAddressId"] as? Int32 {
            self.mailAddressId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ReplyAddress"] as? String {
            self.replyAddress = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyMailAddressResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPWByDomainResponseBody()
            model.fromMap(value)
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
        if let value = dict["TagDescription"] as? String {
            self.tagDescription = value
        }
        if let value = dict["TagId"] as? Int32 {
            self.tagId = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyTagResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CnameAuthStatus"] as? String {
                    self.cnameAuthStatus = value
                }
                if let value = dict["ConfirmStatus"] as? String {
                    self.confirmStatus = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DomainId"] as? String {
                    self.domainId = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["DomainRecord"] as? String {
                    self.domainRecord = value
                }
                if let value = dict["DomainStatus"] as? String {
                    self.domainStatus = value
                }
                if let value = dict["IcpStatus"] as? String {
                    self.icpStatus = value
                }
                if let value = dict["MxAuthStatus"] as? String {
                    self.mxAuthStatus = value
                }
                if let value = dict["SpfAuthStatus"] as? String {
                    self.spfAuthStatus = value
                }
                if let value = dict["UtcCreateTime"] as? Int64 {
                    self.utcCreateTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["domain"] as? [Any?] {
                var tmp : [QueryDomainByParamResponseBody.Data.Domain] = []
                for v in value {
                    if v != nil {
                        var model = QueryDomainByParamResponseBody.Data.Domain()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = QueryDomainByParamResponseBody.Data()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryDomainByParamResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["Length"] as? Int32 {
            self.length = value
        }
        if let value = dict["NextStart"] as? String {
            self.nextStart = value
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
        if let value = dict["StartTime"] as? String {
            self.startTime = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LastUpdateTime"] as? String {
                    self.lastUpdateTime = value
                }
                if let value = dict["ToAddress"] as? String {
                    self.toAddress = value
                }
                if let value = dict["UtcLastUpdateTime"] as? Int64 {
                    self.utcLastUpdateTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mailDetail"] as? [Any?] {
                var tmp : [QueryInvalidAddressResponseBody.Data.MailDetail] = []
                for v in value {
                    if v != nil {
                        var model = QueryInvalidAddressResponseBody.Data.MailDetail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextStart"] as? String {
            self.nextStart = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = QueryInvalidAddressResponseBody.Data()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryInvalidAddressResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Sendtype"] as? String {
            self.sendtype = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountName"] as? String {
                    self.accountName = value
                }
                if let value = dict["AccountStatus"] as? String {
                    self.accountStatus = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DailyCount"] as? String {
                    self.dailyCount = value
                }
                if let value = dict["DailyReqCount"] as? String {
                    self.dailyReqCount = value
                }
                if let value = dict["DomainStatus"] as? String {
                    self.domainStatus = value
                }
                if let value = dict["MailAddressId"] as? String {
                    self.mailAddressId = value
                }
                if let value = dict["MonthCount"] as? String {
                    self.monthCount = value
                }
                if let value = dict["MonthReqCount"] as? String {
                    self.monthReqCount = value
                }
                if let value = dict["ReplyAddress"] as? String {
                    self.replyAddress = value
                }
                if let value = dict["ReplyStatus"] as? String {
                    self.replyStatus = value
                }
                if let value = dict["Sendtype"] as? String {
                    self.sendtype = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mailAddress"] as? [Any?] {
                var tmp : [QueryMailAddressByParamResponseBody.Data.MailAddress] = []
                for v in value {
                    if v != nil {
                        var model = QueryMailAddressByParamResponseBody.Data.MailAddress()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = QueryMailAddressByParamResponseBody.Data()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryMailAddressByParamResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? String {
                    self.count = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Desc"] as? String {
                    self.desc = value
                }
                if let value = dict["ReceiverId"] as? String {
                    self.receiverId = value
                }
                if let value = dict["ReceiversAlias"] as? String {
                    self.receiversAlias = value
                }
                if let value = dict["ReceiversName"] as? String {
                    self.receiversName = value
                }
                if let value = dict["ReceiversStatus"] as? String {
                    self.receiversStatus = value
                }
                if let value = dict["UtcCreateTime"] as? Int64 {
                    self.utcCreateTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["receiver"] as? [Any?] {
                var tmp : [QueryReceiverByParamResponseBody.Data.Receiver] = []
                for v in value {
                    if v != nil {
                        var model = QueryReceiverByParamResponseBody.Data.Receiver()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextStart"] as? String {
            self.nextStart = value
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
        if let value = dict["data"] as? [String: Any?] {
            var model = QueryReceiverByParamResponseBody.Data()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryReceiverByParamResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["NextStart"] as? String {
            self.nextStart = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ReceiverId"] as? String {
            self.receiverId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Data"] as? String {
                    self.data = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["UtcCreateTime"] as? Int64 {
                    self.utcCreateTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["detail"] as? [Any?] {
                var tmp : [QueryReceiverDetailResponseBody.Data.Detail] = []
                for v in value {
                    if v != nil {
                        var model = QueryReceiverDetailResponseBody.Data.Detail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSchema"] as? String {
            self.dataSchema = value
        }
        if let value = dict["NextStart"] as? String {
            self.nextStart = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = QueryReceiverDetailResponseBody.Data()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryReceiverDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagDescription"] as? String {
                    self.tagDescription = value
                }
                if let value = dict["TagId"] as? String {
                    self.tagId = value
                }
                if let value = dict["TagName"] as? String {
                    self.tagName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tag"] as? [Any?] {
                var tmp : [QueryTagByParamResponseBody.Data.Tag] = []
                for v in value {
                    if v != nil {
                        var model = QueryTagByParamResponseBody.Data.Tag()
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = QueryTagByParamResponseBody.Data()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryTagByParamResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class QueryTaskByParamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Task : Tea.TeaModel {
            public var addressType: String?

            public var createTime: String?

            public var ipPoolId: String?

            public var ipPoolName: String?

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
                if self.ipPoolId != nil {
                    map["IpPoolId"] = self.ipPoolId!
                }
                if self.ipPoolName != nil {
                    map["IpPoolName"] = self.ipPoolName!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AddressType"] as? String {
                    self.addressType = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["IpPoolId"] as? String {
                    self.ipPoolId = value
                }
                if let value = dict["IpPoolName"] as? String {
                    self.ipPoolName = value
                }
                if let value = dict["ReceiversName"] as? String {
                    self.receiversName = value
                }
                if let value = dict["RequestCount"] as? String {
                    self.requestCount = value
                }
                if let value = dict["TagName"] as? String {
                    self.tagName = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["TaskStatus"] as? String {
                    self.taskStatus = value
                }
                if let value = dict["TemplateName"] as? String {
                    self.templateName = value
                }
                if let value = dict["UtcCreateTime"] as? Int64 {
                    self.utcCreateTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["task"] as? [Any?] {
                var tmp : [QueryTaskByParamResponseBody.Data.Task] = []
                for v in value {
                    if v != nil {
                        var model = QueryTaskByParamResponseBody.Data.Task()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = QueryTaskByParamResponseBody.Data()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryTaskByParamResponseBody()
            model.fromMap(value)
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
        if let value = dict["SuppressionIds"] as? String {
            self.suppressionIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveUserSuppressionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Detail"] as? String {
            self.detail = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReceiverId"] as? String {
            self.receiverId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Email"] as? String {
                    self.email = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Detail"] as? [Any?] {
                var tmp : [SaveReceiverDetailResponseBody.Data.Detail] = []
                for v in value {
                    if v != nil {
                        var model = SaveReceiverDetailResponseBody.Data.Detail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SaveReceiverDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCount"] as? Int32 {
            self.errorCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuccessCount"] as? Int32 {
            self.successCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SaveReceiverDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["Birthday"] as? String {
            self.birthday = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Gender"] as? String {
            self.gender = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["NickName"] as? String {
            self.nickName = value
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
        if let value = dict["TemplateId"] as? Int32 {
            self.templateId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendTestByTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SenderStatisticsByTagNameAndBatchIDRequest : Tea.TeaModel {
    public var accountName: String?

    public var dedicatedIp: String?

    public var dedicatedIpPoolId: String?

    public var endTime: String?

    public var esp: String?

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
        if self.dedicatedIp != nil {
            map["DedicatedIp"] = self.dedicatedIp!
        }
        if self.dedicatedIpPoolId != nil {
            map["DedicatedIpPoolId"] = self.dedicatedIpPoolId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.esp != nil {
            map["Esp"] = self.esp!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DedicatedIp"] as? String {
            self.dedicatedIp = value
        }
        if let value = dict["DedicatedIpPoolId"] as? String {
            self.dedicatedIpPoolId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Esp"] as? String {
            self.esp = value
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
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["faildCount"] as? String {
                    self.faildCount = value
                }
                if let value = dict["requestCount"] as? String {
                    self.requestCount = value
                }
                if let value = dict["succeededPercent"] as? String {
                    self.succeededPercent = value
                }
                if let value = dict["successCount"] as? String {
                    self.successCount = value
                }
                if let value = dict["unavailableCount"] as? String {
                    self.unavailableCount = value
                }
                if let value = dict["unavailablePercent"] as? String {
                    self.unavailablePercent = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["stat"] as? [Any?] {
                var tmp : [SenderStatisticsByTagNameAndBatchIDResponseBody.Data.Stat] = []
                for v in value {
                    if v != nil {
                        var model = SenderStatisticsByTagNameAndBatchIDResponseBody.Data.Stat()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = SenderStatisticsByTagNameAndBatchIDResponseBody.Data()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SenderStatisticsByTagNameAndBatchIDResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Length"] as? Int32 {
            self.length = value
        }
        if let value = dict["NextStart"] as? String {
            self.nextStart = value
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
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
        if let value = dict["ToAddress"] as? String {
            self.toAddress = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountName"] as? String {
                    self.accountName = value
                }
                if let value = dict["ErrorClassification"] as? String {
                    self.errorClassification = value
                }
                if let value = dict["LastUpdateTime"] as? String {
                    self.lastUpdateTime = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["Subject"] as? String {
                    self.subject = value
                }
                if let value = dict["ToAddress"] as? String {
                    self.toAddress = value
                }
                if let value = dict["UtcLastUpdateTime"] as? String {
                    self.utcLastUpdateTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mailDetail"] as? [Any?] {
                var tmp : [SenderStatisticsDetailByParamResponseBody.Data.MailDetail] = []
                for v in value {
                    if v != nil {
                        var model = SenderStatisticsDetailByParamResponseBody.Data.MailDetail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextStart"] as? String {
            self.nextStart = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = SenderStatisticsDetailByParamResponseBody.Data()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SenderStatisticsDetailByParamResponseBody()
            model.fromMap(value)
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
        if let value = dict["SuppressionListLevel"] as? String {
            self.suppressionListLevel = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuppressionListLevel"] as? String {
            self.suppressionListLevel = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetSuppressionListLevelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SingleSendMailRequest : Tea.TeaModel {
    public class Attachments : Tea.TeaModel {
        public var attachmentName: String?

        public var attachmentUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachmentName != nil {
                map["AttachmentName"] = self.attachmentName!
            }
            if self.attachmentUrl != nil {
                map["AttachmentUrl"] = self.attachmentUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachmentName"] as? String {
                self.attachmentName = value
            }
            if let value = dict["AttachmentUrl"] as? String {
                self.attachmentUrl = value
            }
        }
    }
    public var accountName: String?

    public var addressType: Int32?

    public var attachments: [SingleSendMailRequest.Attachments]?

    public var clickTrace: String?

    public var fromAlias: String?

    public var headers: String?

    public var htmlBody: String?

    public var ipPoolId: String?

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
        if self.attachments != nil {
            var tmp : [Any] = []
            for k in self.attachments! {
                tmp.append(k.toMap())
            }
            map["Attachments"] = tmp
        }
        if self.clickTrace != nil {
            map["ClickTrace"] = self.clickTrace!
        }
        if self.fromAlias != nil {
            map["FromAlias"] = self.fromAlias!
        }
        if self.headers != nil {
            map["Headers"] = self.headers!
        }
        if self.htmlBody != nil {
            map["HtmlBody"] = self.htmlBody!
        }
        if self.ipPoolId != nil {
            map["IpPoolId"] = self.ipPoolId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AddressType"] as? Int32 {
            self.addressType = value
        }
        if let value = dict["Attachments"] as? [Any?] {
            var tmp : [SingleSendMailRequest.Attachments] = []
            for v in value {
                if v != nil {
                    var model = SingleSendMailRequest.Attachments()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attachments = tmp
        }
        if let value = dict["ClickTrace"] as? String {
            self.clickTrace = value
        }
        if let value = dict["FromAlias"] as? String {
            self.fromAlias = value
        }
        if let value = dict["Headers"] as? String {
            self.headers = value
        }
        if let value = dict["HtmlBody"] as? String {
            self.htmlBody = value
        }
        if let value = dict["IpPoolId"] as? String {
            self.ipPoolId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReplyAddress"] as? String {
            self.replyAddress = value
        }
        if let value = dict["ReplyAddressAlias"] as? String {
            self.replyAddressAlias = value
        }
        if let value = dict["ReplyToAddress"] as? Bool {
            self.replyToAddress = value
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
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
        if let value = dict["TextBody"] as? String {
            self.textBody = value
        }
        if let value = dict["ToAddress"] as? String {
            self.toAddress = value
        }
        if let value = dict["UnSubscribeFilterLevel"] as? String {
            self.unSubscribeFilterLevel = value
        }
        if let value = dict["UnSubscribeLinkType"] as? String {
            self.unSubscribeLinkType = value
        }
    }
}

public class SingleSendMailAdvanceRequest : Tea.TeaModel {
    public class Attachments : Tea.TeaModel {
        public var attachmentName: String?

        public var attachmentUrlObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachmentName != nil {
                map["AttachmentName"] = self.attachmentName!
            }
            if self.attachmentUrlObject != nil {
                map["AttachmentUrl"] = self.attachmentUrlObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachmentName"] as? String {
                self.attachmentName = value
            }
            if let value = dict["AttachmentUrl"] as? InputStream {
                self.attachmentUrlObject = value
            }
        }
    }
    public var accountName: String?

    public var addressType: Int32?

    public var attachments: [SingleSendMailAdvanceRequest.Attachments]?

    public var clickTrace: String?

    public var fromAlias: String?

    public var headers: String?

    public var htmlBody: String?

    public var ipPoolId: String?

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
        if self.attachments != nil {
            var tmp : [Any] = []
            for k in self.attachments! {
                tmp.append(k.toMap())
            }
            map["Attachments"] = tmp
        }
        if self.clickTrace != nil {
            map["ClickTrace"] = self.clickTrace!
        }
        if self.fromAlias != nil {
            map["FromAlias"] = self.fromAlias!
        }
        if self.headers != nil {
            map["Headers"] = self.headers!
        }
        if self.htmlBody != nil {
            map["HtmlBody"] = self.htmlBody!
        }
        if self.ipPoolId != nil {
            map["IpPoolId"] = self.ipPoolId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AddressType"] as? Int32 {
            self.addressType = value
        }
        if let value = dict["Attachments"] as? [Any?] {
            var tmp : [SingleSendMailAdvanceRequest.Attachments] = []
            for v in value {
                if v != nil {
                    var model = SingleSendMailAdvanceRequest.Attachments()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attachments = tmp
        }
        if let value = dict["ClickTrace"] as? String {
            self.clickTrace = value
        }
        if let value = dict["FromAlias"] as? String {
            self.fromAlias = value
        }
        if let value = dict["Headers"] as? String {
            self.headers = value
        }
        if let value = dict["HtmlBody"] as? String {
            self.htmlBody = value
        }
        if let value = dict["IpPoolId"] as? String {
            self.ipPoolId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReplyAddress"] as? String {
            self.replyAddress = value
        }
        if let value = dict["ReplyAddressAlias"] as? String {
            self.replyAddressAlias = value
        }
        if let value = dict["ReplyToAddress"] as? Bool {
            self.replyToAddress = value
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
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
        if let value = dict["TextBody"] as? String {
            self.textBody = value
        }
        if let value = dict["ToAddress"] as? String {
            self.toAddress = value
        }
        if let value = dict["UnSubscribeFilterLevel"] as? String {
            self.unSubscribeFilterLevel = value
        }
        if let value = dict["UnSubscribeLinkType"] as? String {
            self.unSubscribeLinkType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnvId"] as? String {
            self.envId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SingleSendMailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnblockSendingRequest : Tea.TeaModel {
    public var blockEmail: String?

    public var blockType: String?

    public var senderEmail: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blockEmail != nil {
            map["BlockEmail"] = self.blockEmail!
        }
        if self.blockType != nil {
            map["BlockType"] = self.blockType!
        }
        if self.senderEmail != nil {
            map["SenderEmail"] = self.senderEmail!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BlockEmail"] as? String {
            self.blockEmail = value
        }
        if let value = dict["BlockType"] as? String {
            self.blockType = value
        }
        if let value = dict["SenderEmail"] as? String {
            self.senderEmail = value
        }
    }
}

public class UnblockSendingResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UnblockSendingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnblockSendingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnblockSendingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpProtection"] as? String {
            self.ipProtection = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateIpProtectionResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnableEventbridge"] as? Bool {
                self.enableEventbridge = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["User"] as? [String: Any?] {
            var model = UpdateUserRequest.User()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["User"] as? String {
            self.userShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
