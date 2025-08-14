import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddAddressBookRequest : Tea.TeaModel {
    public class TagList : Tea.TeaModel {
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
    public var addressList: String?

    public var autoAddTagEcs: String?

    public var description_: String?

    public var groupName: String?

    public var groupType: String?

    public var lang: String?

    public var sourceIp: String?

    public var tagList: [AddAddressBookRequest.TagList]?

    public var tagRelation: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressList != nil {
            map["AddressList"] = self.addressList!
        }
        if self.autoAddTagEcs != nil {
            map["AutoAddTagEcs"] = self.autoAddTagEcs!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.tagList != nil {
            var tmp : [Any] = []
            for k in self.tagList! {
                tmp.append(k.toMap())
            }
            map["TagList"] = tmp
        }
        if self.tagRelation != nil {
            map["TagRelation"] = self.tagRelation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressList"] as? String {
            self.addressList = value
        }
        if let value = dict["AutoAddTagEcs"] as? String {
            self.autoAddTagEcs = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["GroupType"] as? String {
            self.groupType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["TagList"] as? [Any?] {
            var tmp : [AddAddressBookRequest.TagList] = []
            for v in value {
                if v != nil {
                    var model = AddAddressBookRequest.TagList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagList = tmp
        }
        if let value = dict["TagRelation"] as? String {
            self.tagRelation = value
        }
    }
}

public class AddAddressBookResponseBody : Tea.TeaModel {
    public var groupUuid: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupUuid != nil {
            map["GroupUuid"] = self.groupUuid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupUuid"] as? String {
            self.groupUuid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddAddressBookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddAddressBookResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddAddressBookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddControlPolicyRequest : Tea.TeaModel {
    public var aclAction: String?

    public var applicationName: String?

    public var applicationNameList: [String]?

    public var description_: String?

    public var destPort: String?

    public var destPortGroup: String?

    public var destPortType: String?

    public var destination: String?

    public var destinationType: String?

    public var direction: String?

    public var domainResolveType: String?

    public var endTime: Int64?

    public var ipVersion: String?

    public var lang: String?

    public var newOrder: String?

    public var proto: String?

    public var release: String?

    public var repeatDays: [Int64]?

    public var repeatEndTime: String?

    public var repeatStartTime: String?

    public var repeatType: String?

    public var source: String?

    public var sourceIp: String?

    public var sourceType: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclAction != nil {
            map["AclAction"] = self.aclAction!
        }
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.applicationNameList != nil {
            map["ApplicationNameList"] = self.applicationNameList!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destPort != nil {
            map["DestPort"] = self.destPort!
        }
        if self.destPortGroup != nil {
            map["DestPortGroup"] = self.destPortGroup!
        }
        if self.destPortType != nil {
            map["DestPortType"] = self.destPortType!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationType != nil {
            map["DestinationType"] = self.destinationType!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.domainResolveType != nil {
            map["DomainResolveType"] = self.domainResolveType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.newOrder != nil {
            map["NewOrder"] = self.newOrder!
        }
        if self.proto != nil {
            map["Proto"] = self.proto!
        }
        if self.release != nil {
            map["Release"] = self.release!
        }
        if self.repeatDays != nil {
            map["RepeatDays"] = self.repeatDays!
        }
        if self.repeatEndTime != nil {
            map["RepeatEndTime"] = self.repeatEndTime!
        }
        if self.repeatStartTime != nil {
            map["RepeatStartTime"] = self.repeatStartTime!
        }
        if self.repeatType != nil {
            map["RepeatType"] = self.repeatType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclAction"] as? String {
            self.aclAction = value
        }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["ApplicationNameList"] as? [String] {
            self.applicationNameList = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DestPort"] as? String {
            self.destPort = value
        }
        if let value = dict["DestPortGroup"] as? String {
            self.destPortGroup = value
        }
        if let value = dict["DestPortType"] as? String {
            self.destPortType = value
        }
        if let value = dict["Destination"] as? String {
            self.destination = value
        }
        if let value = dict["DestinationType"] as? String {
            self.destinationType = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["DomainResolveType"] as? String {
            self.domainResolveType = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["IpVersion"] as? String {
            self.ipVersion = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NewOrder"] as? String {
            self.newOrder = value
        }
        if let value = dict["Proto"] as? String {
            self.proto = value
        }
        if let value = dict["Release"] as? String {
            self.release = value
        }
        if let value = dict["RepeatDays"] as? [Int64] {
            self.repeatDays = value
        }
        if let value = dict["RepeatEndTime"] as? String {
            self.repeatEndTime = value
        }
        if let value = dict["RepeatStartTime"] as? String {
            self.repeatStartTime = value
        }
        if let value = dict["RepeatType"] as? String {
            self.repeatType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class AddControlPolicyResponseBody : Tea.TeaModel {
    public var aclUuid: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddControlPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddDnsFirewallPolicyRequest : Tea.TeaModel {
    public var aclAction: String?

    public var description_: String?

    public var destination: String?

    public var destinationType: String?

    public var direction: String?

    public var ipVersion: String?

    public var lang: String?

    public var priority: String?

    public var release: String?

    public var source: String?

    public var sourceIp: String?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclAction != nil {
            map["AclAction"] = self.aclAction!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationType != nil {
            map["DestinationType"] = self.destinationType!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.release != nil {
            map["Release"] = self.release!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclAction"] as? String {
            self.aclAction = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Destination"] as? String {
            self.destination = value
        }
        if let value = dict["DestinationType"] as? String {
            self.destinationType = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["IpVersion"] as? String {
            self.ipVersion = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Priority"] as? String {
            self.priority = value
        }
        if let value = dict["Release"] as? String {
            self.release = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class AddDnsFirewallPolicyResponseBody : Tea.TeaModel {
    public var aclUuid: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddDnsFirewallPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDnsFirewallPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddDnsFirewallPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddInstanceMembersRequest : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var memberDesc: String?

        public var memberUid: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memberDesc != nil {
                map["MemberDesc"] = self.memberDesc!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MemberDesc"] as? String {
                self.memberDesc = value
            }
            if let value = dict["MemberUid"] as? Int64 {
                self.memberUid = value
            }
        }
    }
    public var members: [AddInstanceMembersRequest.Members]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Members"] as? [Any?] {
            var tmp : [AddInstanceMembersRequest.Members] = []
            for v in value {
                if v != nil {
                    var model = AddInstanceMembersRequest.Members()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.members = tmp
        }
    }
}

public class AddInstanceMembersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class AddInstanceMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddInstanceMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddInstanceMembersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddPrivateDnsDomainNameRequest : Tea.TeaModel {
    public var accessInstanceId: String?

    public var domainNameList: [String]?

    public var regionNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessInstanceId != nil {
            map["AccessInstanceId"] = self.accessInstanceId!
        }
        if self.domainNameList != nil {
            map["DomainNameList"] = self.domainNameList!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessInstanceId"] as? String {
            self.accessInstanceId = value
        }
        if let value = dict["DomainNameList"] as? [String] {
            self.domainNameList = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
    }
}

public class AddPrivateDnsDomainNameResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class AddPrivateDnsDomainNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddPrivateDnsDomainNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddPrivateDnsDomainNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchCopyVpcFirewallControlPolicyRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

    public var sourceVpcFirewallId: String?

    public var targetVpcFirewallId: String?

    public override init() {
        super.init()
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
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.sourceVpcFirewallId != nil {
            map["SourceVpcFirewallId"] = self.sourceVpcFirewallId!
        }
        if self.targetVpcFirewallId != nil {
            map["TargetVpcFirewallId"] = self.targetVpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["SourceVpcFirewallId"] as? String {
            self.sourceVpcFirewallId = value
        }
        if let value = dict["TargetVpcFirewallId"] as? String {
            self.targetVpcFirewallId = value
        }
    }
}

public class BatchCopyVpcFirewallControlPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class BatchCopyVpcFirewallControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchCopyVpcFirewallControlPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BatchCopyVpcFirewallControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchDeleteVpcFirewallControlPolicyRequest : Tea.TeaModel {
    public var aclUuidList: [String]?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuidList != nil {
            map["AclUuidList"] = self.aclUuidList!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuidList"] as? [String] {
            self.aclUuidList = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class BatchDeleteVpcFirewallControlPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class BatchDeleteVpcFirewallControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteVpcFirewallControlPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BatchDeleteVpcFirewallControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDownloadTaskRequest : Tea.TeaModel {
    public var lang: String?

    public var taskData: String?

    public var taskType: String?

    public var timeZone: String?

    public override init() {
        super.init()
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
        if self.taskData != nil {
            map["TaskData"] = self.taskData!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TaskData"] as? String {
            self.taskData = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
        }
    }
}

public class CreateDownloadTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var status: String?

    public var taskId: Int64?

    public var taskName: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
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
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
    }
}

public class CreateDownloadTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDownloadTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDownloadTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateNatFirewallControlPolicyRequest : Tea.TeaModel {
    public var aclAction: String?

    public var applicationNameList: [String]?

    public var description_: String?

    public var destPort: String?

    public var destPortGroup: String?

    public var destPortType: String?

    public var destination: String?

    public var destinationType: String?

    public var direction: String?

    public var domainResolveType: Int32?

    public var endTime: Int64?

    public var ipVersion: String?

    public var lang: String?

    public var natGatewayId: String?

    public var newOrder: String?

    public var proto: String?

    public var release: String?

    public var repeatDays: [Int64]?

    public var repeatEndTime: String?

    public var repeatStartTime: String?

    public var repeatType: String?

    public var source: String?

    public var sourceType: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclAction != nil {
            map["AclAction"] = self.aclAction!
        }
        if self.applicationNameList != nil {
            map["ApplicationNameList"] = self.applicationNameList!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destPort != nil {
            map["DestPort"] = self.destPort!
        }
        if self.destPortGroup != nil {
            map["DestPortGroup"] = self.destPortGroup!
        }
        if self.destPortType != nil {
            map["DestPortType"] = self.destPortType!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationType != nil {
            map["DestinationType"] = self.destinationType!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.domainResolveType != nil {
            map["DomainResolveType"] = self.domainResolveType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        if self.newOrder != nil {
            map["NewOrder"] = self.newOrder!
        }
        if self.proto != nil {
            map["Proto"] = self.proto!
        }
        if self.release != nil {
            map["Release"] = self.release!
        }
        if self.repeatDays != nil {
            map["RepeatDays"] = self.repeatDays!
        }
        if self.repeatEndTime != nil {
            map["RepeatEndTime"] = self.repeatEndTime!
        }
        if self.repeatStartTime != nil {
            map["RepeatStartTime"] = self.repeatStartTime!
        }
        if self.repeatType != nil {
            map["RepeatType"] = self.repeatType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclAction"] as? String {
            self.aclAction = value
        }
        if let value = dict["ApplicationNameList"] as? [String] {
            self.applicationNameList = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DestPort"] as? String {
            self.destPort = value
        }
        if let value = dict["DestPortGroup"] as? String {
            self.destPortGroup = value
        }
        if let value = dict["DestPortType"] as? String {
            self.destPortType = value
        }
        if let value = dict["Destination"] as? String {
            self.destination = value
        }
        if let value = dict["DestinationType"] as? String {
            self.destinationType = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["DomainResolveType"] as? Int32 {
            self.domainResolveType = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["IpVersion"] as? String {
            self.ipVersion = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
        if let value = dict["NewOrder"] as? String {
            self.newOrder = value
        }
        if let value = dict["Proto"] as? String {
            self.proto = value
        }
        if let value = dict["Release"] as? String {
            self.release = value
        }
        if let value = dict["RepeatDays"] as? [Int64] {
            self.repeatDays = value
        }
        if let value = dict["RepeatEndTime"] as? String {
            self.repeatEndTime = value
        }
        if let value = dict["RepeatStartTime"] as? String {
            self.repeatStartTime = value
        }
        if let value = dict["RepeatType"] as? String {
            self.repeatType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class CreateNatFirewallControlPolicyResponseBody : Tea.TeaModel {
    public var aclUuid: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateNatFirewallControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNatFirewallControlPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateNatFirewallControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSecurityProxyRequest : Tea.TeaModel {
    public class NatRouteEntryList : Tea.TeaModel {
        public var destinationCidr: String?

        public var nextHopId: String?

        public var nextHopType: String?

        public var routeTableId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.destinationCidr != nil {
                map["DestinationCidr"] = self.destinationCidr!
            }
            if self.nextHopId != nil {
                map["NextHopId"] = self.nextHopId!
            }
            if self.nextHopType != nil {
                map["NextHopType"] = self.nextHopType!
            }
            if self.routeTableId != nil {
                map["RouteTableId"] = self.routeTableId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DestinationCidr"] as? String {
                self.destinationCidr = value
            }
            if let value = dict["NextHopId"] as? String {
                self.nextHopId = value
            }
            if let value = dict["NextHopType"] as? String {
                self.nextHopType = value
            }
            if let value = dict["RouteTableId"] as? String {
                self.routeTableId = value
            }
        }
    }
    public var firewallSwitch: String?

    public var lang: String?

    public var natGatewayId: String?

    public var natRouteEntryList: [CreateSecurityProxyRequest.NatRouteEntryList]?

    public var proxyName: String?

    public var regionNo: String?

    public var strictMode: Int32?

    public var vpcId: String?

    public var vswitchAuto: String?

    public var vswitchCidr: String?

    public var vswitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.firewallSwitch != nil {
            map["FirewallSwitch"] = self.firewallSwitch!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        if self.natRouteEntryList != nil {
            var tmp : [Any] = []
            for k in self.natRouteEntryList! {
                tmp.append(k.toMap())
            }
            map["NatRouteEntryList"] = tmp
        }
        if self.proxyName != nil {
            map["ProxyName"] = self.proxyName!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.strictMode != nil {
            map["StrictMode"] = self.strictMode!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vswitchAuto != nil {
            map["VswitchAuto"] = self.vswitchAuto!
        }
        if self.vswitchCidr != nil {
            map["VswitchCidr"] = self.vswitchCidr!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallSwitch"] as? String {
            self.firewallSwitch = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
        if let value = dict["NatRouteEntryList"] as? [Any?] {
            var tmp : [CreateSecurityProxyRequest.NatRouteEntryList] = []
            for v in value {
                if v != nil {
                    var model = CreateSecurityProxyRequest.NatRouteEntryList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.natRouteEntryList = tmp
        }
        if let value = dict["ProxyName"] as? String {
            self.proxyName = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["StrictMode"] as? Int32 {
            self.strictMode = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VswitchAuto"] as? String {
            self.vswitchAuto = value
        }
        if let value = dict["VswitchCidr"] as? String {
            self.vswitchCidr = value
        }
        if let value = dict["VswitchId"] as? String {
            self.vswitchId = value
        }
    }
}

public class CreateSecurityProxyResponseBody : Tea.TeaModel {
    public var proxyId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.proxyId != nil {
            map["ProxyId"] = self.proxyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProxyId"] as? String {
            self.proxyId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateSecurityProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSecurityProxyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSecurityProxyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSlsLogDispatchRequest : Tea.TeaModel {
    public var slsRegionId: String?

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
        if self.slsRegionId != nil {
            map["SlsRegionId"] = self.slsRegionId!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SlsRegionId"] as? String {
            self.slsRegionId = value
        }
        if let value = dict["Ttl"] as? Int64 {
            self.ttl = value
        }
    }
}

public class CreateSlsLogDispatchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateSlsLogDispatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSlsLogDispatchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSlsLogDispatchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTrFirewallV2Request : Tea.TeaModel {
    public var cenId: String?

    public var firewallDescription: String?

    public var firewallName: String?

    public var firewallSubnetCidr: String?

    public var firewallVpcCidr: String?

    public var firewallVpcId: String?

    public var firewallVswitchId: String?

    public var lang: String?

    public var regionNo: String?

    public var routeMode: String?

    public var trAttachmentMasterCidr: String?

    public var trAttachmentMasterZone: String?

    public var trAttachmentSlaveCidr: String?

    public var trAttachmentSlaveZone: String?

    public var transitRouterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.firewallDescription != nil {
            map["FirewallDescription"] = self.firewallDescription!
        }
        if self.firewallName != nil {
            map["FirewallName"] = self.firewallName!
        }
        if self.firewallSubnetCidr != nil {
            map["FirewallSubnetCidr"] = self.firewallSubnetCidr!
        }
        if self.firewallVpcCidr != nil {
            map["FirewallVpcCidr"] = self.firewallVpcCidr!
        }
        if self.firewallVpcId != nil {
            map["FirewallVpcId"] = self.firewallVpcId!
        }
        if self.firewallVswitchId != nil {
            map["FirewallVswitchId"] = self.firewallVswitchId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.routeMode != nil {
            map["RouteMode"] = self.routeMode!
        }
        if self.trAttachmentMasterCidr != nil {
            map["TrAttachmentMasterCidr"] = self.trAttachmentMasterCidr!
        }
        if self.trAttachmentMasterZone != nil {
            map["TrAttachmentMasterZone"] = self.trAttachmentMasterZone!
        }
        if self.trAttachmentSlaveCidr != nil {
            map["TrAttachmentSlaveCidr"] = self.trAttachmentSlaveCidr!
        }
        if self.trAttachmentSlaveZone != nil {
            map["TrAttachmentSlaveZone"] = self.trAttachmentSlaveZone!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CenId"] as? String {
            self.cenId = value
        }
        if let value = dict["FirewallDescription"] as? String {
            self.firewallDescription = value
        }
        if let value = dict["FirewallName"] as? String {
            self.firewallName = value
        }
        if let value = dict["FirewallSubnetCidr"] as? String {
            self.firewallSubnetCidr = value
        }
        if let value = dict["FirewallVpcCidr"] as? String {
            self.firewallVpcCidr = value
        }
        if let value = dict["FirewallVpcId"] as? String {
            self.firewallVpcId = value
        }
        if let value = dict["FirewallVswitchId"] as? String {
            self.firewallVswitchId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["RouteMode"] as? String {
            self.routeMode = value
        }
        if let value = dict["TrAttachmentMasterCidr"] as? String {
            self.trAttachmentMasterCidr = value
        }
        if let value = dict["TrAttachmentMasterZone"] as? String {
            self.trAttachmentMasterZone = value
        }
        if let value = dict["TrAttachmentSlaveCidr"] as? String {
            self.trAttachmentSlaveCidr = value
        }
        if let value = dict["TrAttachmentSlaveZone"] as? String {
            self.trAttachmentSlaveZone = value
        }
        if let value = dict["TransitRouterId"] as? String {
            self.transitRouterId = value
        }
    }
}

public class CreateTrFirewallV2ResponseBody : Tea.TeaModel {
    public var firewallId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateTrFirewallV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTrFirewallV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTrFirewallV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTrFirewallV2RoutePolicyRequest : Tea.TeaModel {
    public class DestCandidateList : Tea.TeaModel {
        public var candidateId: String?

        public var candidateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.candidateId != nil {
                map["CandidateId"] = self.candidateId!
            }
            if self.candidateType != nil {
                map["CandidateType"] = self.candidateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CandidateId"] as? String {
                self.candidateId = value
            }
            if let value = dict["CandidateType"] as? String {
                self.candidateType = value
            }
        }
    }
    public class SrcCandidateList : Tea.TeaModel {
        public var candidateId: String?

        public var candidateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.candidateId != nil {
                map["CandidateId"] = self.candidateId!
            }
            if self.candidateType != nil {
                map["CandidateType"] = self.candidateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CandidateId"] as? String {
                self.candidateId = value
            }
            if let value = dict["CandidateType"] as? String {
                self.candidateType = value
            }
        }
    }
    public var destCandidateList: [CreateTrFirewallV2RoutePolicyRequest.DestCandidateList]?

    public var firewallId: String?

    public var lang: String?

    public var policyDescription: String?

    public var policyName: String?

    public var policyType: String?

    public var srcCandidateList: [CreateTrFirewallV2RoutePolicyRequest.SrcCandidateList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destCandidateList != nil {
            var tmp : [Any] = []
            for k in self.destCandidateList! {
                tmp.append(k.toMap())
            }
            map["DestCandidateList"] = tmp
        }
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.policyDescription != nil {
            map["PolicyDescription"] = self.policyDescription!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.srcCandidateList != nil {
            var tmp : [Any] = []
            for k in self.srcCandidateList! {
                tmp.append(k.toMap())
            }
            map["SrcCandidateList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestCandidateList"] as? [Any?] {
            var tmp : [CreateTrFirewallV2RoutePolicyRequest.DestCandidateList] = []
            for v in value {
                if v != nil {
                    var model = CreateTrFirewallV2RoutePolicyRequest.DestCandidateList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.destCandidateList = tmp
        }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PolicyDescription"] as? String {
            self.policyDescription = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["SrcCandidateList"] as? [Any?] {
            var tmp : [CreateTrFirewallV2RoutePolicyRequest.SrcCandidateList] = []
            for v in value {
                if v != nil {
                    var model = CreateTrFirewallV2RoutePolicyRequest.SrcCandidateList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.srcCandidateList = tmp
        }
    }
}

public class CreateTrFirewallV2RoutePolicyShrinkRequest : Tea.TeaModel {
    public var destCandidateListShrink: String?

    public var firewallId: String?

    public var lang: String?

    public var policyDescription: String?

    public var policyName: String?

    public var policyType: String?

    public var srcCandidateListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destCandidateListShrink != nil {
            map["DestCandidateList"] = self.destCandidateListShrink!
        }
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.policyDescription != nil {
            map["PolicyDescription"] = self.policyDescription!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.srcCandidateListShrink != nil {
            map["SrcCandidateList"] = self.srcCandidateListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestCandidateList"] as? String {
            self.destCandidateListShrink = value
        }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PolicyDescription"] as? String {
            self.policyDescription = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["SrcCandidateList"] as? String {
            self.srcCandidateListShrink = value
        }
    }
}

public class CreateTrFirewallV2RoutePolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var trFirewallRoutePolicyId: String?

    public override init() {
        super.init()
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
        if self.trFirewallRoutePolicyId != nil {
            map["TrFirewallRoutePolicyId"] = self.trFirewallRoutePolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TrFirewallRoutePolicyId"] as? String {
            self.trFirewallRoutePolicyId = value
        }
    }
}

public class CreateTrFirewallV2RoutePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTrFirewallV2RoutePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTrFirewallV2RoutePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVpcFirewallCenConfigureRequest : Tea.TeaModel {
    public var cenId: String?

    public var firewallSwitch: String?

    public var firewallVSwitchCidrBlock: String?

    public var firewallVpcCidrBlock: String?

    public var firewallVpcStandbyZoneId: String?

    public var firewallVpcZoneId: String?

    public var lang: String?

    public var memberUid: String?

    public var networkInstanceId: String?

    public var vSwitchId: String?

    public var vpcFirewallName: String?

    public var vpcRegion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.firewallSwitch != nil {
            map["FirewallSwitch"] = self.firewallSwitch!
        }
        if self.firewallVSwitchCidrBlock != nil {
            map["FirewallVSwitchCidrBlock"] = self.firewallVSwitchCidrBlock!
        }
        if self.firewallVpcCidrBlock != nil {
            map["FirewallVpcCidrBlock"] = self.firewallVpcCidrBlock!
        }
        if self.firewallVpcStandbyZoneId != nil {
            map["FirewallVpcStandbyZoneId"] = self.firewallVpcStandbyZoneId!
        }
        if self.firewallVpcZoneId != nil {
            map["FirewallVpcZoneId"] = self.firewallVpcZoneId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.networkInstanceId != nil {
            map["NetworkInstanceId"] = self.networkInstanceId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcFirewallName != nil {
            map["VpcFirewallName"] = self.vpcFirewallName!
        }
        if self.vpcRegion != nil {
            map["VpcRegion"] = self.vpcRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CenId"] as? String {
            self.cenId = value
        }
        if let value = dict["FirewallSwitch"] as? String {
            self.firewallSwitch = value
        }
        if let value = dict["FirewallVSwitchCidrBlock"] as? String {
            self.firewallVSwitchCidrBlock = value
        }
        if let value = dict["FirewallVpcCidrBlock"] as? String {
            self.firewallVpcCidrBlock = value
        }
        if let value = dict["FirewallVpcStandbyZoneId"] as? String {
            self.firewallVpcStandbyZoneId = value
        }
        if let value = dict["FirewallVpcZoneId"] as? String {
            self.firewallVpcZoneId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["NetworkInstanceId"] as? String {
            self.networkInstanceId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcFirewallName"] as? String {
            self.vpcFirewallName = value
        }
        if let value = dict["VpcRegion"] as? String {
            self.vpcRegion = value
        }
    }
}

public class CreateVpcFirewallCenConfigureResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
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
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class CreateVpcFirewallCenConfigureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVpcFirewallCenConfigureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVpcFirewallCenConfigureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVpcFirewallCenManualConfigureRequest : Tea.TeaModel {
    public var cenId: String?

    public var lang: String?

    public var memberUid: String?

    public var vSwitchId: String?

    public var vpcFirewallName: String?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcFirewallName != nil {
            map["VpcFirewallName"] = self.vpcFirewallName!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CenId"] as? String {
            self.cenId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcFirewallName"] as? String {
            self.vpcFirewallName = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateVpcFirewallCenManualConfigureResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
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
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class CreateVpcFirewallCenManualConfigureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVpcFirewallCenManualConfigureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVpcFirewallCenManualConfigureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVpcFirewallConfigureRequest : Tea.TeaModel {
    public var firewallSwitch: String?

    public var lang: String?

    public var localVpcCidrTableList: String?

    public var localVpcId: String?

    public var localVpcRegion: String?

    public var memberUid: String?

    public var peerVpcCidrTableList: String?

    public var peerVpcId: String?

    public var peerVpcRegion: String?

    public var vpcFirewallName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.firewallSwitch != nil {
            map["FirewallSwitch"] = self.firewallSwitch!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.localVpcCidrTableList != nil {
            map["LocalVpcCidrTableList"] = self.localVpcCidrTableList!
        }
        if self.localVpcId != nil {
            map["LocalVpcId"] = self.localVpcId!
        }
        if self.localVpcRegion != nil {
            map["LocalVpcRegion"] = self.localVpcRegion!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.peerVpcCidrTableList != nil {
            map["PeerVpcCidrTableList"] = self.peerVpcCidrTableList!
        }
        if self.peerVpcId != nil {
            map["PeerVpcId"] = self.peerVpcId!
        }
        if self.peerVpcRegion != nil {
            map["PeerVpcRegion"] = self.peerVpcRegion!
        }
        if self.vpcFirewallName != nil {
            map["VpcFirewallName"] = self.vpcFirewallName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallSwitch"] as? String {
            self.firewallSwitch = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LocalVpcCidrTableList"] as? String {
            self.localVpcCidrTableList = value
        }
        if let value = dict["LocalVpcId"] as? String {
            self.localVpcId = value
        }
        if let value = dict["LocalVpcRegion"] as? String {
            self.localVpcRegion = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["PeerVpcCidrTableList"] as? String {
            self.peerVpcCidrTableList = value
        }
        if let value = dict["PeerVpcId"] as? String {
            self.peerVpcId = value
        }
        if let value = dict["PeerVpcRegion"] as? String {
            self.peerVpcRegion = value
        }
        if let value = dict["VpcFirewallName"] as? String {
            self.vpcFirewallName = value
        }
    }
}

public class CreateVpcFirewallConfigureResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
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
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class CreateVpcFirewallConfigureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVpcFirewallConfigureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVpcFirewallConfigureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVpcFirewallControlPolicyRequest : Tea.TeaModel {
    public var aclAction: String?

    public var applicationName: String?

    public var applicationNameList: [String]?

    public var description_: String?

    public var destPort: String?

    public var destPortGroup: String?

    public var destPortType: String?

    public var destination: String?

    public var destinationType: String?

    public var domainResolveType: String?

    public var endTime: Int64?

    public var lang: String?

    public var memberUid: String?

    public var newOrder: String?

    public var proto: String?

    public var release: String?

    public var repeatDays: [Int64]?

    public var repeatEndTime: String?

    public var repeatStartTime: String?

    public var repeatType: String?

    public var source: String?

    public var sourceType: String?

    public var startTime: Int64?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclAction != nil {
            map["AclAction"] = self.aclAction!
        }
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.applicationNameList != nil {
            map["ApplicationNameList"] = self.applicationNameList!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destPort != nil {
            map["DestPort"] = self.destPort!
        }
        if self.destPortGroup != nil {
            map["DestPortGroup"] = self.destPortGroup!
        }
        if self.destPortType != nil {
            map["DestPortType"] = self.destPortType!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationType != nil {
            map["DestinationType"] = self.destinationType!
        }
        if self.domainResolveType != nil {
            map["DomainResolveType"] = self.domainResolveType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.newOrder != nil {
            map["NewOrder"] = self.newOrder!
        }
        if self.proto != nil {
            map["Proto"] = self.proto!
        }
        if self.release != nil {
            map["Release"] = self.release!
        }
        if self.repeatDays != nil {
            map["RepeatDays"] = self.repeatDays!
        }
        if self.repeatEndTime != nil {
            map["RepeatEndTime"] = self.repeatEndTime!
        }
        if self.repeatStartTime != nil {
            map["RepeatStartTime"] = self.repeatStartTime!
        }
        if self.repeatType != nil {
            map["RepeatType"] = self.repeatType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclAction"] as? String {
            self.aclAction = value
        }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["ApplicationNameList"] as? [String] {
            self.applicationNameList = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DestPort"] as? String {
            self.destPort = value
        }
        if let value = dict["DestPortGroup"] as? String {
            self.destPortGroup = value
        }
        if let value = dict["DestPortType"] as? String {
            self.destPortType = value
        }
        if let value = dict["Destination"] as? String {
            self.destination = value
        }
        if let value = dict["DestinationType"] as? String {
            self.destinationType = value
        }
        if let value = dict["DomainResolveType"] as? String {
            self.domainResolveType = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["NewOrder"] as? String {
            self.newOrder = value
        }
        if let value = dict["Proto"] as? String {
            self.proto = value
        }
        if let value = dict["Release"] as? String {
            self.release = value
        }
        if let value = dict["RepeatDays"] as? [Int64] {
            self.repeatDays = value
        }
        if let value = dict["RepeatEndTime"] as? String {
            self.repeatEndTime = value
        }
        if let value = dict["RepeatStartTime"] as? String {
            self.repeatStartTime = value
        }
        if let value = dict["RepeatType"] as? String {
            self.repeatType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class CreateVpcFirewallControlPolicyResponseBody : Tea.TeaModel {
    public var aclUuid: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateVpcFirewallControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVpcFirewallControlPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVpcFirewallControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAddressBookRequest : Tea.TeaModel {
    public var groupUuid: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupUuid != nil {
            map["GroupUuid"] = self.groupUuid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupUuid"] as? String {
            self.groupUuid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class DeleteAddressBookResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteAddressBookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAddressBookResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAddressBookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteControlPolicyRequest : Tea.TeaModel {
    public var aclUuid: String?

    public var direction: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
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

public class DeleteControlPolicyTemplateRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

    public var templateId: String?

    public override init() {
        super.init()
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
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class DeleteControlPolicyTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteControlPolicyTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteControlPolicyTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteControlPolicyTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDnsFirewallPolicyRequest : Tea.TeaModel {
    public var aclUuid: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class DeleteDnsFirewallPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteDnsFirewallPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDnsFirewallPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDnsFirewallPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDownloadTaskRequest : Tea.TeaModel {
    public var lang: String?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class DeleteDownloadTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteDownloadTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDownloadTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDownloadTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFirewallV2RoutePoliciesRequest : Tea.TeaModel {
    public var firewallId: String?

    public var lang: String?

    public var trFirewallRoutePolicyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.trFirewallRoutePolicyId != nil {
            map["TrFirewallRoutePolicyId"] = self.trFirewallRoutePolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TrFirewallRoutePolicyId"] as? String {
            self.trFirewallRoutePolicyId = value
        }
    }
}

public class DeleteFirewallV2RoutePoliciesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteFirewallV2RoutePoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFirewallV2RoutePoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFirewallV2RoutePoliciesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceMembersRequest : Tea.TeaModel {
    public var memberUids: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.memberUids != nil {
            map["MemberUids"] = self.memberUids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberUids"] as? [Int64] {
            self.memberUids = value
        }
    }
}

public class DeleteInstanceMembersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteInstanceMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteInstanceMembersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNatFirewallControlPolicyRequest : Tea.TeaModel {
    public var aclUuid: String?

    public var direction: String?

    public var lang: String?

    public var natGatewayId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
    }
}

public class DeleteNatFirewallControlPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteNatFirewallControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNatFirewallControlPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteNatFirewallControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNatFirewallControlPolicyBatchRequest : Tea.TeaModel {
    public var aclUuidList: [String]?

    public var direction: String?

    public var lang: String?

    public var natGatewayId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuidList != nil {
            map["AclUuidList"] = self.aclUuidList!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuidList"] as? [String] {
            self.aclUuidList = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
    }
}

public class DeleteNatFirewallControlPolicyBatchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteNatFirewallControlPolicyBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNatFirewallControlPolicyBatchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteNatFirewallControlPolicyBatchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePrivateDnsAllDomainNameRequest : Tea.TeaModel {
    public var accessInstanceId: String?

    public var regionNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessInstanceId != nil {
            map["AccessInstanceId"] = self.accessInstanceId!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessInstanceId"] as? String {
            self.accessInstanceId = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
    }
}

public class DeletePrivateDnsAllDomainNameResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeletePrivateDnsAllDomainNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePrivateDnsAllDomainNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePrivateDnsAllDomainNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePrivateDnsDomainNameRequest : Tea.TeaModel {
    public var accessInstanceId: String?

    public var domainNameList: [String]?

    public var regionNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessInstanceId != nil {
            map["AccessInstanceId"] = self.accessInstanceId!
        }
        if self.domainNameList != nil {
            map["DomainNameList"] = self.domainNameList!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessInstanceId"] as? String {
            self.accessInstanceId = value
        }
        if let value = dict["DomainNameList"] as? [String] {
            self.domainNameList = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
    }
}

public class DeletePrivateDnsDomainNameResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeletePrivateDnsDomainNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePrivateDnsDomainNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePrivateDnsDomainNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePrivateDnsEndpointRequest : Tea.TeaModel {
    public var accessInstanceId: String?

    public var regionNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessInstanceId != nil {
            map["AccessInstanceId"] = self.accessInstanceId!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessInstanceId"] as? String {
            self.accessInstanceId = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
    }
}

public class DeletePrivateDnsEndpointResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeletePrivateDnsEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePrivateDnsEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePrivateDnsEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSecurityProxyRequest : Tea.TeaModel {
    public var lang: String?

    public var proxyId: String?

    public var trimSql: String?

    public override init() {
        super.init()
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
        if self.proxyId != nil {
            map["ProxyId"] = self.proxyId!
        }
        if self.trimSql != nil {
            map["trimSql"] = self.trimSql!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProxyId"] as? String {
            self.proxyId = value
        }
        if let value = dict["trimSql"] as? String {
            self.trimSql = value
        }
    }
}

public class DeleteSecurityProxyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteSecurityProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSecurityProxyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSecurityProxyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTrFirewallV2Request : Tea.TeaModel {
    public var firewallId: String?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class DeleteTrFirewallV2ResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteTrFirewallV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTrFirewallV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTrFirewallV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVpcFirewallCenConfigureRequest : Tea.TeaModel {
    public var lang: String?

    public var memberUid: String?

    public var vpcFirewallIdList: [String]?

    public override init() {
        super.init()
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
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.vpcFirewallIdList != nil {
            map["VpcFirewallIdList"] = self.vpcFirewallIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["VpcFirewallIdList"] as? [String] {
            self.vpcFirewallIdList = value
        }
    }
}

public class DeleteVpcFirewallCenConfigureResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteVpcFirewallCenConfigureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVpcFirewallCenConfigureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteVpcFirewallCenConfigureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVpcFirewallConfigureRequest : Tea.TeaModel {
    public var lang: String?

    public var memberUid: String?

    public var vpcFirewallIdList: [String]?

    public override init() {
        super.init()
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
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.vpcFirewallIdList != nil {
            map["VpcFirewallIdList"] = self.vpcFirewallIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["VpcFirewallIdList"] as? [String] {
            self.vpcFirewallIdList = value
        }
    }
}

public class DeleteVpcFirewallConfigureResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteVpcFirewallConfigureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVpcFirewallConfigureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteVpcFirewallConfigureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVpcFirewallControlPolicyRequest : Tea.TeaModel {
    public var aclUuid: String?

    public var lang: String?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class DeleteVpcFirewallControlPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteVpcFirewallControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVpcFirewallControlPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteVpcFirewallControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeACLProtectTrendRequest : Tea.TeaModel {
    public var endTime: String?

    public var lang: String?

    public var sourceIp: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
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
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeACLProtectTrendResponseBody : Tea.TeaModel {
    public class TrendList : Tea.TeaModel {
        public var protectCnt: Int32?

        public var time: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.protectCnt != nil {
                map["ProtectCnt"] = self.protectCnt!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProtectCnt"] as? Int32 {
                self.protectCnt = value
            }
            if let value = dict["Time"] as? Int64 {
                self.time = value
            }
        }
    }
    public var inProtectCnt: Int64?

    public var interVPCProtectCnt: Int64?

    public var interval: Int32?

    public var outProtectCnt: Int64?

    public var requestId: String?

    public var totalProtectCnt: Int64?

    public var trendList: [DescribeACLProtectTrendResponseBody.TrendList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inProtectCnt != nil {
            map["InProtectCnt"] = self.inProtectCnt!
        }
        if self.interVPCProtectCnt != nil {
            map["InterVPCProtectCnt"] = self.interVPCProtectCnt!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.outProtectCnt != nil {
            map["OutProtectCnt"] = self.outProtectCnt!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalProtectCnt != nil {
            map["TotalProtectCnt"] = self.totalProtectCnt!
        }
        if self.trendList != nil {
            var tmp : [Any] = []
            for k in self.trendList! {
                tmp.append(k.toMap())
            }
            map["TrendList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InProtectCnt"] as? Int64 {
            self.inProtectCnt = value
        }
        if let value = dict["InterVPCProtectCnt"] as? Int64 {
            self.interVPCProtectCnt = value
        }
        if let value = dict["Interval"] as? Int32 {
            self.interval = value
        }
        if let value = dict["OutProtectCnt"] as? Int64 {
            self.outProtectCnt = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalProtectCnt"] as? Int64 {
            self.totalProtectCnt = value
        }
        if let value = dict["TrendList"] as? [Any?] {
            var tmp : [DescribeACLProtectTrendResponseBody.TrendList] = []
            for v in value {
                if v != nil {
                    var model = DescribeACLProtectTrendResponseBody.TrendList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.trendList = tmp
        }
    }
}

public class DescribeACLProtectTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeACLProtectTrendResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeACLProtectTrendResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAITrafficAnalysisStatusResponseBody : Tea.TeaModel {
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

public class DescribeAITrafficAnalysisStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAITrafficAnalysisStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAITrafficAnalysisStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAddressBookRequest : Tea.TeaModel {
    public var containPort: String?

    public var currentPage: String?

    public var groupType: String?

    public var lang: String?

    public var pageSize: String?

    public var query: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containPort != nil {
            map["ContainPort"] = self.containPort!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainPort"] as? String {
            self.containPort = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["GroupType"] as? String {
            self.groupType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
    }
}

public class DescribeAddressBookResponseBody : Tea.TeaModel {
    public class Acls : Tea.TeaModel {
        public class Addresses : Tea.TeaModel {
            public var address: String?

            public var note: String?

            public override init() {
                super.init()
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
                if self.note != nil {
                    map["Note"] = self.note!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["Note"] as? String {
                    self.note = value
                }
            }
        }
        public class TagList : Tea.TeaModel {
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
        public var addressList: [String]?

        public var addressListCount: Int32?

        public var addresses: [DescribeAddressBookResponseBody.Acls.Addresses]?

        public var autoAddTagEcs: Int32?

        public var description_: String?

        public var groupName: String?

        public var groupType: String?

        public var groupUuid: String?

        public var referenceCount: Int32?

        public var tagList: [DescribeAddressBookResponseBody.Acls.TagList]?

        public var tagRelation: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addressList != nil {
                map["AddressList"] = self.addressList!
            }
            if self.addressListCount != nil {
                map["AddressListCount"] = self.addressListCount!
            }
            if self.addresses != nil {
                var tmp : [Any] = []
                for k in self.addresses! {
                    tmp.append(k.toMap())
                }
                map["Addresses"] = tmp
            }
            if self.autoAddTagEcs != nil {
                map["AutoAddTagEcs"] = self.autoAddTagEcs!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.groupType != nil {
                map["GroupType"] = self.groupType!
            }
            if self.groupUuid != nil {
                map["GroupUuid"] = self.groupUuid!
            }
            if self.referenceCount != nil {
                map["ReferenceCount"] = self.referenceCount!
            }
            if self.tagList != nil {
                var tmp : [Any] = []
                for k in self.tagList! {
                    tmp.append(k.toMap())
                }
                map["TagList"] = tmp
            }
            if self.tagRelation != nil {
                map["TagRelation"] = self.tagRelation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddressList"] as? [String] {
                self.addressList = value
            }
            if let value = dict["AddressListCount"] as? Int32 {
                self.addressListCount = value
            }
            if let value = dict["Addresses"] as? [Any?] {
                var tmp : [DescribeAddressBookResponseBody.Acls.Addresses] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAddressBookResponseBody.Acls.Addresses()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.addresses = tmp
            }
            if let value = dict["AutoAddTagEcs"] as? Int32 {
                self.autoAddTagEcs = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["GroupType"] as? String {
                self.groupType = value
            }
            if let value = dict["GroupUuid"] as? String {
                self.groupUuid = value
            }
            if let value = dict["ReferenceCount"] as? Int32 {
                self.referenceCount = value
            }
            if let value = dict["TagList"] as? [Any?] {
                var tmp : [DescribeAddressBookResponseBody.Acls.TagList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAddressBookResponseBody.Acls.TagList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagList = tmp
            }
            if let value = dict["TagRelation"] as? String {
                self.tagRelation = value
            }
        }
    }
    public var acls: [DescribeAddressBookResponseBody.Acls]?

    public var pageNo: String?

    public var pageSize: String?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acls != nil {
            var tmp : [Any] = []
            for k in self.acls! {
                tmp.append(k.toMap())
            }
            map["Acls"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Acls"] as? [Any?] {
            var tmp : [DescribeAddressBookResponseBody.Acls] = []
            for v in value {
                if v != nil {
                    var model = DescribeAddressBookResponseBody.Acls()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.acls = tmp
        }
        if let value = dict["PageNo"] as? String {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeAddressBookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAddressBookResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAddressBookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAssetListRequest : Tea.TeaModel {
    public var currentPage: String?

    public var ipVersion: String?

    public var lang: String?

    public var memberUid: Int64?

    public var newResourceTag: String?

    public var outStatistic: String?

    public var pageSize: String?

    public var regionNo: String?

    public var resourceType: String?

    public var searchItem: String?

    public var sensitiveStatus: String?

    public var sgStatus: String?

    public var status: String?

    public var type: String?

    public var userType: String?

    public override init() {
        super.init()
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
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.newResourceTag != nil {
            map["NewResourceTag"] = self.newResourceTag!
        }
        if self.outStatistic != nil {
            map["OutStatistic"] = self.outStatistic!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.searchItem != nil {
            map["SearchItem"] = self.searchItem!
        }
        if self.sensitiveStatus != nil {
            map["SensitiveStatus"] = self.sensitiveStatus!
        }
        if self.sgStatus != nil {
            map["SgStatus"] = self.sgStatus!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["IpVersion"] as? String {
            self.ipVersion = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? Int64 {
            self.memberUid = value
        }
        if let value = dict["NewResourceTag"] as? String {
            self.newResourceTag = value
        }
        if let value = dict["OutStatistic"] as? String {
            self.outStatistic = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SearchItem"] as? String {
            self.searchItem = value
        }
        if let value = dict["SensitiveStatus"] as? String {
            self.sensitiveStatus = value
        }
        if let value = dict["SgStatus"] as? String {
            self.sgStatus = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UserType"] as? String {
            self.userType = value
        }
    }
}

public class DescribeAssetListResponseBody : Tea.TeaModel {
    public class Assets : Tea.TeaModel {
        public var aliUid: Int64?

        public var bindInstanceId: String?

        public var bindInstanceName: String?

        public var createTimeStamp: String?

        public var internetAddress: String?

        public var intranetAddress: String?

        public var ipVersion: Int32?

        public var last7DayOutTrafficBytes: Int64?

        public var memberUid: Int64?

        public var name: String?

        public var newResourceTag: String?

        public var note: String?

        public var protectStatus: String?

        public var regionID: String?

        public var regionStatus: String?

        public var resourceInstanceId: String?

        public var resourceType: String?

        public var riskLevel: String?

        public var sensitiveDataStatus: String?

        public var sgStatus: String?

        public var sgStatusTime: Int64?

        public var syncStatus: String?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.bindInstanceId != nil {
                map["BindInstanceId"] = self.bindInstanceId!
            }
            if self.bindInstanceName != nil {
                map["BindInstanceName"] = self.bindInstanceName!
            }
            if self.createTimeStamp != nil {
                map["CreateTimeStamp"] = self.createTimeStamp!
            }
            if self.internetAddress != nil {
                map["InternetAddress"] = self.internetAddress!
            }
            if self.intranetAddress != nil {
                map["IntranetAddress"] = self.intranetAddress!
            }
            if self.ipVersion != nil {
                map["IpVersion"] = self.ipVersion!
            }
            if self.last7DayOutTrafficBytes != nil {
                map["Last7DayOutTrafficBytes"] = self.last7DayOutTrafficBytes!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.newResourceTag != nil {
                map["NewResourceTag"] = self.newResourceTag!
            }
            if self.note != nil {
                map["Note"] = self.note!
            }
            if self.protectStatus != nil {
                map["ProtectStatus"] = self.protectStatus!
            }
            if self.regionID != nil {
                map["RegionID"] = self.regionID!
            }
            if self.regionStatus != nil {
                map["RegionStatus"] = self.regionStatus!
            }
            if self.resourceInstanceId != nil {
                map["ResourceInstanceId"] = self.resourceInstanceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.sensitiveDataStatus != nil {
                map["SensitiveDataStatus"] = self.sensitiveDataStatus!
            }
            if self.sgStatus != nil {
                map["SgStatus"] = self.sgStatus!
            }
            if self.sgStatusTime != nil {
                map["SgStatusTime"] = self.sgStatusTime!
            }
            if self.syncStatus != nil {
                map["SyncStatus"] = self.syncStatus!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["BindInstanceId"] as? String {
                self.bindInstanceId = value
            }
            if let value = dict["BindInstanceName"] as? String {
                self.bindInstanceName = value
            }
            if let value = dict["CreateTimeStamp"] as? String {
                self.createTimeStamp = value
            }
            if let value = dict["InternetAddress"] as? String {
                self.internetAddress = value
            }
            if let value = dict["IntranetAddress"] as? String {
                self.intranetAddress = value
            }
            if let value = dict["IpVersion"] as? Int32 {
                self.ipVersion = value
            }
            if let value = dict["Last7DayOutTrafficBytes"] as? Int64 {
                self.last7DayOutTrafficBytes = value
            }
            if let value = dict["MemberUid"] as? Int64 {
                self.memberUid = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NewResourceTag"] as? String {
                self.newResourceTag = value
            }
            if let value = dict["Note"] as? String {
                self.note = value
            }
            if let value = dict["ProtectStatus"] as? String {
                self.protectStatus = value
            }
            if let value = dict["RegionID"] as? String {
                self.regionID = value
            }
            if let value = dict["RegionStatus"] as? String {
                self.regionStatus = value
            }
            if let value = dict["ResourceInstanceId"] as? String {
                self.resourceInstanceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["SensitiveDataStatus"] as? String {
                self.sensitiveDataStatus = value
            }
            if let value = dict["SgStatus"] as? String {
                self.sgStatus = value
            }
            if let value = dict["SgStatusTime"] as? Int64 {
                self.sgStatusTime = value
            }
            if let value = dict["SyncStatus"] as? String {
                self.syncStatus = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var assets: [DescribeAssetListResponseBody.Assets]?

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
        if self.assets != nil {
            var tmp : [Any] = []
            for k in self.assets! {
                tmp.append(k.toMap())
            }
            map["Assets"] = tmp
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
        if let value = dict["Assets"] as? [Any?] {
            var tmp : [DescribeAssetListResponseBody.Assets] = []
            for v in value {
                if v != nil {
                    var model = DescribeAssetListResponseBody.Assets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.assets = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeAssetListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAssetListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAssetListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAssetRiskListRequest : Tea.TeaModel {
    public var ipAddrList: [String]?

    public var ipVersion: Int32?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipAddrList != nil {
            map["IpAddrList"] = self.ipAddrList!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpAddrList"] as? [String] {
            self.ipAddrList = value
        }
        if let value = dict["IpVersion"] as? Int32 {
            self.ipVersion = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class DescribeAssetRiskListResponseBody : Tea.TeaModel {
    public class AssetList : Tea.TeaModel {
        public var ip: String?

        public var ipVersion: Int64?

        public var reason: String?

        public var riskLevel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.ipVersion != nil {
                map["IpVersion"] = self.ipVersion!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["IpVersion"] as? Int64 {
                self.ipVersion = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
        }
    }
    public var assetList: [DescribeAssetRiskListResponseBody.AssetList]?

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
        if self.assetList != nil {
            var tmp : [Any] = []
            for k in self.assetList! {
                tmp.append(k.toMap())
            }
            map["AssetList"] = tmp
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
        if let value = dict["AssetList"] as? [Any?] {
            var tmp : [DescribeAssetRiskListResponseBody.AssetList] = []
            for v in value {
                if v != nil {
                    var model = DescribeAssetRiskListResponseBody.AssetList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.assetList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeAssetRiskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAssetRiskListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAssetRiskListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAssetStatisticRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
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
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class DescribeAssetStatisticResponseBody : Tea.TeaModel {
    public class ResourceSpecStatistic : Tea.TeaModel {
        public var ipNumSpec: Int32?

        public var ipNumUsed: Int32?

        public var sensitiveDataIpNumSpec: Int64?

        public var sensitiveDataIpNumUsed: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ipNumSpec != nil {
                map["IpNumSpec"] = self.ipNumSpec!
            }
            if self.ipNumUsed != nil {
                map["IpNumUsed"] = self.ipNumUsed!
            }
            if self.sensitiveDataIpNumSpec != nil {
                map["SensitiveDataIpNumSpec"] = self.sensitiveDataIpNumSpec!
            }
            if self.sensitiveDataIpNumUsed != nil {
                map["SensitiveDataIpNumUsed"] = self.sensitiveDataIpNumUsed!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IpNumSpec"] as? Int32 {
                self.ipNumSpec = value
            }
            if let value = dict["IpNumUsed"] as? Int32 {
                self.ipNumUsed = value
            }
            if let value = dict["SensitiveDataIpNumSpec"] as? Int64 {
                self.sensitiveDataIpNumSpec = value
            }
            if let value = dict["SensitiveDataIpNumUsed"] as? Int64 {
                self.sensitiveDataIpNumUsed = value
            }
        }
    }
    public var requestId: String?

    public var resourceSpecStatistic: DescribeAssetStatisticResponseBody.ResourceSpecStatistic?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceSpecStatistic?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceSpecStatistic != nil {
            map["ResourceSpecStatistic"] = self.resourceSpecStatistic?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceSpecStatistic"] as? [String: Any?] {
            var model = DescribeAssetStatisticResponseBody.ResourceSpecStatistic()
            model.fromMap(value)
            self.resourceSpecStatistic = model
        }
    }
}

public class DescribeAssetStatisticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAssetStatisticResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAssetStatisticResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCfwRiskLevelSummaryRequest : Tea.TeaModel {
    public var instanceType: String?

    public var lang: String?

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
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeCfwRiskLevelSummaryResponseBody : Tea.TeaModel {
    public class RiskList : Tea.TeaModel {
        public var level: String?

        public var num: String?

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
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.num != nil {
                map["Num"] = self.num!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["Num"] as? String {
                self.num = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var riskList: [DescribeCfwRiskLevelSummaryResponseBody.RiskList]?

    public override init() {
        super.init()
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
        if self.riskList != nil {
            var tmp : [Any] = []
            for k in self.riskList! {
                tmp.append(k.toMap())
            }
            map["RiskList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RiskList"] as? [Any?] {
            var tmp : [DescribeCfwRiskLevelSummaryResponseBody.RiskList] = []
            for v in value {
                if v != nil {
                    var model = DescribeCfwRiskLevelSummaryResponseBody.RiskList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.riskList = tmp
        }
    }
}

public class DescribeCfwRiskLevelSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCfwRiskLevelSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCfwRiskLevelSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeControlPolicyRequest : Tea.TeaModel {
    public var aclAction: String?

    public var aclUuid: String?

    public var currentPage: String?

    public var description_: String?

    public var destination: String?

    public var direction: String?

    public var ipVersion: String?

    public var lang: String?

    public var pageSize: String?

    public var proto: String?

    public var release: String?

    public var repeatType: String?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclAction != nil {
            map["AclAction"] = self.aclAction!
        }
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.proto != nil {
            map["Proto"] = self.proto!
        }
        if self.release != nil {
            map["Release"] = self.release!
        }
        if self.repeatType != nil {
            map["RepeatType"] = self.repeatType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclAction"] as? String {
            self.aclAction = value
        }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Destination"] as? String {
            self.destination = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["IpVersion"] as? String {
            self.ipVersion = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Proto"] as? String {
            self.proto = value
        }
        if let value = dict["Release"] as? String {
            self.release = value
        }
        if let value = dict["RepeatType"] as? String {
            self.repeatType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
    }
}

public class DescribeControlPolicyResponseBody : Tea.TeaModel {
    public class Policys : Tea.TeaModel {
        public var aclAction: String?

        public var aclUuid: String?

        public var applicationId: String?

        public var applicationName: String?

        public var applicationNameList: [String]?

        public var createTime: Int64?

        public var description_: String?

        public var destPort: String?

        public var destPortGroup: String?

        public var destPortGroupPorts: [String]?

        public var destPortType: String?

        public var destination: String?

        public var destinationGroupCidrs: [String]?

        public var destinationGroupType: String?

        public var destinationType: String?

        public var direction: String?

        public var dnsResult: String?

        public var dnsResultTime: Int64?

        public var domainResolveType: String?

        public var endTime: Int64?

        public var hitLastTime: Int64?

        public var hitTimes: Int64?

        public var ipVersion: Int32?

        public var modifyTime: Int64?

        public var order: Int32?

        public var proto: String?

        public var release: String?

        public var repeatDays: [Int64]?

        public var repeatEndTime: String?

        public var repeatStartTime: String?

        public var repeatType: String?

        public var source: String?

        public var sourceGroupCidrs: [String]?

        public var sourceGroupType: String?

        public var sourceType: String?

        public var spreadCnt: Int32?

        public var startTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclAction != nil {
                map["AclAction"] = self.aclAction!
            }
            if self.aclUuid != nil {
                map["AclUuid"] = self.aclUuid!
            }
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
            }
            if self.applicationNameList != nil {
                map["ApplicationNameList"] = self.applicationNameList!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destPort != nil {
                map["DestPort"] = self.destPort!
            }
            if self.destPortGroup != nil {
                map["DestPortGroup"] = self.destPortGroup!
            }
            if self.destPortGroupPorts != nil {
                map["DestPortGroupPorts"] = self.destPortGroupPorts!
            }
            if self.destPortType != nil {
                map["DestPortType"] = self.destPortType!
            }
            if self.destination != nil {
                map["Destination"] = self.destination!
            }
            if self.destinationGroupCidrs != nil {
                map["DestinationGroupCidrs"] = self.destinationGroupCidrs!
            }
            if self.destinationGroupType != nil {
                map["DestinationGroupType"] = self.destinationGroupType!
            }
            if self.destinationType != nil {
                map["DestinationType"] = self.destinationType!
            }
            if self.direction != nil {
                map["Direction"] = self.direction!
            }
            if self.dnsResult != nil {
                map["DnsResult"] = self.dnsResult!
            }
            if self.dnsResultTime != nil {
                map["DnsResultTime"] = self.dnsResultTime!
            }
            if self.domainResolveType != nil {
                map["DomainResolveType"] = self.domainResolveType!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.hitLastTime != nil {
                map["HitLastTime"] = self.hitLastTime!
            }
            if self.hitTimes != nil {
                map["HitTimes"] = self.hitTimes!
            }
            if self.ipVersion != nil {
                map["IpVersion"] = self.ipVersion!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.order != nil {
                map["Order"] = self.order!
            }
            if self.proto != nil {
                map["Proto"] = self.proto!
            }
            if self.release != nil {
                map["Release"] = self.release!
            }
            if self.repeatDays != nil {
                map["RepeatDays"] = self.repeatDays!
            }
            if self.repeatEndTime != nil {
                map["RepeatEndTime"] = self.repeatEndTime!
            }
            if self.repeatStartTime != nil {
                map["RepeatStartTime"] = self.repeatStartTime!
            }
            if self.repeatType != nil {
                map["RepeatType"] = self.repeatType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceGroupCidrs != nil {
                map["SourceGroupCidrs"] = self.sourceGroupCidrs!
            }
            if self.sourceGroupType != nil {
                map["SourceGroupType"] = self.sourceGroupType!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.spreadCnt != nil {
                map["SpreadCnt"] = self.spreadCnt!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclAction"] as? String {
                self.aclAction = value
            }
            if let value = dict["AclUuid"] as? String {
                self.aclUuid = value
            }
            if let value = dict["ApplicationId"] as? String {
                self.applicationId = value
            }
            if let value = dict["ApplicationName"] as? String {
                self.applicationName = value
            }
            if let value = dict["ApplicationNameList"] as? [String] {
                self.applicationNameList = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DestPort"] as? String {
                self.destPort = value
            }
            if let value = dict["DestPortGroup"] as? String {
                self.destPortGroup = value
            }
            if let value = dict["DestPortGroupPorts"] as? [String] {
                self.destPortGroupPorts = value
            }
            if let value = dict["DestPortType"] as? String {
                self.destPortType = value
            }
            if let value = dict["Destination"] as? String {
                self.destination = value
            }
            if let value = dict["DestinationGroupCidrs"] as? [String] {
                self.destinationGroupCidrs = value
            }
            if let value = dict["DestinationGroupType"] as? String {
                self.destinationGroupType = value
            }
            if let value = dict["DestinationType"] as? String {
                self.destinationType = value
            }
            if let value = dict["Direction"] as? String {
                self.direction = value
            }
            if let value = dict["DnsResult"] as? String {
                self.dnsResult = value
            }
            if let value = dict["DnsResultTime"] as? Int64 {
                self.dnsResultTime = value
            }
            if let value = dict["DomainResolveType"] as? String {
                self.domainResolveType = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["HitLastTime"] as? Int64 {
                self.hitLastTime = value
            }
            if let value = dict["HitTimes"] as? Int64 {
                self.hitTimes = value
            }
            if let value = dict["IpVersion"] as? Int32 {
                self.ipVersion = value
            }
            if let value = dict["ModifyTime"] as? Int64 {
                self.modifyTime = value
            }
            if let value = dict["Order"] as? Int32 {
                self.order = value
            }
            if let value = dict["Proto"] as? String {
                self.proto = value
            }
            if let value = dict["Release"] as? String {
                self.release = value
            }
            if let value = dict["RepeatDays"] as? [Int64] {
                self.repeatDays = value
            }
            if let value = dict["RepeatEndTime"] as? String {
                self.repeatEndTime = value
            }
            if let value = dict["RepeatStartTime"] as? String {
                self.repeatStartTime = value
            }
            if let value = dict["RepeatType"] as? String {
                self.repeatType = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceGroupCidrs"] as? [String] {
                self.sourceGroupCidrs = value
            }
            if let value = dict["SourceGroupType"] as? String {
                self.sourceGroupType = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["SpreadCnt"] as? Int32 {
                self.spreadCnt = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
        }
    }
    public var pageNo: String?

    public var pageSize: String?

    public var policys: [DescribeControlPolicyResponseBody.Policys]?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policys != nil {
            var tmp : [Any] = []
            for k in self.policys! {
                tmp.append(k.toMap())
            }
            map["Policys"] = tmp
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
        if let value = dict["PageNo"] as? String {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Policys"] as? [Any?] {
            var tmp : [DescribeControlPolicyResponseBody.Policys] = []
            for v in value {
                if v != nil {
                    var model = DescribeControlPolicyResponseBody.Policys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policys = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeControlPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDefaultIPSConfigRequest : Tea.TeaModel {
    public var lang: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class DescribeDefaultIPSConfigResponseBody : Tea.TeaModel {
    public var basicRules: Int32?

    public var ctiRules: Int32?

    public var maxSdl: Int64?

    public var patchRules: Int32?

    public var requestId: String?

    public var ruleClass: Int32?

    public var runMode: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basicRules != nil {
            map["BasicRules"] = self.basicRules!
        }
        if self.ctiRules != nil {
            map["CtiRules"] = self.ctiRules!
        }
        if self.maxSdl != nil {
            map["MaxSdl"] = self.maxSdl!
        }
        if self.patchRules != nil {
            map["PatchRules"] = self.patchRules!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleClass != nil {
            map["RuleClass"] = self.ruleClass!
        }
        if self.runMode != nil {
            map["RunMode"] = self.runMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BasicRules"] as? Int32 {
            self.basicRules = value
        }
        if let value = dict["CtiRules"] as? Int32 {
            self.ctiRules = value
        }
        if let value = dict["MaxSdl"] as? Int64 {
            self.maxSdl = value
        }
        if let value = dict["PatchRules"] as? Int32 {
            self.patchRules = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleClass"] as? Int32 {
            self.ruleClass = value
        }
        if let value = dict["RunMode"] as? Int32 {
            self.runMode = value
        }
    }
}

public class DescribeDefaultIPSConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefaultIPSConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDefaultIPSConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDnsFirewallPolicyRequest : Tea.TeaModel {
    public var aclAction: String?

    public var aclUuid: String?

    public var currentPage: String?

    public var description_: String?

    public var destination: String?

    public var ipVersion: String?

    public var lang: String?

    public var pageSize: String?

    public var release: String?

    public var source: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclAction != nil {
            map["AclAction"] = self.aclAction!
        }
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.release != nil {
            map["Release"] = self.release!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclAction"] as? String {
            self.aclAction = value
        }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Destination"] as? String {
            self.destination = value
        }
        if let value = dict["IpVersion"] as? String {
            self.ipVersion = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Release"] as? String {
            self.release = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class DescribeDnsFirewallPolicyResponseBody : Tea.TeaModel {
    public class Policys : Tea.TeaModel {
        public var aclAction: String?

        public var aclUuid: String?

        public var description_: String?

        public var destination: String?

        public var destinationAddrs: [String]?

        public var destinationGroupType: String?

        public var destinationType: String?

        public var direction: String?

        public var hitLastTime: Int64?

        public var hitTimes: Int64?

        public var ipVersion: Int32?

        public var priority: Int32?

        public var release: String?

        public var source: String?

        public var sourceAddrs: [String]?

        public var sourceGroupType: String?

        public var sourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclAction != nil {
                map["AclAction"] = self.aclAction!
            }
            if self.aclUuid != nil {
                map["AclUuid"] = self.aclUuid!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destination != nil {
                map["Destination"] = self.destination!
            }
            if self.destinationAddrs != nil {
                map["DestinationAddrs"] = self.destinationAddrs!
            }
            if self.destinationGroupType != nil {
                map["DestinationGroupType"] = self.destinationGroupType!
            }
            if self.destinationType != nil {
                map["DestinationType"] = self.destinationType!
            }
            if self.direction != nil {
                map["Direction"] = self.direction!
            }
            if self.hitLastTime != nil {
                map["HitLastTime"] = self.hitLastTime!
            }
            if self.hitTimes != nil {
                map["HitTimes"] = self.hitTimes!
            }
            if self.ipVersion != nil {
                map["IpVersion"] = self.ipVersion!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.release != nil {
                map["Release"] = self.release!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceAddrs != nil {
                map["SourceAddrs"] = self.sourceAddrs!
            }
            if self.sourceGroupType != nil {
                map["SourceGroupType"] = self.sourceGroupType!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclAction"] as? String {
                self.aclAction = value
            }
            if let value = dict["AclUuid"] as? String {
                self.aclUuid = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Destination"] as? String {
                self.destination = value
            }
            if let value = dict["DestinationAddrs"] as? [String] {
                self.destinationAddrs = value
            }
            if let value = dict["DestinationGroupType"] as? String {
                self.destinationGroupType = value
            }
            if let value = dict["DestinationType"] as? String {
                self.destinationType = value
            }
            if let value = dict["Direction"] as? String {
                self.direction = value
            }
            if let value = dict["HitLastTime"] as? Int64 {
                self.hitLastTime = value
            }
            if let value = dict["HitTimes"] as? Int64 {
                self.hitTimes = value
            }
            if let value = dict["IpVersion"] as? Int32 {
                self.ipVersion = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["Release"] as? String {
                self.release = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceAddrs"] as? [String] {
                self.sourceAddrs = value
            }
            if let value = dict["SourceGroupType"] as? String {
                self.sourceGroupType = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
        }
    }
    public var pageNo: String?

    public var pageSize: String?

    public var policys: [DescribeDnsFirewallPolicyResponseBody.Policys]?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policys != nil {
            var tmp : [Any] = []
            for k in self.policys! {
                tmp.append(k.toMap())
            }
            map["Policys"] = tmp
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
        if let value = dict["PageNo"] as? String {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Policys"] as? [Any?] {
            var tmp : [DescribeDnsFirewallPolicyResponseBody.Policys] = []
            for v in value {
                if v != nil {
                    var model = DescribeDnsFirewallPolicyResponseBody.Policys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policys = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeDnsFirewallPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDnsFirewallPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDnsFirewallPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainResolveRequest : Tea.TeaModel {
    public var domain: String?

    public var ipVersion: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
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
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["IpVersion"] as? String {
            self.ipVersion = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class DescribeDomainResolveResponseBody : Tea.TeaModel {
    public class ResolveResult : Tea.TeaModel {
        public var ipAddrs: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ipAddrs != nil {
                map["IpAddrs"] = self.ipAddrs!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IpAddrs"] as? String {
                self.ipAddrs = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var requestId: String?

    public var resolveResult: DescribeDomainResolveResponseBody.ResolveResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resolveResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resolveResult != nil {
            map["ResolveResult"] = self.resolveResult?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResolveResult"] as? [String: Any?] {
            var model = DescribeDomainResolveResponseBody.ResolveResult()
            model.fromMap(value)
            self.resolveResult = model
        }
    }
}

public class DescribeDomainResolveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainResolveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDomainResolveResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDownloadTaskRequest : Tea.TeaModel {
    public var currentPage: String?

    public var lang: String?

    public var pageSize: String?

    public var taskType: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class DescribeDownloadTaskResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var createTime: Int64?

        public var expireTime: Int64?

        public var fileSize: String?

        public var fileURL: String?

        public var status: String?

        public var taskId: String?

        public var taskName: String?

        public var taskType: String?

        public override init() {
            super.init()
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
            if self.fileSize != nil {
                map["FileSize"] = self.fileSize!
            }
            if self.fileURL != nil {
                map["FileURL"] = self.fileURL!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["FileSize"] as? String {
                self.fileSize = value
            }
            if let value = dict["FileURL"] as? String {
                self.fileURL = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
        }
    }
    public var requestId: String?

    public var tasks: [DescribeDownloadTaskResponseBody.Tasks]?

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
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
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
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [DescribeDownloadTaskResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = DescribeDownloadTaskResponseBody.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeDownloadTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDownloadTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDownloadTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDownloadTaskTypeRequest : Tea.TeaModel {
    public var currentPage: String?

    public var lang: String?

    public var pageSize: String?

    public var taskType: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class DescribeDownloadTaskTypeResponseBody : Tea.TeaModel {
    public class TaskTypeArray : Tea.TeaModel {
        public var taskName: String?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
        }
    }
    public var requestId: String?

    public var taskTypeArray: [DescribeDownloadTaskTypeResponseBody.TaskTypeArray]?

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
        if self.taskTypeArray != nil {
            var tmp : [Any] = []
            for k in self.taskTypeArray! {
                tmp.append(k.toMap())
            }
            map["TaskTypeArray"] = tmp
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
        if let value = dict["TaskTypeArray"] as? [Any?] {
            var tmp : [DescribeDownloadTaskTypeResponseBody.TaskTypeArray] = []
            for v in value {
                if v != nil {
                    var model = DescribeDownloadTaskTypeResponseBody.TaskTypeArray()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskTypeArray = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeDownloadTaskTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDownloadTaskTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDownloadTaskTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceMembersRequest : Tea.TeaModel {
    public var currentPage: String?

    public var memberDesc: String?

    public var memberDisplayName: String?

    public var memberUid: String?

    public var pageSize: String?

    public override init() {
        super.init()
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
        if self.memberDesc != nil {
            map["MemberDesc"] = self.memberDesc!
        }
        if self.memberDisplayName != nil {
            map["MemberDisplayName"] = self.memberDisplayName!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["MemberDesc"] as? String {
            self.memberDesc = value
        }
        if let value = dict["MemberDisplayName"] as? String {
            self.memberDisplayName = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
    }
}

public class DescribeInstanceMembersResponseBody : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var createTime: Int32?

        public var memberDesc: String?

        public var memberDisplayName: String?

        public var memberStatus: String?

        public var memberUid: Int64?

        public var modifyTime: Int32?

        public override init() {
            super.init()
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
            if self.memberDesc != nil {
                map["MemberDesc"] = self.memberDesc!
            }
            if self.memberDisplayName != nil {
                map["MemberDisplayName"] = self.memberDisplayName!
            }
            if self.memberStatus != nil {
                map["MemberStatus"] = self.memberStatus!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int32 {
                self.createTime = value
            }
            if let value = dict["MemberDesc"] as? String {
                self.memberDesc = value
            }
            if let value = dict["MemberDisplayName"] as? String {
                self.memberDisplayName = value
            }
            if let value = dict["MemberStatus"] as? String {
                self.memberStatus = value
            }
            if let value = dict["MemberUid"] as? Int64 {
                self.memberUid = value
            }
            if let value = dict["ModifyTime"] as? Int32 {
                self.modifyTime = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var currentPage: Int32?

        public var pageSize: Int32?

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
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
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
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var members: [DescribeInstanceMembersResponseBody.Members]?

    public var pageInfo: DescribeInstanceMembersResponseBody.PageInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
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
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Members"] as? [Any?] {
            var tmp : [DescribeInstanceMembersResponseBody.Members] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceMembersResponseBody.Members()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.members = tmp
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = DescribeInstanceMembersResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInstanceMembersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceRiskLevelsRequest : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var instanceId: String?

        public var internetIp: [String]?

        public var intranetIp: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InternetIp"] as? [String] {
                self.internetIp = value
            }
            if let value = dict["IntranetIp"] as? String {
                self.intranetIp = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var instances: [DescribeInstanceRiskLevelsRequest.Instances]?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [DescribeInstanceRiskLevelsRequest.Instances] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceRiskLevelsRequest.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class DescribeInstanceRiskLevelsResponseBody : Tea.TeaModel {
    public class InstanceRisks : Tea.TeaModel {
        public class Details : Tea.TeaModel {
            public var ip: String?

            public var level: String?

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
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["Level"] as? String {
                    self.level = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var details: [DescribeInstanceRiskLevelsResponseBody.InstanceRisks.Details]?

        public var instanceId: String?

        public var level: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.details != nil {
                var tmp : [Any] = []
                for k in self.details! {
                    tmp.append(k.toMap())
                }
                map["Details"] = tmp
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Details"] as? [Any?] {
                var tmp : [DescribeInstanceRiskLevelsResponseBody.InstanceRisks.Details] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstanceRiskLevelsResponseBody.InstanceRisks.Details()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.details = tmp
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
        }
    }
    public var instanceRisks: [DescribeInstanceRiskLevelsResponseBody.InstanceRisks]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceRisks != nil {
            var tmp : [Any] = []
            for k in self.instanceRisks! {
                tmp.append(k.toMap())
            }
            map["InstanceRisks"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceRisks"] as? [Any?] {
            var tmp : [DescribeInstanceRiskLevelsResponseBody.InstanceRisks] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceRiskLevelsResponseBody.InstanceRisks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceRisks = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceRiskLevelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceRiskLevelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInstanceRiskLevelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInternetOpenIpRequest : Tea.TeaModel {
    public var assetsInstanceId: String?

    public var assetsInstanceName: String?

    public var assetsType: String?

    public var currentPage: String?

    public var endTime: String?

    public var lang: String?

    public var pageSize: String?

    public var port: String?

    public var publicIp: String?

    public var regionNo: String?

    public var riskLevel: String?

    public var serviceName: String?

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
        if self.assetsInstanceId != nil {
            map["AssetsInstanceId"] = self.assetsInstanceId!
        }
        if self.assetsInstanceName != nil {
            map["AssetsInstanceName"] = self.assetsInstanceName!
        }
        if self.assetsType != nil {
            map["AssetsType"] = self.assetsType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.publicIp != nil {
            map["PublicIp"] = self.publicIp!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetsInstanceId"] as? String {
            self.assetsInstanceId = value
        }
        if let value = dict["AssetsInstanceName"] as? String {
            self.assetsInstanceName = value
        }
        if let value = dict["AssetsType"] as? String {
            self.assetsType = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["PublicIp"] as? String {
            self.publicIp = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["RiskLevel"] as? String {
            self.riskLevel = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeInternetOpenIpResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var aclRecommendDetail: String?

        public var assetsInstanceId: String?

        public var assetsName: String?

        public var assetsType: String?

        public var detailNum: Int32?

        public var hasAclRecommend: Bool?

        public var inBytes: Int64?

        public var memberUid: Int64?

        public var outBytes: Int64?

        public var portList: [String]?

        public var publicIp: String?

        public var regionNo: String?

        public var riskLevel: Int32?

        public var riskReason: String?

        public var serviceNameList: [String]?

        public var srcIpCnt: Int64?

        public var totalBytes: Int64?

        public var totalReplyBytes: Int64?

        public var trafficPercent1Day: String?

        public var trafficPercent30Day: String?

        public var trafficPercent7Day: String?

        public var unknownReason: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclRecommendDetail != nil {
                map["AclRecommendDetail"] = self.aclRecommendDetail!
            }
            if self.assetsInstanceId != nil {
                map["AssetsInstanceId"] = self.assetsInstanceId!
            }
            if self.assetsName != nil {
                map["AssetsName"] = self.assetsName!
            }
            if self.assetsType != nil {
                map["AssetsType"] = self.assetsType!
            }
            if self.detailNum != nil {
                map["DetailNum"] = self.detailNum!
            }
            if self.hasAclRecommend != nil {
                map["HasAclRecommend"] = self.hasAclRecommend!
            }
            if self.inBytes != nil {
                map["InBytes"] = self.inBytes!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.outBytes != nil {
                map["OutBytes"] = self.outBytes!
            }
            if self.portList != nil {
                map["PortList"] = self.portList!
            }
            if self.publicIp != nil {
                map["PublicIp"] = self.publicIp!
            }
            if self.regionNo != nil {
                map["RegionNo"] = self.regionNo!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.riskReason != nil {
                map["RiskReason"] = self.riskReason!
            }
            if self.serviceNameList != nil {
                map["ServiceNameList"] = self.serviceNameList!
            }
            if self.srcIpCnt != nil {
                map["SrcIpCnt"] = self.srcIpCnt!
            }
            if self.totalBytes != nil {
                map["TotalBytes"] = self.totalBytes!
            }
            if self.totalReplyBytes != nil {
                map["TotalReplyBytes"] = self.totalReplyBytes!
            }
            if self.trafficPercent1Day != nil {
                map["TrafficPercent1Day"] = self.trafficPercent1Day!
            }
            if self.trafficPercent30Day != nil {
                map["TrafficPercent30Day"] = self.trafficPercent30Day!
            }
            if self.trafficPercent7Day != nil {
                map["TrafficPercent7Day"] = self.trafficPercent7Day!
            }
            if self.unknownReason != nil {
                map["UnknownReason"] = self.unknownReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclRecommendDetail"] as? String {
                self.aclRecommendDetail = value
            }
            if let value = dict["AssetsInstanceId"] as? String {
                self.assetsInstanceId = value
            }
            if let value = dict["AssetsName"] as? String {
                self.assetsName = value
            }
            if let value = dict["AssetsType"] as? String {
                self.assetsType = value
            }
            if let value = dict["DetailNum"] as? Int32 {
                self.detailNum = value
            }
            if let value = dict["HasAclRecommend"] as? Bool {
                self.hasAclRecommend = value
            }
            if let value = dict["InBytes"] as? Int64 {
                self.inBytes = value
            }
            if let value = dict["MemberUid"] as? Int64 {
                self.memberUid = value
            }
            if let value = dict["OutBytes"] as? Int64 {
                self.outBytes = value
            }
            if let value = dict["PortList"] as? [String] {
                self.portList = value
            }
            if let value = dict["PublicIp"] as? String {
                self.publicIp = value
            }
            if let value = dict["RegionNo"] as? String {
                self.regionNo = value
            }
            if let value = dict["RiskLevel"] as? Int32 {
                self.riskLevel = value
            }
            if let value = dict["RiskReason"] as? String {
                self.riskReason = value
            }
            if let value = dict["ServiceNameList"] as? [String] {
                self.serviceNameList = value
            }
            if let value = dict["SrcIpCnt"] as? Int64 {
                self.srcIpCnt = value
            }
            if let value = dict["TotalBytes"] as? Int64 {
                self.totalBytes = value
            }
            if let value = dict["TotalReplyBytes"] as? Int64 {
                self.totalReplyBytes = value
            }
            if let value = dict["TrafficPercent1Day"] as? String {
                self.trafficPercent1Day = value
            }
            if let value = dict["TrafficPercent30Day"] as? String {
                self.trafficPercent30Day = value
            }
            if let value = dict["TrafficPercent7Day"] as? String {
                self.trafficPercent7Day = value
            }
            if let value = dict["UnknownReason"] as? [String] {
                self.unknownReason = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var currentPage: Int32?

        public var pageSize: Int32?

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
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
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
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var dataList: [DescribeInternetOpenIpResponseBody.DataList]?

    public var pageInfo: DescribeInternetOpenIpResponseBody.PageInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataList"] as? [Any?] {
            var tmp : [DescribeInternetOpenIpResponseBody.DataList] = []
            for v in value {
                if v != nil {
                    var model = DescribeInternetOpenIpResponseBody.DataList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataList = tmp
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = DescribeInternetOpenIpResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInternetOpenIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInternetOpenIpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInternetOpenIpResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInternetTrafficTrendRequest : Tea.TeaModel {
    public var direction: String?

    public var endTime: String?

    public var lang: String?

    public var sourceCode: String?

    public var sourceIp: String?

    public var srcPrivateIP: String?

    public var srcPublicIP: String?

    public var startTime: String?

    public var trafficType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceCode != nil {
            map["SourceCode"] = self.sourceCode!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.srcPrivateIP != nil {
            map["SrcPrivateIP"] = self.srcPrivateIP!
        }
        if self.srcPublicIP != nil {
            map["SrcPublicIP"] = self.srcPublicIP!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.trafficType != nil {
            map["TrafficType"] = self.trafficType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceCode"] as? String {
            self.sourceCode = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["SrcPrivateIP"] as? String {
            self.srcPrivateIP = value
        }
        if let value = dict["SrcPublicIP"] as? String {
            self.srcPublicIP = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TrafficType"] as? String {
            self.trafficType = value
        }
    }
}

public class DescribeInternetTrafficTrendResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var inBps: Int64?

        public var inBytes: Int64?

        public var inPps: Int64?

        public var newConn: Int64?

        public var outBps: Int64?

        public var outBytes: Int64?

        public var outPps: Int64?

        public var sessionCount: Int64?

        public var time: Int32?

        public var totalBps: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inBps != nil {
                map["InBps"] = self.inBps!
            }
            if self.inBytes != nil {
                map["InBytes"] = self.inBytes!
            }
            if self.inPps != nil {
                map["InPps"] = self.inPps!
            }
            if self.newConn != nil {
                map["NewConn"] = self.newConn!
            }
            if self.outBps != nil {
                map["OutBps"] = self.outBps!
            }
            if self.outBytes != nil {
                map["OutBytes"] = self.outBytes!
            }
            if self.outPps != nil {
                map["OutPps"] = self.outPps!
            }
            if self.sessionCount != nil {
                map["SessionCount"] = self.sessionCount!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            if self.totalBps != nil {
                map["TotalBps"] = self.totalBps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InBps"] as? Int64 {
                self.inBps = value
            }
            if let value = dict["InBytes"] as? Int64 {
                self.inBytes = value
            }
            if let value = dict["InPps"] as? Int64 {
                self.inPps = value
            }
            if let value = dict["NewConn"] as? Int64 {
                self.newConn = value
            }
            if let value = dict["OutBps"] as? Int64 {
                self.outBps = value
            }
            if let value = dict["OutBytes"] as? Int64 {
                self.outBytes = value
            }
            if let value = dict["OutPps"] as? Int64 {
                self.outPps = value
            }
            if let value = dict["SessionCount"] as? Int64 {
                self.sessionCount = value
            }
            if let value = dict["Time"] as? Int32 {
                self.time = value
            }
            if let value = dict["TotalBps"] as? Int64 {
                self.totalBps = value
            }
        }
    }
    public var avgInBps: Int64?

    public var avgOutBps: Int64?

    public var avgSession: Int64?

    public var avgTotalBps: Int64?

    public var dataList: [DescribeInternetTrafficTrendResponseBody.DataList]?

    public var maxBandwidthTime: Int64?

    public var maxDayExceedBytes: Int64?

    public var maxInBps: Int64?

    public var maxOutBps: Int64?

    public var maxSession: Int64?

    public var maxTotalBps: Int64?

    public var requestId: String?

    public var totalBytes: Int64?

    public var totalExceedBytes: Int64?

    public var totalInBytes: Int64?

    public var totalOutBytes: Int64?

    public var totalSession: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.avgInBps != nil {
            map["AvgInBps"] = self.avgInBps!
        }
        if self.avgOutBps != nil {
            map["AvgOutBps"] = self.avgOutBps!
        }
        if self.avgSession != nil {
            map["AvgSession"] = self.avgSession!
        }
        if self.avgTotalBps != nil {
            map["AvgTotalBps"] = self.avgTotalBps!
        }
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.maxBandwidthTime != nil {
            map["MaxBandwidthTime"] = self.maxBandwidthTime!
        }
        if self.maxDayExceedBytes != nil {
            map["MaxDayExceedBytes"] = self.maxDayExceedBytes!
        }
        if self.maxInBps != nil {
            map["MaxInBps"] = self.maxInBps!
        }
        if self.maxOutBps != nil {
            map["MaxOutBps"] = self.maxOutBps!
        }
        if self.maxSession != nil {
            map["MaxSession"] = self.maxSession!
        }
        if self.maxTotalBps != nil {
            map["MaxTotalBps"] = self.maxTotalBps!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalBytes != nil {
            map["TotalBytes"] = self.totalBytes!
        }
        if self.totalExceedBytes != nil {
            map["TotalExceedBytes"] = self.totalExceedBytes!
        }
        if self.totalInBytes != nil {
            map["TotalInBytes"] = self.totalInBytes!
        }
        if self.totalOutBytes != nil {
            map["TotalOutBytes"] = self.totalOutBytes!
        }
        if self.totalSession != nil {
            map["TotalSession"] = self.totalSession!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvgInBps"] as? Int64 {
            self.avgInBps = value
        }
        if let value = dict["AvgOutBps"] as? Int64 {
            self.avgOutBps = value
        }
        if let value = dict["AvgSession"] as? Int64 {
            self.avgSession = value
        }
        if let value = dict["AvgTotalBps"] as? Int64 {
            self.avgTotalBps = value
        }
        if let value = dict["DataList"] as? [Any?] {
            var tmp : [DescribeInternetTrafficTrendResponseBody.DataList] = []
            for v in value {
                if v != nil {
                    var model = DescribeInternetTrafficTrendResponseBody.DataList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataList = tmp
        }
        if let value = dict["MaxBandwidthTime"] as? Int64 {
            self.maxBandwidthTime = value
        }
        if let value = dict["MaxDayExceedBytes"] as? Int64 {
            self.maxDayExceedBytes = value
        }
        if let value = dict["MaxInBps"] as? Int64 {
            self.maxInBps = value
        }
        if let value = dict["MaxOutBps"] as? Int64 {
            self.maxOutBps = value
        }
        if let value = dict["MaxSession"] as? Int64 {
            self.maxSession = value
        }
        if let value = dict["MaxTotalBps"] as? Int64 {
            self.maxTotalBps = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalBytes"] as? Int64 {
            self.totalBytes = value
        }
        if let value = dict["TotalExceedBytes"] as? Int64 {
            self.totalExceedBytes = value
        }
        if let value = dict["TotalInBytes"] as? Int64 {
            self.totalInBytes = value
        }
        if let value = dict["TotalOutBytes"] as? Int64 {
            self.totalOutBytes = value
        }
        if let value = dict["TotalSession"] as? Int64 {
            self.totalSession = value
        }
    }
}

public class DescribeInternetTrafficTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInternetTrafficTrendResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInternetTrafficTrendResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInvadeEventListRequest : Tea.TeaModel {
    public var assetsIP: String?

    public var assetsInstanceId: String?

    public var assetsInstanceName: String?

    public var currentPage: String?

    public var endTime: String?

    public var eventKey: String?

    public var eventName: String?

    public var eventUuid: String?

    public var isIgnore: String?

    public var lang: String?

    public var memberUid: Int64?

    public var pageSize: String?

    public var processStatusList: [Int32]?

    public var riskLevel: [Int32]?

    public var sourceIp: String?

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
        if self.assetsIP != nil {
            map["AssetsIP"] = self.assetsIP!
        }
        if self.assetsInstanceId != nil {
            map["AssetsInstanceId"] = self.assetsInstanceId!
        }
        if self.assetsInstanceName != nil {
            map["AssetsInstanceName"] = self.assetsInstanceName!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventKey != nil {
            map["EventKey"] = self.eventKey!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.eventUuid != nil {
            map["EventUuid"] = self.eventUuid!
        }
        if self.isIgnore != nil {
            map["IsIgnore"] = self.isIgnore!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.processStatusList != nil {
            map["ProcessStatusList"] = self.processStatusList!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetsIP"] as? String {
            self.assetsIP = value
        }
        if let value = dict["AssetsInstanceId"] as? String {
            self.assetsInstanceId = value
        }
        if let value = dict["AssetsInstanceName"] as? String {
            self.assetsInstanceName = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EventKey"] as? String {
            self.eventKey = value
        }
        if let value = dict["EventName"] as? String {
            self.eventName = value
        }
        if let value = dict["EventUuid"] as? String {
            self.eventUuid = value
        }
        if let value = dict["IsIgnore"] as? String {
            self.isIgnore = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? Int64 {
            self.memberUid = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["ProcessStatusList"] as? [Int32] {
            self.processStatusList = value
        }
        if let value = dict["RiskLevel"] as? [Int32] {
            self.riskLevel = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeInvadeEventListResponseBody : Tea.TeaModel {
    public class EventList : Tea.TeaModel {
        public var assetsInstanceId: String?

        public var assetsInstanceName: String?

        public var assetsType: String?

        public var eventKey: String?

        public var eventName: String?

        public var eventSrc: String?

        public var eventUuid: String?

        public var firstTime: Int32?

        public var isIgnore: Bool?

        public var lastTime: Int32?

        public var memberUid: String?

        public var privateIP: String?

        public var processStatus: Int32?

        public var publicIP: String?

        public var publicIpType: String?

        public var riskLevel: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assetsInstanceId != nil {
                map["AssetsInstanceId"] = self.assetsInstanceId!
            }
            if self.assetsInstanceName != nil {
                map["AssetsInstanceName"] = self.assetsInstanceName!
            }
            if self.assetsType != nil {
                map["AssetsType"] = self.assetsType!
            }
            if self.eventKey != nil {
                map["EventKey"] = self.eventKey!
            }
            if self.eventName != nil {
                map["EventName"] = self.eventName!
            }
            if self.eventSrc != nil {
                map["EventSrc"] = self.eventSrc!
            }
            if self.eventUuid != nil {
                map["EventUuid"] = self.eventUuid!
            }
            if self.firstTime != nil {
                map["FirstTime"] = self.firstTime!
            }
            if self.isIgnore != nil {
                map["IsIgnore"] = self.isIgnore!
            }
            if self.lastTime != nil {
                map["LastTime"] = self.lastTime!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.privateIP != nil {
                map["PrivateIP"] = self.privateIP!
            }
            if self.processStatus != nil {
                map["ProcessStatus"] = self.processStatus!
            }
            if self.publicIP != nil {
                map["PublicIP"] = self.publicIP!
            }
            if self.publicIpType != nil {
                map["PublicIpType"] = self.publicIpType!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AssetsInstanceId"] as? String {
                self.assetsInstanceId = value
            }
            if let value = dict["AssetsInstanceName"] as? String {
                self.assetsInstanceName = value
            }
            if let value = dict["AssetsType"] as? String {
                self.assetsType = value
            }
            if let value = dict["EventKey"] as? String {
                self.eventKey = value
            }
            if let value = dict["EventName"] as? String {
                self.eventName = value
            }
            if let value = dict["EventSrc"] as? String {
                self.eventSrc = value
            }
            if let value = dict["EventUuid"] as? String {
                self.eventUuid = value
            }
            if let value = dict["FirstTime"] as? Int32 {
                self.firstTime = value
            }
            if let value = dict["IsIgnore"] as? Bool {
                self.isIgnore = value
            }
            if let value = dict["LastTime"] as? Int32 {
                self.lastTime = value
            }
            if let value = dict["MemberUid"] as? String {
                self.memberUid = value
            }
            if let value = dict["PrivateIP"] as? String {
                self.privateIP = value
            }
            if let value = dict["ProcessStatus"] as? Int32 {
                self.processStatus = value
            }
            if let value = dict["PublicIP"] as? String {
                self.publicIP = value
            }
            if let value = dict["PublicIpType"] as? String {
                self.publicIpType = value
            }
            if let value = dict["RiskLevel"] as? Int32 {
                self.riskLevel = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var currentPage: Int32?

        public var pageSize: Int32?

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
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
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
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var eventList: [DescribeInvadeEventListResponseBody.EventList]?

    public var highLevelPercent: Int32?

    public var lowLevelPercent: Int32?

    public var middleLevelPercent: Int32?

    public var pageInfo: DescribeInvadeEventListResponseBody.PageInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventList != nil {
            var tmp : [Any] = []
            for k in self.eventList! {
                tmp.append(k.toMap())
            }
            map["EventList"] = tmp
        }
        if self.highLevelPercent != nil {
            map["HighLevelPercent"] = self.highLevelPercent!
        }
        if self.lowLevelPercent != nil {
            map["LowLevelPercent"] = self.lowLevelPercent!
        }
        if self.middleLevelPercent != nil {
            map["MiddleLevelPercent"] = self.middleLevelPercent!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventList"] as? [Any?] {
            var tmp : [DescribeInvadeEventListResponseBody.EventList] = []
            for v in value {
                if v != nil {
                    var model = DescribeInvadeEventListResponseBody.EventList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.eventList = tmp
        }
        if let value = dict["HighLevelPercent"] as? Int32 {
            self.highLevelPercent = value
        }
        if let value = dict["LowLevelPercent"] as? Int32 {
            self.lowLevelPercent = value
        }
        if let value = dict["MiddleLevelPercent"] as? Int32 {
            self.middleLevelPercent = value
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = DescribeInvadeEventListResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInvadeEventListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInvadeEventListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInvadeEventListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLogStoreInfoResponseBody : Tea.TeaModel {
    public var logStoreName: String?

    public var projectName: String?

    public var quota: Int64?

    public var regionId: String?

    public var requestId: String?

    public var ttl: Int32?

    public var used: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.quota != nil {
            map["Quota"] = self.quota!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        if self.used != nil {
            map["Used"] = self.used!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogStoreName"] as? String {
            self.logStoreName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Quota"] as? Int64 {
            self.quota = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Ttl"] as? Int32 {
            self.ttl = value
        }
        if let value = dict["Used"] as? Int64 {
            self.used = value
        }
    }
}

public class DescribeLogStoreInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogStoreInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeLogStoreInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNatAclPageStatusRequest : Tea.TeaModel {
    public var lang: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class DescribeNatAclPageStatusResponseBody : Tea.TeaModel {
    public var detail: String?

    public var natAclPageEnable: Bool?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.natAclPageEnable != nil {
            map["NatAclPageEnable"] = self.natAclPageEnable!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Detail"] as? String {
            self.detail = value
        }
        if let value = dict["NatAclPageEnable"] as? Bool {
            self.natAclPageEnable = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeNatAclPageStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNatAclPageStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeNatAclPageStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNatFirewallControlPolicyRequest : Tea.TeaModel {
    public var aclAction: String?

    public var aclUuid: String?

    public var currentPage: String?

    public var description_: String?

    public var destination: String?

    public var direction: String?

    public var lang: String?

    public var natGatewayId: String?

    public var pageSize: String?

    public var proto: String?

    public var release: String?

    public var repeatType: String?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclAction != nil {
            map["AclAction"] = self.aclAction!
        }
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.proto != nil {
            map["Proto"] = self.proto!
        }
        if self.release != nil {
            map["Release"] = self.release!
        }
        if self.repeatType != nil {
            map["RepeatType"] = self.repeatType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclAction"] as? String {
            self.aclAction = value
        }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Destination"] as? String {
            self.destination = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Proto"] as? String {
            self.proto = value
        }
        if let value = dict["Release"] as? String {
            self.release = value
        }
        if let value = dict["RepeatType"] as? String {
            self.repeatType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
    }
}

public class DescribeNatFirewallControlPolicyResponseBody : Tea.TeaModel {
    public class Policys : Tea.TeaModel {
        public var aclAction: String?

        public var aclUuid: String?

        public var applicationNameList: [String]?

        public var createTime: Int64?

        public var description_: String?

        public var destPort: String?

        public var destPortGroup: String?

        public var destPortGroupPorts: [String]?

        public var destPortType: String?

        public var destination: String?

        public var destinationGroupCidrs: [String]?

        public var destinationGroupType: String?

        public var destinationType: String?

        public var dnsResult: String?

        public var dnsResultTime: Int64?

        public var domainResolveType: Int32?

        public var endTime: Int64?

        public var hitLastTime: Int64?

        public var hitTimes: Int32?

        public var modifyTime: Int64?

        public var natGatewayId: String?

        public var order: Int32?

        public var proto: String?

        public var release: String?

        public var repeatDays: [Int64]?

        public var repeatEndTime: String?

        public var repeatStartTime: String?

        public var repeatType: String?

        public var source: String?

        public var sourceGroupCidrs: [String]?

        public var sourceGroupType: String?

        public var sourceType: String?

        public var spreadCnt: String?

        public var startTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclAction != nil {
                map["AclAction"] = self.aclAction!
            }
            if self.aclUuid != nil {
                map["AclUuid"] = self.aclUuid!
            }
            if self.applicationNameList != nil {
                map["ApplicationNameList"] = self.applicationNameList!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destPort != nil {
                map["DestPort"] = self.destPort!
            }
            if self.destPortGroup != nil {
                map["DestPortGroup"] = self.destPortGroup!
            }
            if self.destPortGroupPorts != nil {
                map["DestPortGroupPorts"] = self.destPortGroupPorts!
            }
            if self.destPortType != nil {
                map["DestPortType"] = self.destPortType!
            }
            if self.destination != nil {
                map["Destination"] = self.destination!
            }
            if self.destinationGroupCidrs != nil {
                map["DestinationGroupCidrs"] = self.destinationGroupCidrs!
            }
            if self.destinationGroupType != nil {
                map["DestinationGroupType"] = self.destinationGroupType!
            }
            if self.destinationType != nil {
                map["DestinationType"] = self.destinationType!
            }
            if self.dnsResult != nil {
                map["DnsResult"] = self.dnsResult!
            }
            if self.dnsResultTime != nil {
                map["DnsResultTime"] = self.dnsResultTime!
            }
            if self.domainResolveType != nil {
                map["DomainResolveType"] = self.domainResolveType!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.hitLastTime != nil {
                map["HitLastTime"] = self.hitLastTime!
            }
            if self.hitTimes != nil {
                map["HitTimes"] = self.hitTimes!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.natGatewayId != nil {
                map["NatGatewayId"] = self.natGatewayId!
            }
            if self.order != nil {
                map["Order"] = self.order!
            }
            if self.proto != nil {
                map["Proto"] = self.proto!
            }
            if self.release != nil {
                map["Release"] = self.release!
            }
            if self.repeatDays != nil {
                map["RepeatDays"] = self.repeatDays!
            }
            if self.repeatEndTime != nil {
                map["RepeatEndTime"] = self.repeatEndTime!
            }
            if self.repeatStartTime != nil {
                map["RepeatStartTime"] = self.repeatStartTime!
            }
            if self.repeatType != nil {
                map["RepeatType"] = self.repeatType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceGroupCidrs != nil {
                map["SourceGroupCidrs"] = self.sourceGroupCidrs!
            }
            if self.sourceGroupType != nil {
                map["SourceGroupType"] = self.sourceGroupType!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.spreadCnt != nil {
                map["SpreadCnt"] = self.spreadCnt!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclAction"] as? String {
                self.aclAction = value
            }
            if let value = dict["AclUuid"] as? String {
                self.aclUuid = value
            }
            if let value = dict["ApplicationNameList"] as? [String] {
                self.applicationNameList = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DestPort"] as? String {
                self.destPort = value
            }
            if let value = dict["DestPortGroup"] as? String {
                self.destPortGroup = value
            }
            if let value = dict["DestPortGroupPorts"] as? [String] {
                self.destPortGroupPorts = value
            }
            if let value = dict["DestPortType"] as? String {
                self.destPortType = value
            }
            if let value = dict["Destination"] as? String {
                self.destination = value
            }
            if let value = dict["DestinationGroupCidrs"] as? [String] {
                self.destinationGroupCidrs = value
            }
            if let value = dict["DestinationGroupType"] as? String {
                self.destinationGroupType = value
            }
            if let value = dict["DestinationType"] as? String {
                self.destinationType = value
            }
            if let value = dict["DnsResult"] as? String {
                self.dnsResult = value
            }
            if let value = dict["DnsResultTime"] as? Int64 {
                self.dnsResultTime = value
            }
            if let value = dict["DomainResolveType"] as? Int32 {
                self.domainResolveType = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["HitLastTime"] as? Int64 {
                self.hitLastTime = value
            }
            if let value = dict["HitTimes"] as? Int32 {
                self.hitTimes = value
            }
            if let value = dict["ModifyTime"] as? Int64 {
                self.modifyTime = value
            }
            if let value = dict["NatGatewayId"] as? String {
                self.natGatewayId = value
            }
            if let value = dict["Order"] as? Int32 {
                self.order = value
            }
            if let value = dict["Proto"] as? String {
                self.proto = value
            }
            if let value = dict["Release"] as? String {
                self.release = value
            }
            if let value = dict["RepeatDays"] as? [Int64] {
                self.repeatDays = value
            }
            if let value = dict["RepeatEndTime"] as? String {
                self.repeatEndTime = value
            }
            if let value = dict["RepeatStartTime"] as? String {
                self.repeatStartTime = value
            }
            if let value = dict["RepeatType"] as? String {
                self.repeatType = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceGroupCidrs"] as? [String] {
                self.sourceGroupCidrs = value
            }
            if let value = dict["SourceGroupType"] as? String {
                self.sourceGroupType = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["SpreadCnt"] as? String {
                self.spreadCnt = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
        }
    }
    public var policys: [DescribeNatFirewallControlPolicyResponseBody.Policys]?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policys != nil {
            var tmp : [Any] = []
            for k in self.policys! {
                tmp.append(k.toMap())
            }
            map["Policys"] = tmp
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
        if let value = dict["Policys"] as? [Any?] {
            var tmp : [DescribeNatFirewallControlPolicyResponseBody.Policys] = []
            for v in value {
                if v != nil {
                    var model = DescribeNatFirewallControlPolicyResponseBody.Policys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policys = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeNatFirewallControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNatFirewallControlPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeNatFirewallControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNatFirewallListRequest : Tea.TeaModel {
    public var lang: String?

    public var memberUid: Int64?

    public var natGatewayId: String?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var proxyId: String?

    public var proxyName: String?

    public var regionNo: String?

    public var status: String?

    public var vpcId: String?

    public override init() {
        super.init()
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
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.proxyId != nil {
            map["ProxyId"] = self.proxyId!
        }
        if self.proxyName != nil {
            map["ProxyName"] = self.proxyName!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? Int64 {
            self.memberUid = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ProxyId"] as? String {
            self.proxyId = value
        }
        if let value = dict["ProxyName"] as? String {
            self.proxyName = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DescribeNatFirewallListResponseBody : Tea.TeaModel {
    public class NatFirewallList : Tea.TeaModel {
        public class NatRouteEntryList : Tea.TeaModel {
            public var destinationCidr: String?

            public var nextHopId: String?

            public var nextHopType: String?

            public var routeTableId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.destinationCidr != nil {
                    map["DestinationCidr"] = self.destinationCidr!
                }
                if self.nextHopId != nil {
                    map["NextHopId"] = self.nextHopId!
                }
                if self.nextHopType != nil {
                    map["NextHopType"] = self.nextHopType!
                }
                if self.routeTableId != nil {
                    map["RouteTableId"] = self.routeTableId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DestinationCidr"] as? String {
                    self.destinationCidr = value
                }
                if let value = dict["NextHopId"] as? String {
                    self.nextHopId = value
                }
                if let value = dict["NextHopType"] as? String {
                    self.nextHopType = value
                }
                if let value = dict["RouteTableId"] as? String {
                    self.routeTableId = value
                }
            }
        }
        public var aliUid: Int64?

        public var errorDetail: String?

        public var memberUid: Int64?

        public var natGatewayId: String?

        public var natGatewayName: String?

        public var natRouteEntryList: [DescribeNatFirewallListResponseBody.NatFirewallList.NatRouteEntryList]?

        public var proxyId: String?

        public var proxyName: String?

        public var proxyStatus: String?

        public var regionId: String?

        public var strictMode: Int32?

        public var vpcId: String?

        public var vpcName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.errorDetail != nil {
                map["ErrorDetail"] = self.errorDetail!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.natGatewayId != nil {
                map["NatGatewayId"] = self.natGatewayId!
            }
            if self.natGatewayName != nil {
                map["NatGatewayName"] = self.natGatewayName!
            }
            if self.natRouteEntryList != nil {
                var tmp : [Any] = []
                for k in self.natRouteEntryList! {
                    tmp.append(k.toMap())
                }
                map["NatRouteEntryList"] = tmp
            }
            if self.proxyId != nil {
                map["ProxyId"] = self.proxyId!
            }
            if self.proxyName != nil {
                map["ProxyName"] = self.proxyName!
            }
            if self.proxyStatus != nil {
                map["ProxyStatus"] = self.proxyStatus!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.strictMode != nil {
                map["StrictMode"] = self.strictMode!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcName != nil {
                map["VpcName"] = self.vpcName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["ErrorDetail"] as? String {
                self.errorDetail = value
            }
            if let value = dict["MemberUid"] as? Int64 {
                self.memberUid = value
            }
            if let value = dict["NatGatewayId"] as? String {
                self.natGatewayId = value
            }
            if let value = dict["NatGatewayName"] as? String {
                self.natGatewayName = value
            }
            if let value = dict["NatRouteEntryList"] as? [Any?] {
                var tmp : [DescribeNatFirewallListResponseBody.NatFirewallList.NatRouteEntryList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeNatFirewallListResponseBody.NatFirewallList.NatRouteEntryList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.natRouteEntryList = tmp
            }
            if let value = dict["ProxyId"] as? String {
                self.proxyId = value
            }
            if let value = dict["ProxyName"] as? String {
                self.proxyName = value
            }
            if let value = dict["ProxyStatus"] as? String {
                self.proxyStatus = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["StrictMode"] as? Int32 {
                self.strictMode = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcName"] as? String {
                self.vpcName = value
            }
        }
    }
    public var natFirewallList: [DescribeNatFirewallListResponseBody.NatFirewallList]?

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
        if self.natFirewallList != nil {
            var tmp : [Any] = []
            for k in self.natFirewallList! {
                tmp.append(k.toMap())
            }
            map["NatFirewallList"] = tmp
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
        if let value = dict["NatFirewallList"] as? [Any?] {
            var tmp : [DescribeNatFirewallListResponseBody.NatFirewallList] = []
            for v in value {
                if v != nil {
                    var model = DescribeNatFirewallListResponseBody.NatFirewallList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.natFirewallList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeNatFirewallListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNatFirewallListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeNatFirewallListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNatFirewallPolicyPriorUsedRequest : Tea.TeaModel {
    public var direction: String?

    public var ipVersion: String?

    public var lang: String?

    public var natGatewayId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["IpVersion"] as? String {
            self.ipVersion = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
    }
}

public class DescribeNatFirewallPolicyPriorUsedResponseBody : Tea.TeaModel {
    public var end: Int32?

    public var requestId: String?

    public var start: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["End"] as? Int32 {
            self.end = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Start"] as? Int32 {
            self.start = value
        }
    }
}

public class DescribeNatFirewallPolicyPriorUsedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNatFirewallPolicyPriorUsedResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeNatFirewallPolicyPriorUsedResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNatFirewallTrafficTrendRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var interval: Int64?

    public var natGatewayId: String?

    public var srcPrivateIP: String?

    public var srcPublicIP: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        if self.srcPrivateIP != nil {
            map["SrcPrivateIP"] = self.srcPrivateIP!
        }
        if self.srcPublicIP != nil {
            map["SrcPublicIP"] = self.srcPublicIP!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Interval"] as? Int64 {
            self.interval = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
        if let value = dict["SrcPrivateIP"] as? String {
            self.srcPrivateIP = value
        }
        if let value = dict["SrcPublicIP"] as? String {
            self.srcPublicIP = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeNatFirewallTrafficTrendResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var maxInBps: Int64?

        public var maxOutBps: Int64?

        public var maxTotalBps: Int64?

        public var trafficTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxInBps != nil {
                map["MaxInBps"] = self.maxInBps!
            }
            if self.maxOutBps != nil {
                map["MaxOutBps"] = self.maxOutBps!
            }
            if self.maxTotalBps != nil {
                map["MaxTotalBps"] = self.maxTotalBps!
            }
            if self.trafficTime != nil {
                map["TrafficTime"] = self.trafficTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaxInBps"] as? Int64 {
                self.maxInBps = value
            }
            if let value = dict["MaxOutBps"] as? Int64 {
                self.maxOutBps = value
            }
            if let value = dict["MaxTotalBps"] as? Int64 {
                self.maxTotalBps = value
            }
            if let value = dict["TrafficTime"] as? Int64 {
                self.trafficTime = value
            }
        }
    }
    public var dataList: [DescribeNatFirewallTrafficTrendResponseBody.DataList]?

    public var maxInBps: Int64?

    public var maxOutBps: Int64?

    public var maxTotalBps: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.maxInBps != nil {
            map["MaxInBps"] = self.maxInBps!
        }
        if self.maxOutBps != nil {
            map["MaxOutBps"] = self.maxOutBps!
        }
        if self.maxTotalBps != nil {
            map["MaxTotalBps"] = self.maxTotalBps!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataList"] as? [Any?] {
            var tmp : [DescribeNatFirewallTrafficTrendResponseBody.DataList] = []
            for v in value {
                if v != nil {
                    var model = DescribeNatFirewallTrafficTrendResponseBody.DataList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataList = tmp
        }
        if let value = dict["MaxInBps"] as? Int64 {
            self.maxInBps = value
        }
        if let value = dict["MaxOutBps"] as? Int64 {
            self.maxOutBps = value
        }
        if let value = dict["MaxTotalBps"] as? Int64 {
            self.maxTotalBps = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeNatFirewallTrafficTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNatFirewallTrafficTrendResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeNatFirewallTrafficTrendResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOutgoingDestinationIPRequest : Tea.TeaModel {
    public var applicationName: String?

    public var categoryId: String?

    public var currentPage: String?

    public var dstIP: String?

    public var endTime: String?

    public var lang: String?

    public var order: String?

    public var pageSize: String?

    public var port: String?

    public var privateIP: String?

    public var publicIP: String?

    public var sort: String?

    public var startTime: String?

    public var tagIdNew: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dstIP != nil {
            map["DstIP"] = self.dstIP!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.privateIP != nil {
            map["PrivateIP"] = self.privateIP!
        }
        if self.publicIP != nil {
            map["PublicIP"] = self.publicIP!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tagIdNew != nil {
            map["TagIdNew"] = self.tagIdNew!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["CategoryId"] as? String {
            self.categoryId = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["DstIP"] as? String {
            self.dstIP = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["PrivateIP"] as? String {
            self.privateIP = value
        }
        if let value = dict["PublicIP"] as? String {
            self.publicIP = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TagIdNew"] as? String {
            self.tagIdNew = value
        }
    }
}

public class DescribeOutgoingDestinationIPResponseBody : Tea.TeaModel {
    public class DstIPList : Tea.TeaModel {
        public class AddressGroupList : Tea.TeaModel {
            public var addressGroupName: String?

            public var addressGroupUUID: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addressGroupName != nil {
                    map["AddressGroupName"] = self.addressGroupName!
                }
                if self.addressGroupUUID != nil {
                    map["AddressGroupUUID"] = self.addressGroupUUID!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AddressGroupName"] as? String {
                    self.addressGroupName = value
                }
                if let value = dict["AddressGroupUUID"] as? String {
                    self.addressGroupUUID = value
                }
            }
        }
        public class ApplicationPortList : Tea.TeaModel {
            public var applicationName: String?

            public var port: Int32?

            public var unknownReason: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicationName != nil {
                    map["ApplicationName"] = self.applicationName!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.unknownReason != nil {
                    map["UnknownReason"] = self.unknownReason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApplicationName"] as? String {
                    self.applicationName = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["UnknownReason"] as? [String] {
                    self.unknownReason = value
                }
            }
        }
        public class TagList : Tea.TeaModel {
            public var classId: String?

            public var riskLevel: Int32?

            public var tagDescribe: String?

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
                if self.classId != nil {
                    map["ClassId"] = self.classId!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                if self.tagDescribe != nil {
                    map["TagDescribe"] = self.tagDescribe!
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
                if let value = dict["ClassId"] as? String {
                    self.classId = value
                }
                if let value = dict["RiskLevel"] as? Int32 {
                    self.riskLevel = value
                }
                if let value = dict["TagDescribe"] as? String {
                    self.tagDescribe = value
                }
                if let value = dict["TagId"] as? String {
                    self.tagId = value
                }
                if let value = dict["TagName"] as? String {
                    self.tagName = value
                }
            }
        }
        public var aclCoverage: String?

        public var aclRecommendDetail: String?

        public var aclStatus: String?

        public var addressGroupList: [DescribeOutgoingDestinationIPResponseBody.DstIPList.AddressGroupList]?

        public var applicationPortList: [DescribeOutgoingDestinationIPResponseBody.DstIPList.ApplicationPortList]?

        public var assetCount: Int64?

        public var categoryClassId: String?

        public var categoryId: String?

        public var categoryName: String?

        public var dstIP: String?

        public var groupName: String?

        public var hasAcl: String?

        public var hasAclRecommend: Bool?

        public var inBytes: Int64?

        public var isMarkNormal: Bool?

        public var locationName: String?

        public var outBytes: Int64?

        public var privateAssetCount: Int64?

        public var ruleId: String?

        public var ruleName: String?

        public var securityReason: String?

        public var securitySuggest: String?

        public var sessionCount: Int64?

        public var tagList: [DescribeOutgoingDestinationIPResponseBody.DstIPList.TagList]?

        public var totalBytes: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclCoverage != nil {
                map["AclCoverage"] = self.aclCoverage!
            }
            if self.aclRecommendDetail != nil {
                map["AclRecommendDetail"] = self.aclRecommendDetail!
            }
            if self.aclStatus != nil {
                map["AclStatus"] = self.aclStatus!
            }
            if self.addressGroupList != nil {
                var tmp : [Any] = []
                for k in self.addressGroupList! {
                    tmp.append(k.toMap())
                }
                map["AddressGroupList"] = tmp
            }
            if self.applicationPortList != nil {
                var tmp : [Any] = []
                for k in self.applicationPortList! {
                    tmp.append(k.toMap())
                }
                map["ApplicationPortList"] = tmp
            }
            if self.assetCount != nil {
                map["AssetCount"] = self.assetCount!
            }
            if self.categoryClassId != nil {
                map["CategoryClassId"] = self.categoryClassId!
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.dstIP != nil {
                map["DstIP"] = self.dstIP!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.hasAcl != nil {
                map["HasAcl"] = self.hasAcl!
            }
            if self.hasAclRecommend != nil {
                map["HasAclRecommend"] = self.hasAclRecommend!
            }
            if self.inBytes != nil {
                map["InBytes"] = self.inBytes!
            }
            if self.isMarkNormal != nil {
                map["IsMarkNormal"] = self.isMarkNormal!
            }
            if self.locationName != nil {
                map["LocationName"] = self.locationName!
            }
            if self.outBytes != nil {
                map["OutBytes"] = self.outBytes!
            }
            if self.privateAssetCount != nil {
                map["PrivateAssetCount"] = self.privateAssetCount!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.securityReason != nil {
                map["SecurityReason"] = self.securityReason!
            }
            if self.securitySuggest != nil {
                map["SecuritySuggest"] = self.securitySuggest!
            }
            if self.sessionCount != nil {
                map["SessionCount"] = self.sessionCount!
            }
            if self.tagList != nil {
                var tmp : [Any] = []
                for k in self.tagList! {
                    tmp.append(k.toMap())
                }
                map["TagList"] = tmp
            }
            if self.totalBytes != nil {
                map["TotalBytes"] = self.totalBytes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclCoverage"] as? String {
                self.aclCoverage = value
            }
            if let value = dict["AclRecommendDetail"] as? String {
                self.aclRecommendDetail = value
            }
            if let value = dict["AclStatus"] as? String {
                self.aclStatus = value
            }
            if let value = dict["AddressGroupList"] as? [Any?] {
                var tmp : [DescribeOutgoingDestinationIPResponseBody.DstIPList.AddressGroupList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeOutgoingDestinationIPResponseBody.DstIPList.AddressGroupList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.addressGroupList = tmp
            }
            if let value = dict["ApplicationPortList"] as? [Any?] {
                var tmp : [DescribeOutgoingDestinationIPResponseBody.DstIPList.ApplicationPortList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeOutgoingDestinationIPResponseBody.DstIPList.ApplicationPortList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.applicationPortList = tmp
            }
            if let value = dict["AssetCount"] as? Int64 {
                self.assetCount = value
            }
            if let value = dict["CategoryClassId"] as? String {
                self.categoryClassId = value
            }
            if let value = dict["CategoryId"] as? String {
                self.categoryId = value
            }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["DstIP"] as? String {
                self.dstIP = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["HasAcl"] as? String {
                self.hasAcl = value
            }
            if let value = dict["HasAclRecommend"] as? Bool {
                self.hasAclRecommend = value
            }
            if let value = dict["InBytes"] as? Int64 {
                self.inBytes = value
            }
            if let value = dict["IsMarkNormal"] as? Bool {
                self.isMarkNormal = value
            }
            if let value = dict["LocationName"] as? String {
                self.locationName = value
            }
            if let value = dict["OutBytes"] as? Int64 {
                self.outBytes = value
            }
            if let value = dict["PrivateAssetCount"] as? Int64 {
                self.privateAssetCount = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["SecurityReason"] as? String {
                self.securityReason = value
            }
            if let value = dict["SecuritySuggest"] as? String {
                self.securitySuggest = value
            }
            if let value = dict["SessionCount"] as? Int64 {
                self.sessionCount = value
            }
            if let value = dict["TagList"] as? [Any?] {
                var tmp : [DescribeOutgoingDestinationIPResponseBody.DstIPList.TagList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeOutgoingDestinationIPResponseBody.DstIPList.TagList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagList = tmp
            }
            if let value = dict["TotalBytes"] as? String {
                self.totalBytes = value
            }
        }
    }
    public var dstIPList: [DescribeOutgoingDestinationIPResponseBody.DstIPList]?

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
        if self.dstIPList != nil {
            var tmp : [Any] = []
            for k in self.dstIPList! {
                tmp.append(k.toMap())
            }
            map["DstIPList"] = tmp
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
        if let value = dict["DstIPList"] as? [Any?] {
            var tmp : [DescribeOutgoingDestinationIPResponseBody.DstIPList] = []
            for v in value {
                if v != nil {
                    var model = DescribeOutgoingDestinationIPResponseBody.DstIPList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dstIPList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeOutgoingDestinationIPResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOutgoingDestinationIPResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeOutgoingDestinationIPResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOutgoingDomainRequest : Tea.TeaModel {
    public var categoryId: String?

    public var currentPage: String?

    public var dataType: String?

    public var domain: String?

    public var endTime: String?

    public var isAITraffic: String?

    public var lang: String?

    public var order: String?

    public var pageSize: String?

    public var publicIP: String?

    public var sort: String?

    public var startTime: String?

    public var tagIdNew: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.isAITraffic != nil {
            map["IsAITraffic"] = self.isAITraffic!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.publicIP != nil {
            map["PublicIP"] = self.publicIP!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tagIdNew != nil {
            map["TagIdNew"] = self.tagIdNew!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? String {
            self.categoryId = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["IsAITraffic"] as? String {
            self.isAITraffic = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["PublicIP"] as? String {
            self.publicIP = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TagIdNew"] as? String {
            self.tagIdNew = value
        }
    }
}

public class DescribeOutgoingDomainResponseBody : Tea.TeaModel {
    public class DomainList : Tea.TeaModel {
        public class TagList : Tea.TeaModel {
            public var classId: String?

            public var riskLevel: Int32?

            public var tagDescribe: String?

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
                if self.classId != nil {
                    map["ClassId"] = self.classId!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                if self.tagDescribe != nil {
                    map["TagDescribe"] = self.tagDescribe!
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
                if let value = dict["ClassId"] as? String {
                    self.classId = value
                }
                if let value = dict["RiskLevel"] as? Int32 {
                    self.riskLevel = value
                }
                if let value = dict["TagDescribe"] as? String {
                    self.tagDescribe = value
                }
                if let value = dict["TagId"] as? String {
                    self.tagId = value
                }
                if let value = dict["TagName"] as? String {
                    self.tagName = value
                }
            }
        }
        public var aclCoverage: String?

        public var aclRecommendDetail: String?

        public var aclStatus: String?

        public var addressGroupName: String?

        public var addressGroupUUID: String?

        public var applicationNameList: [String]?

        public var assetCount: Int64?

        public var business: String?

        public var categoryClassId: String?

        public var categoryId: String?

        public var categoryName: String?

        public var domain: String?

        public var groupName: String?

        public var hasAcl: String?

        public var hasAclRecommend: Bool?

        public var inBytes: Int64?

        public var isMarkNormal: Bool?

        public var organization: String?

        public var outBytes: Int64?

        public var privateAssetCount: Int64?

        public var ruleId: String?

        public var ruleName: String?

        public var securityReason: String?

        public var securitySuggest: String?

        public var sessionCount: Int64?

        public var tagList: [DescribeOutgoingDomainResponseBody.DomainList.TagList]?

        public var totalBytes: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclCoverage != nil {
                map["AclCoverage"] = self.aclCoverage!
            }
            if self.aclRecommendDetail != nil {
                map["AclRecommendDetail"] = self.aclRecommendDetail!
            }
            if self.aclStatus != nil {
                map["AclStatus"] = self.aclStatus!
            }
            if self.addressGroupName != nil {
                map["AddressGroupName"] = self.addressGroupName!
            }
            if self.addressGroupUUID != nil {
                map["AddressGroupUUID"] = self.addressGroupUUID!
            }
            if self.applicationNameList != nil {
                map["ApplicationNameList"] = self.applicationNameList!
            }
            if self.assetCount != nil {
                map["AssetCount"] = self.assetCount!
            }
            if self.business != nil {
                map["Business"] = self.business!
            }
            if self.categoryClassId != nil {
                map["CategoryClassId"] = self.categoryClassId!
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.hasAcl != nil {
                map["HasAcl"] = self.hasAcl!
            }
            if self.hasAclRecommend != nil {
                map["HasAclRecommend"] = self.hasAclRecommend!
            }
            if self.inBytes != nil {
                map["InBytes"] = self.inBytes!
            }
            if self.isMarkNormal != nil {
                map["IsMarkNormal"] = self.isMarkNormal!
            }
            if self.organization != nil {
                map["Organization"] = self.organization!
            }
            if self.outBytes != nil {
                map["OutBytes"] = self.outBytes!
            }
            if self.privateAssetCount != nil {
                map["PrivateAssetCount"] = self.privateAssetCount!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.securityReason != nil {
                map["SecurityReason"] = self.securityReason!
            }
            if self.securitySuggest != nil {
                map["SecuritySuggest"] = self.securitySuggest!
            }
            if self.sessionCount != nil {
                map["SessionCount"] = self.sessionCount!
            }
            if self.tagList != nil {
                var tmp : [Any] = []
                for k in self.tagList! {
                    tmp.append(k.toMap())
                }
                map["TagList"] = tmp
            }
            if self.totalBytes != nil {
                map["TotalBytes"] = self.totalBytes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclCoverage"] as? String {
                self.aclCoverage = value
            }
            if let value = dict["AclRecommendDetail"] as? String {
                self.aclRecommendDetail = value
            }
            if let value = dict["AclStatus"] as? String {
                self.aclStatus = value
            }
            if let value = dict["AddressGroupName"] as? String {
                self.addressGroupName = value
            }
            if let value = dict["AddressGroupUUID"] as? String {
                self.addressGroupUUID = value
            }
            if let value = dict["ApplicationNameList"] as? [String] {
                self.applicationNameList = value
            }
            if let value = dict["AssetCount"] as? Int64 {
                self.assetCount = value
            }
            if let value = dict["Business"] as? String {
                self.business = value
            }
            if let value = dict["CategoryClassId"] as? String {
                self.categoryClassId = value
            }
            if let value = dict["CategoryId"] as? String {
                self.categoryId = value
            }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["HasAcl"] as? String {
                self.hasAcl = value
            }
            if let value = dict["HasAclRecommend"] as? Bool {
                self.hasAclRecommend = value
            }
            if let value = dict["InBytes"] as? Int64 {
                self.inBytes = value
            }
            if let value = dict["IsMarkNormal"] as? Bool {
                self.isMarkNormal = value
            }
            if let value = dict["Organization"] as? String {
                self.organization = value
            }
            if let value = dict["OutBytes"] as? Int64 {
                self.outBytes = value
            }
            if let value = dict["PrivateAssetCount"] as? Int64 {
                self.privateAssetCount = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["SecurityReason"] as? String {
                self.securityReason = value
            }
            if let value = dict["SecuritySuggest"] as? String {
                self.securitySuggest = value
            }
            if let value = dict["SessionCount"] as? Int64 {
                self.sessionCount = value
            }
            if let value = dict["TagList"] as? [Any?] {
                var tmp : [DescribeOutgoingDomainResponseBody.DomainList.TagList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeOutgoingDomainResponseBody.DomainList.TagList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagList = tmp
            }
            if let value = dict["TotalBytes"] as? String {
                self.totalBytes = value
            }
        }
    }
    public var domainList: [DescribeOutgoingDomainResponseBody.DomainList]?

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
        if self.domainList != nil {
            var tmp : [Any] = []
            for k in self.domainList! {
                tmp.append(k.toMap())
            }
            map["DomainList"] = tmp
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
        if let value = dict["DomainList"] as? [Any?] {
            var tmp : [DescribeOutgoingDomainResponseBody.DomainList] = []
            for v in value {
                if v != nil {
                    var model = DescribeOutgoingDomainResponseBody.DomainList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeOutgoingDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOutgoingDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeOutgoingDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePolicyAdvancedConfigRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
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
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class DescribePolicyAdvancedConfigResponseBody : Tea.TeaModel {
    public var internetSwitch: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.internetSwitch != nil {
            map["InternetSwitch"] = self.internetSwitch!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InternetSwitch"] as? String {
            self.internetSwitch = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribePolicyAdvancedConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePolicyAdvancedConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePolicyAdvancedConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePolicyPriorUsedRequest : Tea.TeaModel {
    public var direction: String?

    public var ipVersion: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["IpVersion"] as? String {
            self.ipVersion = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class DescribePolicyPriorUsedResponseBody : Tea.TeaModel {
    public var end: Int32?

    public var requestId: String?

    public var start: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["End"] as? Int32 {
            self.end = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Start"] as? Int32 {
            self.start = value
        }
    }
}

public class DescribePolicyPriorUsedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePolicyPriorUsedResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePolicyPriorUsedResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePostpayTrafficDetailRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var endTime: String?

    public var lang: String?

    public var order: String?

    public var pageSize: Int64?

    public var regionNo: String?

    public var searchItem: String?

    public var startTime: String?

    public var trafficType: String?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.searchItem != nil {
            map["SearchItem"] = self.searchItem!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.trafficType != nil {
            map["TrafficType"] = self.trafficType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["SearchItem"] as? String {
            self.searchItem = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TrafficType"] as? String {
            self.trafficType = value
        }
    }
}

public class DescribePostpayTrafficDetailResponseBody : Tea.TeaModel {
    public class TrafficList : Tea.TeaModel {
        public var inBytes: Int64?

        public var instanceId: String?

        public var instanceType: String?

        public var outBytes: Int64?

        public var protectionDuration: Int64?

        public var regionNo: String?

        public var resourceId: String?

        public var totalBytes: Int64?

        public var trafficDay: String?

        public var trafficType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inBytes != nil {
                map["InBytes"] = self.inBytes!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.outBytes != nil {
                map["OutBytes"] = self.outBytes!
            }
            if self.protectionDuration != nil {
                map["ProtectionDuration"] = self.protectionDuration!
            }
            if self.regionNo != nil {
                map["RegionNo"] = self.regionNo!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.totalBytes != nil {
                map["TotalBytes"] = self.totalBytes!
            }
            if self.trafficDay != nil {
                map["TrafficDay"] = self.trafficDay!
            }
            if self.trafficType != nil {
                map["TrafficType"] = self.trafficType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InBytes"] as? Int64 {
                self.inBytes = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["OutBytes"] as? Int64 {
                self.outBytes = value
            }
            if let value = dict["ProtectionDuration"] as? Int64 {
                self.protectionDuration = value
            }
            if let value = dict["RegionNo"] as? String {
                self.regionNo = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["TotalBytes"] as? Int64 {
                self.totalBytes = value
            }
            if let value = dict["TrafficDay"] as? String {
                self.trafficDay = value
            }
            if let value = dict["TrafficType"] as? String {
                self.trafficType = value
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int32?

    public var trafficList: [DescribePostpayTrafficDetailResponseBody.TrafficList]?

    public override init() {
        super.init()
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
        if self.trafficList != nil {
            var tmp : [Any] = []
            for k in self.trafficList! {
                tmp.append(k.toMap())
            }
            map["TrafficList"] = tmp
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
        if let value = dict["TrafficList"] as? [Any?] {
            var tmp : [DescribePostpayTrafficDetailResponseBody.TrafficList] = []
            for v in value {
                if v != nil {
                    var model = DescribePostpayTrafficDetailResponseBody.TrafficList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.trafficList = tmp
        }
    }
}

public class DescribePostpayTrafficDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePostpayTrafficDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePostpayTrafficDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePostpayTrafficTotalRequest : Tea.TeaModel {
    public var lang: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class DescribePostpayTrafficTotalResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var totalAssets: Int64?

    public var totalBillTraffic: Int64?

    public var totalInternetAssets: Int64?

    public var totalInternetTraffic: Int64?

    public var totalNatAssets: Int64?

    public var totalNatTraffic: Int64?

    public var totalSdlBillTraffic: Int64?

    public var totalSdlFreeTraffic: Int64?

    public var totalTraffic: Int64?

    public var totalVpcAssets: Int64?

    public var totalVpcTraffic: Int64?

    public override init() {
        super.init()
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
        if self.totalAssets != nil {
            map["TotalAssets"] = self.totalAssets!
        }
        if self.totalBillTraffic != nil {
            map["TotalBillTraffic"] = self.totalBillTraffic!
        }
        if self.totalInternetAssets != nil {
            map["TotalInternetAssets"] = self.totalInternetAssets!
        }
        if self.totalInternetTraffic != nil {
            map["TotalInternetTraffic"] = self.totalInternetTraffic!
        }
        if self.totalNatAssets != nil {
            map["TotalNatAssets"] = self.totalNatAssets!
        }
        if self.totalNatTraffic != nil {
            map["TotalNatTraffic"] = self.totalNatTraffic!
        }
        if self.totalSdlBillTraffic != nil {
            map["TotalSdlBillTraffic"] = self.totalSdlBillTraffic!
        }
        if self.totalSdlFreeTraffic != nil {
            map["TotalSdlFreeTraffic"] = self.totalSdlFreeTraffic!
        }
        if self.totalTraffic != nil {
            map["TotalTraffic"] = self.totalTraffic!
        }
        if self.totalVpcAssets != nil {
            map["TotalVpcAssets"] = self.totalVpcAssets!
        }
        if self.totalVpcTraffic != nil {
            map["TotalVpcTraffic"] = self.totalVpcTraffic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalAssets"] as? Int64 {
            self.totalAssets = value
        }
        if let value = dict["TotalBillTraffic"] as? Int64 {
            self.totalBillTraffic = value
        }
        if let value = dict["TotalInternetAssets"] as? Int64 {
            self.totalInternetAssets = value
        }
        if let value = dict["TotalInternetTraffic"] as? Int64 {
            self.totalInternetTraffic = value
        }
        if let value = dict["TotalNatAssets"] as? Int64 {
            self.totalNatAssets = value
        }
        if let value = dict["TotalNatTraffic"] as? Int64 {
            self.totalNatTraffic = value
        }
        if let value = dict["TotalSdlBillTraffic"] as? Int64 {
            self.totalSdlBillTraffic = value
        }
        if let value = dict["TotalSdlFreeTraffic"] as? Int64 {
            self.totalSdlFreeTraffic = value
        }
        if let value = dict["TotalTraffic"] as? Int64 {
            self.totalTraffic = value
        }
        if let value = dict["TotalVpcAssets"] as? Int64 {
            self.totalVpcAssets = value
        }
        if let value = dict["TotalVpcTraffic"] as? Int64 {
            self.totalVpcTraffic = value
        }
    }
}

public class DescribePostpayTrafficTotalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePostpayTrafficTotalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePostpayTrafficTotalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePrefixListsRequest : Tea.TeaModel {
    public var regionNo: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class DescribePrefixListsResponseBody : Tea.TeaModel {
    public class PrefixList : Tea.TeaModel {
        public var addressFamily: String?

        public var associationCount: Int32?

        public var creationTime: String?

        public var description_: String?

        public var maxEntries: Int32?

        public var prefixListId: String?

        public var prefixListName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addressFamily != nil {
                map["AddressFamily"] = self.addressFamily!
            }
            if self.associationCount != nil {
                map["AssociationCount"] = self.associationCount!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.maxEntries != nil {
                map["MaxEntries"] = self.maxEntries!
            }
            if self.prefixListId != nil {
                map["PrefixListId"] = self.prefixListId!
            }
            if self.prefixListName != nil {
                map["PrefixListName"] = self.prefixListName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddressFamily"] as? String {
                self.addressFamily = value
            }
            if let value = dict["AssociationCount"] as? Int32 {
                self.associationCount = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["MaxEntries"] as? Int32 {
                self.maxEntries = value
            }
            if let value = dict["PrefixListId"] as? String {
                self.prefixListId = value
            }
            if let value = dict["PrefixListName"] as? String {
                self.prefixListName = value
            }
        }
    }
    public var prefixList: [DescribePrefixListsResponseBody.PrefixList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prefixList != nil {
            var tmp : [Any] = []
            for k in self.prefixList! {
                tmp.append(k.toMap())
            }
            map["PrefixList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PrefixList"] as? [Any?] {
            var tmp : [DescribePrefixListsResponseBody.PrefixList] = []
            for v in value {
                if v != nil {
                    var model = DescribePrefixListsResponseBody.PrefixList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.prefixList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribePrefixListsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePrefixListsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePrefixListsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePrivateDnsDomainNameListRequest : Tea.TeaModel {
    public var accessInstanceId: String?

    public var domainName: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var regionNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessInstanceId != nil {
            map["AccessInstanceId"] = self.accessInstanceId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessInstanceId"] as? String {
            self.accessInstanceId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
    }
}

public class DescribePrivateDnsDomainNameListResponseBody : Tea.TeaModel {
    public var domainNameList: [String]?

    public var pageNo: Int32?

    public var pageSize: Int32?

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
        if self.domainNameList != nil {
            map["DomainNameList"] = self.domainNameList!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainNameList"] as? [String] {
            self.domainNameList = value
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribePrivateDnsDomainNameListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePrivateDnsDomainNameListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePrivateDnsDomainNameListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePrivateDnsEndpointDetailRequest : Tea.TeaModel {
    public var accessInstanceId: String?

    public var regionNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessInstanceId != nil {
            map["AccessInstanceId"] = self.accessInstanceId!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessInstanceId"] as? String {
            self.accessInstanceId = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
    }
}

public class DescribePrivateDnsEndpointDetailResponseBody : Tea.TeaModel {
    public var accessInstanceId: String?

    public var accessInstanceName: String?

    public var aliUid: Int64?

    public var endpointId: String?

    public var firewallType: [String]?

    public var gmtCreate: Int64?

    public var ipProtocol: String?

    public var memberUid: Int64?

    public var port: Int32?

    public var primaryDns: String?

    public var primaryVSwitchId: String?

    public var primaryVSwitchIp: String?

    public var primaryZoneId: String?

    public var privateDnsType: String?

    public var regionNo: String?

    public var requestId: String?

    public var standbyDns: String?

    public var standbyVSwitchId: String?

    public var standbyVSwitchIp: String?

    public var standbyZoneId: String?

    public var status: String?

    public var taskId: String?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessInstanceId != nil {
            map["AccessInstanceId"] = self.accessInstanceId!
        }
        if self.accessInstanceName != nil {
            map["AccessInstanceName"] = self.accessInstanceName!
        }
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.firewallType != nil {
            map["FirewallType"] = self.firewallType!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.ipProtocol != nil {
            map["IpProtocol"] = self.ipProtocol!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.primaryDns != nil {
            map["PrimaryDns"] = self.primaryDns!
        }
        if self.primaryVSwitchId != nil {
            map["PrimaryVSwitchId"] = self.primaryVSwitchId!
        }
        if self.primaryVSwitchIp != nil {
            map["PrimaryVSwitchIp"] = self.primaryVSwitchIp!
        }
        if self.primaryZoneId != nil {
            map["PrimaryZoneId"] = self.primaryZoneId!
        }
        if self.privateDnsType != nil {
            map["PrivateDnsType"] = self.privateDnsType!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.standbyDns != nil {
            map["StandbyDns"] = self.standbyDns!
        }
        if self.standbyVSwitchId != nil {
            map["StandbyVSwitchId"] = self.standbyVSwitchId!
        }
        if self.standbyVSwitchIp != nil {
            map["StandbyVSwitchIp"] = self.standbyVSwitchIp!
        }
        if self.standbyZoneId != nil {
            map["StandbyZoneId"] = self.standbyZoneId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessInstanceId"] as? String {
            self.accessInstanceId = value
        }
        if let value = dict["AccessInstanceName"] as? String {
            self.accessInstanceName = value
        }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["FirewallType"] as? [String] {
            self.firewallType = value
        }
        if let value = dict["GmtCreate"] as? Int64 {
            self.gmtCreate = value
        }
        if let value = dict["IpProtocol"] as? String {
            self.ipProtocol = value
        }
        if let value = dict["MemberUid"] as? Int64 {
            self.memberUid = value
        }
        if let value = dict["Port"] as? Int32 {
            self.port = value
        }
        if let value = dict["PrimaryDns"] as? String {
            self.primaryDns = value
        }
        if let value = dict["PrimaryVSwitchId"] as? String {
            self.primaryVSwitchId = value
        }
        if let value = dict["PrimaryVSwitchIp"] as? String {
            self.primaryVSwitchIp = value
        }
        if let value = dict["PrimaryZoneId"] as? String {
            self.primaryZoneId = value
        }
        if let value = dict["PrivateDnsType"] as? String {
            self.privateDnsType = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StandbyDns"] as? String {
            self.standbyDns = value
        }
        if let value = dict["StandbyVSwitchId"] as? String {
            self.standbyVSwitchId = value
        }
        if let value = dict["StandbyVSwitchIp"] as? String {
            self.standbyVSwitchIp = value
        }
        if let value = dict["StandbyZoneId"] as? String {
            self.standbyZoneId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DescribePrivateDnsEndpointDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePrivateDnsEndpointDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePrivateDnsEndpointDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePrivateDnsEndpointListRequest : Tea.TeaModel {
    public var accessInstanceId: String?

    public var accessInstanceName: String?

    public var firewallType: String?

    public var memberUid: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var regionNo: String?

    public var status: String?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessInstanceId != nil {
            map["AccessInstanceId"] = self.accessInstanceId!
        }
        if self.accessInstanceName != nil {
            map["AccessInstanceName"] = self.accessInstanceName!
        }
        if self.firewallType != nil {
            map["FirewallType"] = self.firewallType!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessInstanceId"] as? String {
            self.accessInstanceId = value
        }
        if let value = dict["AccessInstanceName"] as? String {
            self.accessInstanceName = value
        }
        if let value = dict["FirewallType"] as? String {
            self.firewallType = value
        }
        if let value = dict["MemberUid"] as? Int64 {
            self.memberUid = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DescribePrivateDnsEndpointListResponseBody : Tea.TeaModel {
    public class AccessInstanceList : Tea.TeaModel {
        public var accessInstanceId: String?

        public var accessInstanceName: String?

        public var aliUid: Int64?

        public var domainNameCount: Int64?

        public var firewallType: [String]?

        public var gmtCreate: Int64?

        public var ipProtocol: Int32?

        public var memberUid: Int64?

        public var port: Int32?

        public var primaryDns: String?

        public var privateDnsType: String?

        public var regionNo: String?

        public var standbyDns: String?

        public var status: Int32?

        public var taskId: String?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessInstanceId != nil {
                map["AccessInstanceId"] = self.accessInstanceId!
            }
            if self.accessInstanceName != nil {
                map["AccessInstanceName"] = self.accessInstanceName!
            }
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.domainNameCount != nil {
                map["DomainNameCount"] = self.domainNameCount!
            }
            if self.firewallType != nil {
                map["FirewallType"] = self.firewallType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.ipProtocol != nil {
                map["IpProtocol"] = self.ipProtocol!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.primaryDns != nil {
                map["PrimaryDns"] = self.primaryDns!
            }
            if self.privateDnsType != nil {
                map["PrivateDnsType"] = self.privateDnsType!
            }
            if self.regionNo != nil {
                map["RegionNo"] = self.regionNo!
            }
            if self.standbyDns != nil {
                map["StandbyDns"] = self.standbyDns!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessInstanceId"] as? String {
                self.accessInstanceId = value
            }
            if let value = dict["AccessInstanceName"] as? String {
                self.accessInstanceName = value
            }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["DomainNameCount"] as? Int64 {
                self.domainNameCount = value
            }
            if let value = dict["FirewallType"] as? [String] {
                self.firewallType = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["IpProtocol"] as? Int32 {
                self.ipProtocol = value
            }
            if let value = dict["MemberUid"] as? Int64 {
                self.memberUid = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["PrimaryDns"] as? String {
                self.primaryDns = value
            }
            if let value = dict["PrivateDnsType"] as? String {
                self.privateDnsType = value
            }
            if let value = dict["RegionNo"] as? String {
                self.regionNo = value
            }
            if let value = dict["StandbyDns"] as? String {
                self.standbyDns = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accessInstanceList: [DescribePrivateDnsEndpointListResponseBody.AccessInstanceList]?

    public var pageNo: Int32?

    public var pageSize: Int32?

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
        if self.accessInstanceList != nil {
            var tmp : [Any] = []
            for k in self.accessInstanceList! {
                tmp.append(k.toMap())
            }
            map["AccessInstanceList"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessInstanceList"] as? [Any?] {
            var tmp : [DescribePrivateDnsEndpointListResponseBody.AccessInstanceList] = []
            for v in value {
                if v != nil {
                    var model = DescribePrivateDnsEndpointListResponseBody.AccessInstanceList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.accessInstanceList = tmp
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribePrivateDnsEndpointListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePrivateDnsEndpointListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePrivateDnsEndpointListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRiskEventGroupRequest : Tea.TeaModel {
    public var attackApp: [String]?

    public var attackAppCategory: [String]?

    public var attackType: String?

    public var buyVersion: Int64?

    public var currentPage: String?

    public var dataType: String?

    public var direction: String?

    public var dstIP: String?

    public var dstNetworkInstanceId: String?

    public var endTime: String?

    public var eventName: String?

    public var firewallType: String?

    public var isOnlyPrivateAssoc: String?

    public var lang: String?

    public var noLocation: String?

    public var order: String?

    public var pageSize: String?

    public var ruleResult: String?

    public var ruleSource: String?

    public var sort: String?

    public var srcIP: String?

    public var srcNetworkInstanceId: String?

    public var startTime: String?

    public var vulLevel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attackApp != nil {
            map["AttackApp"] = self.attackApp!
        }
        if self.attackAppCategory != nil {
            map["AttackAppCategory"] = self.attackAppCategory!
        }
        if self.attackType != nil {
            map["AttackType"] = self.attackType!
        }
        if self.buyVersion != nil {
            map["BuyVersion"] = self.buyVersion!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.dstIP != nil {
            map["DstIP"] = self.dstIP!
        }
        if self.dstNetworkInstanceId != nil {
            map["DstNetworkInstanceId"] = self.dstNetworkInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.firewallType != nil {
            map["FirewallType"] = self.firewallType!
        }
        if self.isOnlyPrivateAssoc != nil {
            map["IsOnlyPrivateAssoc"] = self.isOnlyPrivateAssoc!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.noLocation != nil {
            map["NoLocation"] = self.noLocation!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.ruleResult != nil {
            map["RuleResult"] = self.ruleResult!
        }
        if self.ruleSource != nil {
            map["RuleSource"] = self.ruleSource!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.srcIP != nil {
            map["SrcIP"] = self.srcIP!
        }
        if self.srcNetworkInstanceId != nil {
            map["SrcNetworkInstanceId"] = self.srcNetworkInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.vulLevel != nil {
            map["VulLevel"] = self.vulLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttackApp"] as? [String] {
            self.attackApp = value
        }
        if let value = dict["AttackAppCategory"] as? [String] {
            self.attackAppCategory = value
        }
        if let value = dict["AttackType"] as? String {
            self.attackType = value
        }
        if let value = dict["BuyVersion"] as? Int64 {
            self.buyVersion = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["DstIP"] as? String {
            self.dstIP = value
        }
        if let value = dict["DstNetworkInstanceId"] as? String {
            self.dstNetworkInstanceId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EventName"] as? String {
            self.eventName = value
        }
        if let value = dict["FirewallType"] as? String {
            self.firewallType = value
        }
        if let value = dict["IsOnlyPrivateAssoc"] as? String {
            self.isOnlyPrivateAssoc = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NoLocation"] as? String {
            self.noLocation = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RuleResult"] as? String {
            self.ruleResult = value
        }
        if let value = dict["RuleSource"] as? String {
            self.ruleSource = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["SrcIP"] as? String {
            self.srcIP = value
        }
        if let value = dict["SrcNetworkInstanceId"] as? String {
            self.srcNetworkInstanceId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["VulLevel"] as? String {
            self.vulLevel = value
        }
    }
}

public class DescribeRiskEventGroupResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class IPLocationInfo : Tea.TeaModel {
            public var cityId: String?

            public var cityName: String?

            public var countryId: String?

            public var countryName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cityId != nil {
                    map["CityId"] = self.cityId!
                }
                if self.cityName != nil {
                    map["CityName"] = self.cityName!
                }
                if self.countryId != nil {
                    map["CountryId"] = self.countryId!
                }
                if self.countryName != nil {
                    map["CountryName"] = self.countryName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CityId"] as? String {
                    self.cityId = value
                }
                if let value = dict["CityName"] as? String {
                    self.cityName = value
                }
                if let value = dict["CountryId"] as? String {
                    self.countryId = value
                }
                if let value = dict["CountryName"] as? String {
                    self.countryName = value
                }
            }
        }
        public class ResourcePrivateIPList : Tea.TeaModel {
            public var regionNo: String?

            public var resourceInstanceId: String?

            public var resourceInstanceName: String?

            public var resourcePrivateIP: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.regionNo != nil {
                    map["RegionNo"] = self.regionNo!
                }
                if self.resourceInstanceId != nil {
                    map["ResourceInstanceId"] = self.resourceInstanceId!
                }
                if self.resourceInstanceName != nil {
                    map["ResourceInstanceName"] = self.resourceInstanceName!
                }
                if self.resourcePrivateIP != nil {
                    map["ResourcePrivateIP"] = self.resourcePrivateIP!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionNo"] as? String {
                    self.regionNo = value
                }
                if let value = dict["ResourceInstanceId"] as? String {
                    self.resourceInstanceId = value
                }
                if let value = dict["ResourceInstanceName"] as? String {
                    self.resourceInstanceName = value
                }
                if let value = dict["ResourcePrivateIP"] as? String {
                    self.resourcePrivateIP = value
                }
            }
        }
        public class VpcDstInfo : Tea.TeaModel {
            public var ecsInstanceId: String?

            public var ecsInstanceName: String?

            public var networkInstanceId: String?

            public var networkInstanceName: String?

            public var regionNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ecsInstanceId != nil {
                    map["EcsInstanceId"] = self.ecsInstanceId!
                }
                if self.ecsInstanceName != nil {
                    map["EcsInstanceName"] = self.ecsInstanceName!
                }
                if self.networkInstanceId != nil {
                    map["NetworkInstanceId"] = self.networkInstanceId!
                }
                if self.networkInstanceName != nil {
                    map["NetworkInstanceName"] = self.networkInstanceName!
                }
                if self.regionNo != nil {
                    map["RegionNo"] = self.regionNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EcsInstanceId"] as? String {
                    self.ecsInstanceId = value
                }
                if let value = dict["EcsInstanceName"] as? String {
                    self.ecsInstanceName = value
                }
                if let value = dict["NetworkInstanceId"] as? String {
                    self.networkInstanceId = value
                }
                if let value = dict["NetworkInstanceName"] as? String {
                    self.networkInstanceName = value
                }
                if let value = dict["RegionNo"] as? String {
                    self.regionNo = value
                }
            }
        }
        public class VpcSrcInfo : Tea.TeaModel {
            public var ecsInstanceId: String?

            public var ecsInstanceName: String?

            public var networkInstanceId: String?

            public var networkInstanceName: String?

            public var regionNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ecsInstanceId != nil {
                    map["EcsInstanceId"] = self.ecsInstanceId!
                }
                if self.ecsInstanceName != nil {
                    map["EcsInstanceName"] = self.ecsInstanceName!
                }
                if self.networkInstanceId != nil {
                    map["NetworkInstanceId"] = self.networkInstanceId!
                }
                if self.networkInstanceName != nil {
                    map["NetworkInstanceName"] = self.networkInstanceName!
                }
                if self.regionNo != nil {
                    map["RegionNo"] = self.regionNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EcsInstanceId"] as? String {
                    self.ecsInstanceId = value
                }
                if let value = dict["EcsInstanceName"] as? String {
                    self.ecsInstanceName = value
                }
                if let value = dict["NetworkInstanceId"] as? String {
                    self.networkInstanceId = value
                }
                if let value = dict["NetworkInstanceName"] as? String {
                    self.networkInstanceName = value
                }
                if let value = dict["RegionNo"] as? String {
                    self.regionNo = value
                }
            }
        }
        public var attackApp: String?

        public var attackType: Int32?

        public var description_: String?

        public var direction: String?

        public var dstIP: String?

        public var eventCount: Int32?

        public var eventId: String?

        public var eventName: String?

        public var firstEventTime: Int32?

        public var IPLocationInfo: DescribeRiskEventGroupResponseBody.DataList.IPLocationInfo?

        public var lastEventTime: Int32?

        public var resourcePrivateIPList: [DescribeRiskEventGroupResponseBody.DataList.ResourcePrivateIPList]?

        public var resourceType: String?

        public var ruleId: String?

        public var ruleResult: Int32?

        public var ruleSource: Int32?

        public var srcIP: String?

        public var srcIPTag: String?

        public var srcPrivateIPList: [String]?

        public var tag: String?

        public var vpcDstInfo: DescribeRiskEventGroupResponseBody.DataList.VpcDstInfo?

        public var vpcSrcInfo: DescribeRiskEventGroupResponseBody.DataList.VpcSrcInfo?

        public var vulLevel: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.IPLocationInfo?.validate()
            try self.vpcDstInfo?.validate()
            try self.vpcSrcInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attackApp != nil {
                map["AttackApp"] = self.attackApp!
            }
            if self.attackType != nil {
                map["AttackType"] = self.attackType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.direction != nil {
                map["Direction"] = self.direction!
            }
            if self.dstIP != nil {
                map["DstIP"] = self.dstIP!
            }
            if self.eventCount != nil {
                map["EventCount"] = self.eventCount!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.eventName != nil {
                map["EventName"] = self.eventName!
            }
            if self.firstEventTime != nil {
                map["FirstEventTime"] = self.firstEventTime!
            }
            if self.IPLocationInfo != nil {
                map["IPLocationInfo"] = self.IPLocationInfo?.toMap()
            }
            if self.lastEventTime != nil {
                map["LastEventTime"] = self.lastEventTime!
            }
            if self.resourcePrivateIPList != nil {
                var tmp : [Any] = []
                for k in self.resourcePrivateIPList! {
                    tmp.append(k.toMap())
                }
                map["ResourcePrivateIPList"] = tmp
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleResult != nil {
                map["RuleResult"] = self.ruleResult!
            }
            if self.ruleSource != nil {
                map["RuleSource"] = self.ruleSource!
            }
            if self.srcIP != nil {
                map["SrcIP"] = self.srcIP!
            }
            if self.srcIPTag != nil {
                map["SrcIPTag"] = self.srcIPTag!
            }
            if self.srcPrivateIPList != nil {
                map["SrcPrivateIPList"] = self.srcPrivateIPList!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.vpcDstInfo != nil {
                map["VpcDstInfo"] = self.vpcDstInfo?.toMap()
            }
            if self.vpcSrcInfo != nil {
                map["VpcSrcInfo"] = self.vpcSrcInfo?.toMap()
            }
            if self.vulLevel != nil {
                map["VulLevel"] = self.vulLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttackApp"] as? String {
                self.attackApp = value
            }
            if let value = dict["AttackType"] as? Int32 {
                self.attackType = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Direction"] as? String {
                self.direction = value
            }
            if let value = dict["DstIP"] as? String {
                self.dstIP = value
            }
            if let value = dict["EventCount"] as? Int32 {
                self.eventCount = value
            }
            if let value = dict["EventId"] as? String {
                self.eventId = value
            }
            if let value = dict["EventName"] as? String {
                self.eventName = value
            }
            if let value = dict["FirstEventTime"] as? Int32 {
                self.firstEventTime = value
            }
            if let value = dict["IPLocationInfo"] as? [String: Any?] {
                var model = DescribeRiskEventGroupResponseBody.DataList.IPLocationInfo()
                model.fromMap(value)
                self.IPLocationInfo = model
            }
            if let value = dict["LastEventTime"] as? Int32 {
                self.lastEventTime = value
            }
            if let value = dict["ResourcePrivateIPList"] as? [Any?] {
                var tmp : [DescribeRiskEventGroupResponseBody.DataList.ResourcePrivateIPList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRiskEventGroupResponseBody.DataList.ResourcePrivateIPList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resourcePrivateIPList = tmp
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleResult"] as? Int32 {
                self.ruleResult = value
            }
            if let value = dict["RuleSource"] as? Int32 {
                self.ruleSource = value
            }
            if let value = dict["SrcIP"] as? String {
                self.srcIP = value
            }
            if let value = dict["SrcIPTag"] as? String {
                self.srcIPTag = value
            }
            if let value = dict["SrcPrivateIPList"] as? [String] {
                self.srcPrivateIPList = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
            if let value = dict["VpcDstInfo"] as? [String: Any?] {
                var model = DescribeRiskEventGroupResponseBody.DataList.VpcDstInfo()
                model.fromMap(value)
                self.vpcDstInfo = model
            }
            if let value = dict["VpcSrcInfo"] as? [String: Any?] {
                var model = DescribeRiskEventGroupResponseBody.DataList.VpcSrcInfo()
                model.fromMap(value)
                self.vpcSrcInfo = model
            }
            if let value = dict["VulLevel"] as? Int32 {
                self.vulLevel = value
            }
        }
    }
    public var dataList: [DescribeRiskEventGroupResponseBody.DataList]?

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
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
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
        if let value = dict["DataList"] as? [Any?] {
            var tmp : [DescribeRiskEventGroupResponseBody.DataList] = []
            for v in value {
                if v != nil {
                    var model = DescribeRiskEventGroupResponseBody.DataList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeRiskEventGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRiskEventGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRiskEventGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRiskEventPayloadRequest : Tea.TeaModel {
    public var dstIP: String?

    public var dstVpcId: String?

    public var endTime: String?

    public var firewallType: String?

    public var publicIP: String?

    public var srcIP: String?

    public var srcVpcId: String?

    public var startTime: String?

    public var UUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dstIP != nil {
            map["DstIP"] = self.dstIP!
        }
        if self.dstVpcId != nil {
            map["DstVpcId"] = self.dstVpcId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.firewallType != nil {
            map["FirewallType"] = self.firewallType!
        }
        if self.publicIP != nil {
            map["PublicIP"] = self.publicIP!
        }
        if self.srcIP != nil {
            map["SrcIP"] = self.srcIP!
        }
        if self.srcVpcId != nil {
            map["SrcVpcId"] = self.srcVpcId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.UUID != nil {
            map["UUID"] = self.UUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DstIP"] as? String {
            self.dstIP = value
        }
        if let value = dict["DstVpcId"] as? String {
            self.dstVpcId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["FirewallType"] as? String {
            self.firewallType = value
        }
        if let value = dict["PublicIP"] as? String {
            self.publicIP = value
        }
        if let value = dict["SrcIP"] as? String {
            self.srcIP = value
        }
        if let value = dict["SrcVpcId"] as? String {
            self.srcVpcId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["UUID"] as? String {
            self.UUID = value
        }
    }
}

public class DescribeRiskEventPayloadResponseBody : Tea.TeaModel {
    public var dstIP: String?

    public var dstPort: Int32?

    public var dstVpcId: String?

    public var hitContentType: Int32?

    public var hitTo: Int32?

    public var parsedContent: String?

    public var payload: String?

    public var payloadLen: Int32?

    public var proto: String?

    public var realIp: String?

    public var requestId: String?

    public var srcIP: String?

    public var srcPort: Int32?

    public var srcVpcId: String?

    public var XForwardFor: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dstIP != nil {
            map["DstIP"] = self.dstIP!
        }
        if self.dstPort != nil {
            map["DstPort"] = self.dstPort!
        }
        if self.dstVpcId != nil {
            map["DstVpcId"] = self.dstVpcId!
        }
        if self.hitContentType != nil {
            map["HitContentType"] = self.hitContentType!
        }
        if self.hitTo != nil {
            map["HitTo"] = self.hitTo!
        }
        if self.parsedContent != nil {
            map["ParsedContent"] = self.parsedContent!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.payloadLen != nil {
            map["PayloadLen"] = self.payloadLen!
        }
        if self.proto != nil {
            map["Proto"] = self.proto!
        }
        if self.realIp != nil {
            map["RealIp"] = self.realIp!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.srcIP != nil {
            map["SrcIP"] = self.srcIP!
        }
        if self.srcPort != nil {
            map["SrcPort"] = self.srcPort!
        }
        if self.srcVpcId != nil {
            map["SrcVpcId"] = self.srcVpcId!
        }
        if self.XForwardFor != nil {
            map["XForwardFor"] = self.XForwardFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DstIP"] as? String {
            self.dstIP = value
        }
        if let value = dict["DstPort"] as? Int32 {
            self.dstPort = value
        }
        if let value = dict["DstVpcId"] as? String {
            self.dstVpcId = value
        }
        if let value = dict["HitContentType"] as? Int32 {
            self.hitContentType = value
        }
        if let value = dict["HitTo"] as? Int32 {
            self.hitTo = value
        }
        if let value = dict["ParsedContent"] as? String {
            self.parsedContent = value
        }
        if let value = dict["Payload"] as? String {
            self.payload = value
        }
        if let value = dict["PayloadLen"] as? Int32 {
            self.payloadLen = value
        }
        if let value = dict["Proto"] as? String {
            self.proto = value
        }
        if let value = dict["RealIp"] as? String {
            self.realIp = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SrcIP"] as? String {
            self.srcIP = value
        }
        if let value = dict["SrcPort"] as? Int32 {
            self.srcPort = value
        }
        if let value = dict["SrcVpcId"] as? String {
            self.srcVpcId = value
        }
        if let value = dict["XForwardFor"] as? String {
            self.XForwardFor = value
        }
    }
}

public class DescribeRiskEventPayloadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRiskEventPayloadResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRiskEventPayloadResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSignatureLibVersionResponseBody : Tea.TeaModel {
    public class Version : Tea.TeaModel {
        public var type: String?

        public var updateTime: Int64?

        public var version: String?

        public override init() {
            super.init()
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
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int32?

    public var version: [DescribeSignatureLibVersionResponseBody.Version]?

    public override init() {
        super.init()
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
        if self.version != nil {
            var tmp : [Any] = []
            for k in self.version! {
                tmp.append(k.toMap())
            }
            map["Version"] = tmp
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
        if let value = dict["Version"] as? [Any?] {
            var tmp : [DescribeSignatureLibVersionResponseBody.Version] = []
            for v in value {
                if v != nil {
                    var model = DescribeSignatureLibVersionResponseBody.Version()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.version = tmp
        }
    }
}

public class DescribeSignatureLibVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSignatureLibVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSignatureLibVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTrFirewallPolicyBackUpAssociationListRequest : Tea.TeaModel {
    public class CandidateList : Tea.TeaModel {
        public var candidateId: String?

        public var candidateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.candidateId != nil {
                map["CandidateId"] = self.candidateId!
            }
            if self.candidateType != nil {
                map["CandidateType"] = self.candidateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CandidateId"] as? String {
                self.candidateId = value
            }
            if let value = dict["CandidateType"] as? String {
                self.candidateType = value
            }
        }
    }
    public var candidateList: [DescribeTrFirewallPolicyBackUpAssociationListRequest.CandidateList]?

    public var firewallId: String?

    public var lang: String?

    public var trFirewallRoutePolicyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.candidateList != nil {
            var tmp : [Any] = []
            for k in self.candidateList! {
                tmp.append(k.toMap())
            }
            map["CandidateList"] = tmp
        }
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.trFirewallRoutePolicyId != nil {
            map["TrFirewallRoutePolicyId"] = self.trFirewallRoutePolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CandidateList"] as? [Any?] {
            var tmp : [DescribeTrFirewallPolicyBackUpAssociationListRequest.CandidateList] = []
            for v in value {
                if v != nil {
                    var model = DescribeTrFirewallPolicyBackUpAssociationListRequest.CandidateList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.candidateList = tmp
        }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TrFirewallRoutePolicyId"] as? String {
            self.trFirewallRoutePolicyId = value
        }
    }
}

public class DescribeTrFirewallPolicyBackUpAssociationListShrinkRequest : Tea.TeaModel {
    public var candidateListShrink: String?

    public var firewallId: String?

    public var lang: String?

    public var trFirewallRoutePolicyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.candidateListShrink != nil {
            map["CandidateList"] = self.candidateListShrink!
        }
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.trFirewallRoutePolicyId != nil {
            map["TrFirewallRoutePolicyId"] = self.trFirewallRoutePolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CandidateList"] as? String {
            self.candidateListShrink = value
        }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TrFirewallRoutePolicyId"] as? String {
            self.trFirewallRoutePolicyId = value
        }
    }
}

public class DescribeTrFirewallPolicyBackUpAssociationListResponseBody : Tea.TeaModel {
    public class PolicyAssociationBackupConfigs : Tea.TeaModel {
        public var candidateId: String?

        public var candidateName: String?

        public var candidateType: String?

        public var currentRouteTableId: String?

        public var originalRouteTableId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.candidateId != nil {
                map["CandidateId"] = self.candidateId!
            }
            if self.candidateName != nil {
                map["CandidateName"] = self.candidateName!
            }
            if self.candidateType != nil {
                map["CandidateType"] = self.candidateType!
            }
            if self.currentRouteTableId != nil {
                map["CurrentRouteTableId"] = self.currentRouteTableId!
            }
            if self.originalRouteTableId != nil {
                map["OriginalRouteTableId"] = self.originalRouteTableId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CandidateId"] as? String {
                self.candidateId = value
            }
            if let value = dict["CandidateName"] as? String {
                self.candidateName = value
            }
            if let value = dict["CandidateType"] as? String {
                self.candidateType = value
            }
            if let value = dict["CurrentRouteTableId"] as? String {
                self.currentRouteTableId = value
            }
            if let value = dict["OriginalRouteTableId"] as? String {
                self.originalRouteTableId = value
            }
        }
    }
    public var policyAssociationBackupConfigs: [DescribeTrFirewallPolicyBackUpAssociationListResponseBody.PolicyAssociationBackupConfigs]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyAssociationBackupConfigs != nil {
            var tmp : [Any] = []
            for k in self.policyAssociationBackupConfigs! {
                tmp.append(k.toMap())
            }
            map["PolicyAssociationBackupConfigs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyAssociationBackupConfigs"] as? [Any?] {
            var tmp : [DescribeTrFirewallPolicyBackUpAssociationListResponseBody.PolicyAssociationBackupConfigs] = []
            for v in value {
                if v != nil {
                    var model = DescribeTrFirewallPolicyBackUpAssociationListResponseBody.PolicyAssociationBackupConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policyAssociationBackupConfigs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeTrFirewallPolicyBackUpAssociationListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTrFirewallPolicyBackUpAssociationListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTrFirewallPolicyBackUpAssociationListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTrFirewallV2RoutePolicyListRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var firewallId: String?

    public var lang: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
    }
}

public class DescribeTrFirewallV2RoutePolicyListResponseBody : Tea.TeaModel {
    public class TrFirewallRoutePolicies : Tea.TeaModel {
        public class DestCandidateList : Tea.TeaModel {
            public var candidateId: String?

            public var candidateType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.candidateId != nil {
                    map["CandidateId"] = self.candidateId!
                }
                if self.candidateType != nil {
                    map["CandidateType"] = self.candidateType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CandidateId"] as? String {
                    self.candidateId = value
                }
                if let value = dict["CandidateType"] as? String {
                    self.candidateType = value
                }
            }
        }
        public class SrcCandidateList : Tea.TeaModel {
            public var candidateId: String?

            public var candidateType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.candidateId != nil {
                    map["CandidateId"] = self.candidateId!
                }
                if self.candidateType != nil {
                    map["CandidateType"] = self.candidateType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CandidateId"] as? String {
                    self.candidateId = value
                }
                if let value = dict["CandidateType"] as? String {
                    self.candidateType = value
                }
            }
        }
        public var destCandidateList: [DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies.DestCandidateList]?

        public var policyDescription: String?

        public var policyName: String?

        public var policyStatus: String?

        public var policyType: String?

        public var srcCandidateList: [DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies.SrcCandidateList]?

        public var trFirewallRoutePolicyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.destCandidateList != nil {
                var tmp : [Any] = []
                for k in self.destCandidateList! {
                    tmp.append(k.toMap())
                }
                map["DestCandidateList"] = tmp
            }
            if self.policyDescription != nil {
                map["PolicyDescription"] = self.policyDescription!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.policyStatus != nil {
                map["PolicyStatus"] = self.policyStatus!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.srcCandidateList != nil {
                var tmp : [Any] = []
                for k in self.srcCandidateList! {
                    tmp.append(k.toMap())
                }
                map["SrcCandidateList"] = tmp
            }
            if self.trFirewallRoutePolicyId != nil {
                map["TrFirewallRoutePolicyId"] = self.trFirewallRoutePolicyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DestCandidateList"] as? [Any?] {
                var tmp : [DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies.DestCandidateList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies.DestCandidateList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.destCandidateList = tmp
            }
            if let value = dict["PolicyDescription"] as? String {
                self.policyDescription = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicyStatus"] as? String {
                self.policyStatus = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
            if let value = dict["SrcCandidateList"] as? [Any?] {
                var tmp : [DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies.SrcCandidateList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies.SrcCandidateList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.srcCandidateList = tmp
            }
            if let value = dict["TrFirewallRoutePolicyId"] as? String {
                self.trFirewallRoutePolicyId = value
            }
        }
    }
    public var requestId: String?

    public var totalCount: String?

    public var trFirewallRoutePolicies: [DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies]?

    public override init() {
        super.init()
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
        if self.trFirewallRoutePolicies != nil {
            var tmp : [Any] = []
            for k in self.trFirewallRoutePolicies! {
                tmp.append(k.toMap())
            }
            map["TrFirewallRoutePolicies"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
        if let value = dict["TrFirewallRoutePolicies"] as? [Any?] {
            var tmp : [DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies] = []
            for v in value {
                if v != nil {
                    var model = DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.trFirewallRoutePolicies = tmp
        }
    }
}

public class DescribeTrFirewallV2RoutePolicyListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTrFirewallV2RoutePolicyListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTrFirewallV2RoutePolicyListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTrFirewallsV2DetailRequest : Tea.TeaModel {
    public var firewallId: String?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class DescribeTrFirewallsV2DetailResponseBody : Tea.TeaModel {
    public var cenId: String?

    public var firewallDescription: String?

    public var firewallEniId: String?

    public var firewallEniVpcId: String?

    public var firewallEniVswitchId: String?

    public var firewallId: String?

    public var firewallName: String?

    public var firewallStatus: String?

    public var firewallSubnetCidr: String?

    public var firewallSwitchStatus: String?

    public var firewallVpcCidr: String?

    public var regionNo: String?

    public var requestId: String?

    public var routeMode: String?

    public var trAttachmentMasterCidr: String?

    public var trAttachmentMasterZone: String?

    public var trAttachmentSlaveCidr: String?

    public var trAttachmentSlaveZone: String?

    public var transitRouterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.firewallDescription != nil {
            map["FirewallDescription"] = self.firewallDescription!
        }
        if self.firewallEniId != nil {
            map["FirewallEniId"] = self.firewallEniId!
        }
        if self.firewallEniVpcId != nil {
            map["FirewallEniVpcId"] = self.firewallEniVpcId!
        }
        if self.firewallEniVswitchId != nil {
            map["FirewallEniVswitchId"] = self.firewallEniVswitchId!
        }
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.firewallName != nil {
            map["FirewallName"] = self.firewallName!
        }
        if self.firewallStatus != nil {
            map["FirewallStatus"] = self.firewallStatus!
        }
        if self.firewallSubnetCidr != nil {
            map["FirewallSubnetCidr"] = self.firewallSubnetCidr!
        }
        if self.firewallSwitchStatus != nil {
            map["FirewallSwitchStatus"] = self.firewallSwitchStatus!
        }
        if self.firewallVpcCidr != nil {
            map["FirewallVpcCidr"] = self.firewallVpcCidr!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.routeMode != nil {
            map["RouteMode"] = self.routeMode!
        }
        if self.trAttachmentMasterCidr != nil {
            map["TrAttachmentMasterCidr"] = self.trAttachmentMasterCidr!
        }
        if self.trAttachmentMasterZone != nil {
            map["TrAttachmentMasterZone"] = self.trAttachmentMasterZone!
        }
        if self.trAttachmentSlaveCidr != nil {
            map["TrAttachmentSlaveCidr"] = self.trAttachmentSlaveCidr!
        }
        if self.trAttachmentSlaveZone != nil {
            map["TrAttachmentSlaveZone"] = self.trAttachmentSlaveZone!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CenId"] as? String {
            self.cenId = value
        }
        if let value = dict["FirewallDescription"] as? String {
            self.firewallDescription = value
        }
        if let value = dict["FirewallEniId"] as? String {
            self.firewallEniId = value
        }
        if let value = dict["FirewallEniVpcId"] as? String {
            self.firewallEniVpcId = value
        }
        if let value = dict["FirewallEniVswitchId"] as? String {
            self.firewallEniVswitchId = value
        }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["FirewallName"] as? String {
            self.firewallName = value
        }
        if let value = dict["FirewallStatus"] as? String {
            self.firewallStatus = value
        }
        if let value = dict["FirewallSubnetCidr"] as? String {
            self.firewallSubnetCidr = value
        }
        if let value = dict["FirewallSwitchStatus"] as? String {
            self.firewallSwitchStatus = value
        }
        if let value = dict["FirewallVpcCidr"] as? String {
            self.firewallVpcCidr = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RouteMode"] as? String {
            self.routeMode = value
        }
        if let value = dict["TrAttachmentMasterCidr"] as? String {
            self.trAttachmentMasterCidr = value
        }
        if let value = dict["TrAttachmentMasterZone"] as? String {
            self.trAttachmentMasterZone = value
        }
        if let value = dict["TrAttachmentSlaveCidr"] as? String {
            self.trAttachmentSlaveCidr = value
        }
        if let value = dict["TrAttachmentSlaveZone"] as? String {
            self.trAttachmentSlaveZone = value
        }
        if let value = dict["TransitRouterId"] as? String {
            self.transitRouterId = value
        }
    }
}

public class DescribeTrFirewallsV2DetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTrFirewallsV2DetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTrFirewallsV2DetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTrFirewallsV2ListRequest : Tea.TeaModel {
    public var cenId: String?

    public var currentPage: Int32?

    public var firewallId: String?

    public var firewallName: String?

    public var firewallSwitchStatus: String?

    public var lang: String?

    public var ownerId: String?

    public var pageSize: Int32?

    public var regionNo: String?

    public var routeMode: String?

    public var transitRouterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.firewallName != nil {
            map["FirewallName"] = self.firewallName!
        }
        if self.firewallSwitchStatus != nil {
            map["FirewallSwitchStatus"] = self.firewallSwitchStatus!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.routeMode != nil {
            map["RouteMode"] = self.routeMode!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CenId"] as? String {
            self.cenId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["FirewallName"] as? String {
            self.firewallName = value
        }
        if let value = dict["FirewallSwitchStatus"] as? String {
            self.firewallSwitchStatus = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["RouteMode"] as? String {
            self.routeMode = value
        }
        if let value = dict["TransitRouterId"] as? String {
            self.transitRouterId = value
        }
    }
}

public class DescribeTrFirewallsV2ListResponseBody : Tea.TeaModel {
    public class VpcTrFirewalls : Tea.TeaModel {
        public class AclConfig : Tea.TeaModel {
            public var strictMode: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.strictMode != nil {
                    map["StrictMode"] = self.strictMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["StrictMode"] as? Int32 {
                    self.strictMode = value
                }
            }
        }
        public class IpsConfig : Tea.TeaModel {
            public var basicRules: Int32?

            public var enableAllPatch: Int32?

            public var ruleClass: Int32?

            public var runMode: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.basicRules != nil {
                    map["BasicRules"] = self.basicRules!
                }
                if self.enableAllPatch != nil {
                    map["EnableAllPatch"] = self.enableAllPatch!
                }
                if self.ruleClass != nil {
                    map["RuleClass"] = self.ruleClass!
                }
                if self.runMode != nil {
                    map["RunMode"] = self.runMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BasicRules"] as? Int32 {
                    self.basicRules = value
                }
                if let value = dict["EnableAllPatch"] as? Int32 {
                    self.enableAllPatch = value
                }
                if let value = dict["RuleClass"] as? Int32 {
                    self.ruleClass = value
                }
                if let value = dict["RunMode"] as? Int32 {
                    self.runMode = value
                }
            }
        }
        public class ProtectedResource : Tea.TeaModel {
            public var count: Int32?

            public var ecrList: [String]?

            public var peerTrList: [String]?

            public var vbrList: [String]?

            public var vpcList: [String]?

            public var vpnList: [String]?

            public override init() {
                super.init()
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
                if self.ecrList != nil {
                    map["EcrList"] = self.ecrList!
                }
                if self.peerTrList != nil {
                    map["PeerTrList"] = self.peerTrList!
                }
                if self.vbrList != nil {
                    map["VbrList"] = self.vbrList!
                }
                if self.vpcList != nil {
                    map["VpcList"] = self.vpcList!
                }
                if self.vpnList != nil {
                    map["VpnList"] = self.vpnList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["EcrList"] as? [String] {
                    self.ecrList = value
                }
                if let value = dict["PeerTrList"] as? [String] {
                    self.peerTrList = value
                }
                if let value = dict["VbrList"] as? [String] {
                    self.vbrList = value
                }
                if let value = dict["VpcList"] as? [String] {
                    self.vpcList = value
                }
                if let value = dict["VpnList"] as? [String] {
                    self.vpnList = value
                }
            }
        }
        public class UnprotectedResource : Tea.TeaModel {
            public var count: Int32?

            public var ecrList: [String]?

            public var peerTrList: [String]?

            public var vbrList: [String]?

            public var vpcList: [String]?

            public var vpnList: [String]?

            public override init() {
                super.init()
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
                if self.ecrList != nil {
                    map["EcrList"] = self.ecrList!
                }
                if self.peerTrList != nil {
                    map["PeerTrList"] = self.peerTrList!
                }
                if self.vbrList != nil {
                    map["VbrList"] = self.vbrList!
                }
                if self.vpcList != nil {
                    map["VpcList"] = self.vpcList!
                }
                if self.vpnList != nil {
                    map["VpnList"] = self.vpnList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["EcrList"] as? [String] {
                    self.ecrList = value
                }
                if let value = dict["PeerTrList"] as? [String] {
                    self.peerTrList = value
                }
                if let value = dict["VbrList"] as? [String] {
                    self.vbrList = value
                }
                if let value = dict["VpcList"] as? [String] {
                    self.vpcList = value
                }
                if let value = dict["VpnList"] as? [String] {
                    self.vpnList = value
                }
            }
        }
        public var aclConfig: DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls.AclConfig?

        public var cenId: String?

        public var cenName: String?

        public var cloudFirewallVpcOrderType: String?

        public var firewallId: String?

        public var firewallSwitchStatus: String?

        public var ipsConfig: DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls.IpsConfig?

        public var ownerId: Int64?

        public var precheckStatus: String?

        public var protectedResource: DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls.ProtectedResource?

        public var regionNo: String?

        public var regionStatus: String?

        public var resultCode: String?

        public var routeMode: String?

        public var transitRouterId: String?

        public var unprotectedResource: DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls.UnprotectedResource?

        public var vpcFirewallName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.aclConfig?.validate()
            try self.ipsConfig?.validate()
            try self.protectedResource?.validate()
            try self.unprotectedResource?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclConfig != nil {
                map["AclConfig"] = self.aclConfig?.toMap()
            }
            if self.cenId != nil {
                map["CenId"] = self.cenId!
            }
            if self.cenName != nil {
                map["CenName"] = self.cenName!
            }
            if self.cloudFirewallVpcOrderType != nil {
                map["CloudFirewallVpcOrderType"] = self.cloudFirewallVpcOrderType!
            }
            if self.firewallId != nil {
                map["FirewallId"] = self.firewallId!
            }
            if self.firewallSwitchStatus != nil {
                map["FirewallSwitchStatus"] = self.firewallSwitchStatus!
            }
            if self.ipsConfig != nil {
                map["IpsConfig"] = self.ipsConfig?.toMap()
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.precheckStatus != nil {
                map["PrecheckStatus"] = self.precheckStatus!
            }
            if self.protectedResource != nil {
                map["ProtectedResource"] = self.protectedResource?.toMap()
            }
            if self.regionNo != nil {
                map["RegionNo"] = self.regionNo!
            }
            if self.regionStatus != nil {
                map["RegionStatus"] = self.regionStatus!
            }
            if self.resultCode != nil {
                map["ResultCode"] = self.resultCode!
            }
            if self.routeMode != nil {
                map["RouteMode"] = self.routeMode!
            }
            if self.transitRouterId != nil {
                map["TransitRouterId"] = self.transitRouterId!
            }
            if self.unprotectedResource != nil {
                map["UnprotectedResource"] = self.unprotectedResource?.toMap()
            }
            if self.vpcFirewallName != nil {
                map["VpcFirewallName"] = self.vpcFirewallName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclConfig"] as? [String: Any?] {
                var model = DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls.AclConfig()
                model.fromMap(value)
                self.aclConfig = model
            }
            if let value = dict["CenId"] as? String {
                self.cenId = value
            }
            if let value = dict["CenName"] as? String {
                self.cenName = value
            }
            if let value = dict["CloudFirewallVpcOrderType"] as? String {
                self.cloudFirewallVpcOrderType = value
            }
            if let value = dict["FirewallId"] as? String {
                self.firewallId = value
            }
            if let value = dict["FirewallSwitchStatus"] as? String {
                self.firewallSwitchStatus = value
            }
            if let value = dict["IpsConfig"] as? [String: Any?] {
                var model = DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls.IpsConfig()
                model.fromMap(value)
                self.ipsConfig = model
            }
            if let value = dict["OwnerId"] as? Int64 {
                self.ownerId = value
            }
            if let value = dict["PrecheckStatus"] as? String {
                self.precheckStatus = value
            }
            if let value = dict["ProtectedResource"] as? [String: Any?] {
                var model = DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls.ProtectedResource()
                model.fromMap(value)
                self.protectedResource = model
            }
            if let value = dict["RegionNo"] as? String {
                self.regionNo = value
            }
            if let value = dict["RegionStatus"] as? String {
                self.regionStatus = value
            }
            if let value = dict["ResultCode"] as? String {
                self.resultCode = value
            }
            if let value = dict["RouteMode"] as? String {
                self.routeMode = value
            }
            if let value = dict["TransitRouterId"] as? String {
                self.transitRouterId = value
            }
            if let value = dict["UnprotectedResource"] as? [String: Any?] {
                var model = DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls.UnprotectedResource()
                model.fromMap(value)
                self.unprotectedResource = model
            }
            if let value = dict["VpcFirewallName"] as? String {
                self.vpcFirewallName = value
            }
        }
    }
    public var requestId: String?

    public var totalCount: String?

    public var vpcTrFirewalls: [DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls]?

    public override init() {
        super.init()
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
        if self.vpcTrFirewalls != nil {
            var tmp : [Any] = []
            for k in self.vpcTrFirewalls! {
                tmp.append(k.toMap())
            }
            map["VpcTrFirewalls"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
        if let value = dict["VpcTrFirewalls"] as? [Any?] {
            var tmp : [DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls] = []
            for v in value {
                if v != nil {
                    var model = DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vpcTrFirewalls = tmp
        }
    }
}

public class DescribeTrFirewallsV2ListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTrFirewallsV2ListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTrFirewallsV2ListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTrFirewallsV2RouteListRequest : Tea.TeaModel {
    public var currentPage: String?

    public var firewallId: String?

    public var lang: String?

    public var pageSize: String?

    public var trFirewallRoutePolicyId: String?

    public override init() {
        super.init()
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
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.trFirewallRoutePolicyId != nil {
            map["TrFirewallRoutePolicyId"] = self.trFirewallRoutePolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["TrFirewallRoutePolicyId"] as? String {
            self.trFirewallRoutePolicyId = value
        }
    }
}

public class DescribeTrFirewallsV2RouteListResponseBody : Tea.TeaModel {
    public class FirewallRouteDetailList : Tea.TeaModel {
        public var trFirewallRouteDestination: String?

        public var trFirewallRouteNexthop: String?

        public var trFirewallRoutePolicyId: String?

        public var trFirewallRouteTableId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.trFirewallRouteDestination != nil {
                map["TrFirewallRouteDestination"] = self.trFirewallRouteDestination!
            }
            if self.trFirewallRouteNexthop != nil {
                map["TrFirewallRouteNexthop"] = self.trFirewallRouteNexthop!
            }
            if self.trFirewallRoutePolicyId != nil {
                map["TrFirewallRoutePolicyId"] = self.trFirewallRoutePolicyId!
            }
            if self.trFirewallRouteTableId != nil {
                map["TrFirewallRouteTableId"] = self.trFirewallRouteTableId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TrFirewallRouteDestination"] as? String {
                self.trFirewallRouteDestination = value
            }
            if let value = dict["TrFirewallRouteNexthop"] as? String {
                self.trFirewallRouteNexthop = value
            }
            if let value = dict["TrFirewallRoutePolicyId"] as? String {
                self.trFirewallRoutePolicyId = value
            }
            if let value = dict["TrFirewallRouteTableId"] as? String {
                self.trFirewallRouteTableId = value
            }
        }
    }
    public var firewallRouteDetailList: [DescribeTrFirewallsV2RouteListResponseBody.FirewallRouteDetailList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.firewallRouteDetailList != nil {
            var tmp : [Any] = []
            for k in self.firewallRouteDetailList! {
                tmp.append(k.toMap())
            }
            map["FirewallRouteDetailList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallRouteDetailList"] as? [Any?] {
            var tmp : [DescribeTrFirewallsV2RouteListResponseBody.FirewallRouteDetailList] = []
            for v in value {
                if v != nil {
                    var model = DescribeTrFirewallsV2RouteListResponseBody.FirewallRouteDetailList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.firewallRouteDetailList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeTrFirewallsV2RouteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTrFirewallsV2RouteListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTrFirewallsV2RouteListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserAssetIPTrafficInfoRequest : Tea.TeaModel {
    public var assetIP: String?

    public var lang: String?

    public var trafficTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assetIP != nil {
            map["AssetIP"] = self.assetIP!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.trafficTime != nil {
            map["TrafficTime"] = self.trafficTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetIP"] as? String {
            self.assetIP = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TrafficTime"] as? String {
            self.trafficTime = value
        }
    }
}

public class DescribeUserAssetIPTrafficInfoResponseBody : Tea.TeaModel {
    public var endTime: Int64?

    public var inBps: Int64?

    public var inPps: Int64?

    public var newConn: Int64?

    public var outBps: Int64?

    public var outPps: Int64?

    public var requestId: String?

    public var sessionCount: Int64?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.inBps != nil {
            map["InBps"] = self.inBps!
        }
        if self.inPps != nil {
            map["InPps"] = self.inPps!
        }
        if self.newConn != nil {
            map["NewConn"] = self.newConn!
        }
        if self.outBps != nil {
            map["OutBps"] = self.outBps!
        }
        if self.outPps != nil {
            map["OutPps"] = self.outPps!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sessionCount != nil {
            map["SessionCount"] = self.sessionCount!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InBps"] as? Int64 {
            self.inBps = value
        }
        if let value = dict["InPps"] as? Int64 {
            self.inPps = value
        }
        if let value = dict["NewConn"] as? Int64 {
            self.newConn = value
        }
        if let value = dict["OutBps"] as? Int64 {
            self.outBps = value
        }
        if let value = dict["OutPps"] as? Int64 {
            self.outPps = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SessionCount"] as? Int64 {
            self.sessionCount = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeUserAssetIPTrafficInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserAssetIPTrafficInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUserAssetIPTrafficInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserBuyVersionRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DescribeUserBuyVersionResponseBody : Tea.TeaModel {
    public var aliUid: Int64?

    public var expire: Int64?

    public var instanceId: String?

    public var instanceStatus: String?

    public var internetBandwidth: Int64?

    public var ipNumber: Int64?

    public var logStatus: Bool?

    public var logStorage: Int64?

    public var maxOverflow: Int64?

    public var natBandwidth: Int64?

    public var requestId: String?

    public var startTime: Int64?

    public var userStatus: Bool?

    public var version: Int32?

    public var vpcBandwidth: Int64?

    public var vpcNumber: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.internetBandwidth != nil {
            map["InternetBandwidth"] = self.internetBandwidth!
        }
        if self.ipNumber != nil {
            map["IpNumber"] = self.ipNumber!
        }
        if self.logStatus != nil {
            map["LogStatus"] = self.logStatus!
        }
        if self.logStorage != nil {
            map["LogStorage"] = self.logStorage!
        }
        if self.maxOverflow != nil {
            map["MaxOverflow"] = self.maxOverflow!
        }
        if self.natBandwidth != nil {
            map["NatBandwidth"] = self.natBandwidth!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.userStatus != nil {
            map["UserStatus"] = self.userStatus!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        if self.vpcBandwidth != nil {
            map["VpcBandwidth"] = self.vpcBandwidth!
        }
        if self.vpcNumber != nil {
            map["VpcNumber"] = self.vpcNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["Expire"] as? Int64 {
            self.expire = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
        }
        if let value = dict["InternetBandwidth"] as? Int64 {
            self.internetBandwidth = value
        }
        if let value = dict["IpNumber"] as? Int64 {
            self.ipNumber = value
        }
        if let value = dict["LogStatus"] as? Bool {
            self.logStatus = value
        }
        if let value = dict["LogStorage"] as? Int64 {
            self.logStorage = value
        }
        if let value = dict["MaxOverflow"] as? Int64 {
            self.maxOverflow = value
        }
        if let value = dict["NatBandwidth"] as? Int64 {
            self.natBandwidth = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["UserStatus"] as? Bool {
            self.userStatus = value
        }
        if let value = dict["Version"] as? Int32 {
            self.version = value
        }
        if let value = dict["VpcBandwidth"] as? Int64 {
            self.vpcBandwidth = value
        }
        if let value = dict["VpcNumber"] as? Int64 {
            self.vpcNumber = value
        }
    }
}

public class DescribeUserBuyVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserBuyVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUserBuyVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserIPSWhitelistRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
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
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class DescribeUserIPSWhitelistResponseBody : Tea.TeaModel {
    public class Ipv6Whitelists : Tea.TeaModel {
        public var direction: Int64?

        public var listType: Int64?

        public var listValue: String?

        public var whiteListValue: [String]?

        public var whiteType: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.direction != nil {
                map["Direction"] = self.direction!
            }
            if self.listType != nil {
                map["ListType"] = self.listType!
            }
            if self.listValue != nil {
                map["ListValue"] = self.listValue!
            }
            if self.whiteListValue != nil {
                map["WhiteListValue"] = self.whiteListValue!
            }
            if self.whiteType != nil {
                map["WhiteType"] = self.whiteType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Direction"] as? Int64 {
                self.direction = value
            }
            if let value = dict["ListType"] as? Int64 {
                self.listType = value
            }
            if let value = dict["ListValue"] as? String {
                self.listValue = value
            }
            if let value = dict["WhiteListValue"] as? [String] {
                self.whiteListValue = value
            }
            if let value = dict["WhiteType"] as? Int64 {
                self.whiteType = value
            }
        }
    }
    public class Whitelists : Tea.TeaModel {
        public var direction: Int64?

        public var listType: Int64?

        public var listValue: String?

        public var whiteListValue: [String]?

        public var whiteType: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.direction != nil {
                map["Direction"] = self.direction!
            }
            if self.listType != nil {
                map["ListType"] = self.listType!
            }
            if self.listValue != nil {
                map["ListValue"] = self.listValue!
            }
            if self.whiteListValue != nil {
                map["WhiteListValue"] = self.whiteListValue!
            }
            if self.whiteType != nil {
                map["WhiteType"] = self.whiteType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Direction"] as? Int64 {
                self.direction = value
            }
            if let value = dict["ListType"] as? Int64 {
                self.listType = value
            }
            if let value = dict["ListValue"] as? String {
                self.listValue = value
            }
            if let value = dict["WhiteListValue"] as? [String] {
                self.whiteListValue = value
            }
            if let value = dict["WhiteType"] as? Int64 {
                self.whiteType = value
            }
        }
    }
    public var ipv6Whitelists: [DescribeUserIPSWhitelistResponseBody.Ipv6Whitelists]?

    public var requestId: String?

    public var whitelists: [DescribeUserIPSWhitelistResponseBody.Whitelists]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipv6Whitelists != nil {
            var tmp : [Any] = []
            for k in self.ipv6Whitelists! {
                tmp.append(k.toMap())
            }
            map["Ipv6Whitelists"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.whitelists != nil {
            var tmp : [Any] = []
            for k in self.whitelists! {
                tmp.append(k.toMap())
            }
            map["Whitelists"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ipv6Whitelists"] as? [Any?] {
            var tmp : [DescribeUserIPSWhitelistResponseBody.Ipv6Whitelists] = []
            for v in value {
                if v != nil {
                    var model = DescribeUserIPSWhitelistResponseBody.Ipv6Whitelists()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipv6Whitelists = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Whitelists"] as? [Any?] {
            var tmp : [DescribeUserIPSWhitelistResponseBody.Whitelists] = []
            for v in value {
                if v != nil {
                    var model = DescribeUserIPSWhitelistResponseBody.Whitelists()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.whitelists = tmp
        }
    }
}

public class DescribeUserIPSWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserIPSWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUserIPSWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVpcFirewallAclGroupListRequest : Tea.TeaModel {
    public var currentPage: String?

    public var firewallConfigureStatus: String?

    public var firewallId: String?

    public var lang: String?

    public var pageSize: String?

    public override init() {
        super.init()
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
        if self.firewallConfigureStatus != nil {
            map["FirewallConfigureStatus"] = self.firewallConfigureStatus!
        }
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["FirewallConfigureStatus"] as? String {
            self.firewallConfigureStatus = value
        }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
    }
}

public class DescribeVpcFirewallAclGroupListResponseBody : Tea.TeaModel {
    public class AclGroupList : Tea.TeaModel {
        public class AclConfig : Tea.TeaModel {
            public var strictMode: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.strictMode != nil {
                    map["StrictMode"] = self.strictMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["StrictMode"] as? Int32 {
                    self.strictMode = value
                }
            }
        }
        public var aclConfig: DescribeVpcFirewallAclGroupListResponseBody.AclGroupList.AclConfig?

        public var aclGroupId: String?

        public var aclGroupName: String?

        public var aclRuleCount: Int32?

        public var isDefault: Bool?

        public var memberUid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.aclConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclConfig != nil {
                map["AclConfig"] = self.aclConfig?.toMap()
            }
            if self.aclGroupId != nil {
                map["AclGroupId"] = self.aclGroupId!
            }
            if self.aclGroupName != nil {
                map["AclGroupName"] = self.aclGroupName!
            }
            if self.aclRuleCount != nil {
                map["AclRuleCount"] = self.aclRuleCount!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclConfig"] as? [String: Any?] {
                var model = DescribeVpcFirewallAclGroupListResponseBody.AclGroupList.AclConfig()
                model.fromMap(value)
                self.aclConfig = model
            }
            if let value = dict["AclGroupId"] as? String {
                self.aclGroupId = value
            }
            if let value = dict["AclGroupName"] as? String {
                self.aclGroupName = value
            }
            if let value = dict["AclRuleCount"] as? Int32 {
                self.aclRuleCount = value
            }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["MemberUid"] as? String {
                self.memberUid = value
            }
        }
    }
    public var aclGroupList: [DescribeVpcFirewallAclGroupListResponseBody.AclGroupList]?

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
        if self.aclGroupList != nil {
            var tmp : [Any] = []
            for k in self.aclGroupList! {
                tmp.append(k.toMap())
            }
            map["AclGroupList"] = tmp
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
        if let value = dict["AclGroupList"] as? [Any?] {
            var tmp : [DescribeVpcFirewallAclGroupListResponseBody.AclGroupList] = []
            for v in value {
                if v != nil {
                    var model = DescribeVpcFirewallAclGroupListResponseBody.AclGroupList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.aclGroupList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeVpcFirewallAclGroupListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVpcFirewallAclGroupListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVpcFirewallAclGroupListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVpcFirewallCenDetailRequest : Tea.TeaModel {
    public var lang: String?

    public var networkInstanceId: String?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
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
        if self.networkInstanceId != nil {
            map["NetworkInstanceId"] = self.networkInstanceId!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NetworkInstanceId"] as? String {
            self.networkInstanceId = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class DescribeVpcFirewallCenDetailResponseBody : Tea.TeaModel {
    public class FirewallVpc : Tea.TeaModel {
        public var allowConfiguration: Int32?

        public var standbyZoneId: String?

        public var vpcCidr: String?

        public var vpcId: String?

        public var vswitchCidr: String?

        public var vswitchId: String?

        public var vswitchZoneId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowConfiguration != nil {
                map["AllowConfiguration"] = self.allowConfiguration!
            }
            if self.standbyZoneId != nil {
                map["StandbyZoneId"] = self.standbyZoneId!
            }
            if self.vpcCidr != nil {
                map["VpcCidr"] = self.vpcCidr!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vswitchCidr != nil {
                map["VswitchCidr"] = self.vswitchCidr!
            }
            if self.vswitchId != nil {
                map["VswitchId"] = self.vswitchId!
            }
            if self.vswitchZoneId != nil {
                map["VswitchZoneId"] = self.vswitchZoneId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowConfiguration"] as? Int32 {
                self.allowConfiguration = value
            }
            if let value = dict["StandbyZoneId"] as? String {
                self.standbyZoneId = value
            }
            if let value = dict["VpcCidr"] as? String {
                self.vpcCidr = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VswitchCidr"] as? String {
                self.vswitchCidr = value
            }
            if let value = dict["VswitchId"] as? String {
                self.vswitchId = value
            }
            if let value = dict["VswitchZoneId"] as? String {
                self.vswitchZoneId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public class LocalVpc : Tea.TeaModel {
        public class EniList : Tea.TeaModel {
            public var eniId: String?

            public var eniPrivateIpAddress: String?

            public var eniVSwitchId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eniId != nil {
                    map["EniId"] = self.eniId!
                }
                if self.eniPrivateIpAddress != nil {
                    map["EniPrivateIpAddress"] = self.eniPrivateIpAddress!
                }
                if self.eniVSwitchId != nil {
                    map["EniVSwitchId"] = self.eniVSwitchId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EniId"] as? String {
                    self.eniId = value
                }
                if let value = dict["EniPrivateIpAddress"] as? String {
                    self.eniPrivateIpAddress = value
                }
                if let value = dict["EniVSwitchId"] as? String {
                    self.eniVSwitchId = value
                }
            }
        }
        public class VpcCidrTableList : Tea.TeaModel {
            public class RouteEntryList : Tea.TeaModel {
                public var destinationCidr: String?

                public var nextHopInstanceId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.destinationCidr != nil {
                        map["DestinationCidr"] = self.destinationCidr!
                    }
                    if self.nextHopInstanceId != nil {
                        map["NextHopInstanceId"] = self.nextHopInstanceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DestinationCidr"] as? String {
                        self.destinationCidr = value
                    }
                    if let value = dict["NextHopInstanceId"] as? String {
                        self.nextHopInstanceId = value
                    }
                }
            }
            public var routeEntryList: [DescribeVpcFirewallCenDetailResponseBody.LocalVpc.VpcCidrTableList.RouteEntryList]?

            public var routeTableId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.routeEntryList != nil {
                    var tmp : [Any] = []
                    for k in self.routeEntryList! {
                        tmp.append(k.toMap())
                    }
                    map["RouteEntryList"] = tmp
                }
                if self.routeTableId != nil {
                    map["RouteTableId"] = self.routeTableId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RouteEntryList"] as? [Any?] {
                    var tmp : [DescribeVpcFirewallCenDetailResponseBody.LocalVpc.VpcCidrTableList.RouteEntryList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeVpcFirewallCenDetailResponseBody.LocalVpc.VpcCidrTableList.RouteEntryList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.routeEntryList = tmp
                }
                if let value = dict["RouteTableId"] as? String {
                    self.routeTableId = value
                }
            }
        }
        public var attachmentId: String?

        public var attachmentName: String?

        public var defendCidrList: [String]?

        public var eniList: [DescribeVpcFirewallCenDetailResponseBody.LocalVpc.EniList]?

        public var manualVSwitchId: String?

        public var networkInstanceId: String?

        public var networkInstanceName: String?

        public var networkInstanceType: String?

        public var ownerId: String?

        public var regionNo: String?

        public var routeMode: String?

        public var supportManualMode: String?

        public var transitRouterId: String?

        public var transitRouterType: String?

        public var vpcCidrTableList: [DescribeVpcFirewallCenDetailResponseBody.LocalVpc.VpcCidrTableList]?

        public var vpcId: String?

        public var vpcName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachmentId != nil {
                map["AttachmentId"] = self.attachmentId!
            }
            if self.attachmentName != nil {
                map["AttachmentName"] = self.attachmentName!
            }
            if self.defendCidrList != nil {
                map["DefendCidrList"] = self.defendCidrList!
            }
            if self.eniList != nil {
                var tmp : [Any] = []
                for k in self.eniList! {
                    tmp.append(k.toMap())
                }
                map["EniList"] = tmp
            }
            if self.manualVSwitchId != nil {
                map["ManualVSwitchId"] = self.manualVSwitchId!
            }
            if self.networkInstanceId != nil {
                map["NetworkInstanceId"] = self.networkInstanceId!
            }
            if self.networkInstanceName != nil {
                map["NetworkInstanceName"] = self.networkInstanceName!
            }
            if self.networkInstanceType != nil {
                map["NetworkInstanceType"] = self.networkInstanceType!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.regionNo != nil {
                map["RegionNo"] = self.regionNo!
            }
            if self.routeMode != nil {
                map["RouteMode"] = self.routeMode!
            }
            if self.supportManualMode != nil {
                map["SupportManualMode"] = self.supportManualMode!
            }
            if self.transitRouterId != nil {
                map["TransitRouterId"] = self.transitRouterId!
            }
            if self.transitRouterType != nil {
                map["TransitRouterType"] = self.transitRouterType!
            }
            if self.vpcCidrTableList != nil {
                var tmp : [Any] = []
                for k in self.vpcCidrTableList! {
                    tmp.append(k.toMap())
                }
                map["VpcCidrTableList"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcName != nil {
                map["VpcName"] = self.vpcName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachmentId"] as? String {
                self.attachmentId = value
            }
            if let value = dict["AttachmentName"] as? String {
                self.attachmentName = value
            }
            if let value = dict["DefendCidrList"] as? [String] {
                self.defendCidrList = value
            }
            if let value = dict["EniList"] as? [Any?] {
                var tmp : [DescribeVpcFirewallCenDetailResponseBody.LocalVpc.EniList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVpcFirewallCenDetailResponseBody.LocalVpc.EniList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.eniList = tmp
            }
            if let value = dict["ManualVSwitchId"] as? String {
                self.manualVSwitchId = value
            }
            if let value = dict["NetworkInstanceId"] as? String {
                self.networkInstanceId = value
            }
            if let value = dict["NetworkInstanceName"] as? String {
                self.networkInstanceName = value
            }
            if let value = dict["NetworkInstanceType"] as? String {
                self.networkInstanceType = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["RegionNo"] as? String {
                self.regionNo = value
            }
            if let value = dict["RouteMode"] as? String {
                self.routeMode = value
            }
            if let value = dict["SupportManualMode"] as? String {
                self.supportManualMode = value
            }
            if let value = dict["TransitRouterId"] as? String {
                self.transitRouterId = value
            }
            if let value = dict["TransitRouterType"] as? String {
                self.transitRouterType = value
            }
            if let value = dict["VpcCidrTableList"] as? [Any?] {
                var tmp : [DescribeVpcFirewallCenDetailResponseBody.LocalVpc.VpcCidrTableList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVpcFirewallCenDetailResponseBody.LocalVpc.VpcCidrTableList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vpcCidrTableList = tmp
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcName"] as? String {
                self.vpcName = value
            }
        }
    }
    public var connectType: String?

    public var firewallSwitchStatus: String?

    public var firewallVpc: DescribeVpcFirewallCenDetailResponseBody.FirewallVpc?

    public var localVpc: DescribeVpcFirewallCenDetailResponseBody.LocalVpc?

    public var requestId: String?

    public var vpcFirewallId: String?

    public var vpcFirewallName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.firewallVpc?.validate()
        try self.localVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectType != nil {
            map["ConnectType"] = self.connectType!
        }
        if self.firewallSwitchStatus != nil {
            map["FirewallSwitchStatus"] = self.firewallSwitchStatus!
        }
        if self.firewallVpc != nil {
            map["FirewallVpc"] = self.firewallVpc?.toMap()
        }
        if self.localVpc != nil {
            map["LocalVpc"] = self.localVpc?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        if self.vpcFirewallName != nil {
            map["VpcFirewallName"] = self.vpcFirewallName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConnectType"] as? String {
            self.connectType = value
        }
        if let value = dict["FirewallSwitchStatus"] as? String {
            self.firewallSwitchStatus = value
        }
        if let value = dict["FirewallVpc"] as? [String: Any?] {
            var model = DescribeVpcFirewallCenDetailResponseBody.FirewallVpc()
            model.fromMap(value)
            self.firewallVpc = model
        }
        if let value = dict["LocalVpc"] as? [String: Any?] {
            var model = DescribeVpcFirewallCenDetailResponseBody.LocalVpc()
            model.fromMap(value)
            self.localVpc = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
        if let value = dict["VpcFirewallName"] as? String {
            self.vpcFirewallName = value
        }
    }
}

public class DescribeVpcFirewallCenDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVpcFirewallCenDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVpcFirewallCenDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVpcFirewallCenListRequest : Tea.TeaModel {
    public var cenId: String?

    public var currentPage: String?

    public var firewallSwitchStatus: String?

    public var lang: String?

    public var memberUid: String?

    public var networkInstanceId: String?

    public var ownerId: String?

    public var pageSize: String?

    public var regionNo: String?

    public var routeMode: String?

    public var transitRouterType: String?

    public var vpcFirewallId: String?

    public var vpcFirewallName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.firewallSwitchStatus != nil {
            map["FirewallSwitchStatus"] = self.firewallSwitchStatus!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.networkInstanceId != nil {
            map["NetworkInstanceId"] = self.networkInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.routeMode != nil {
            map["RouteMode"] = self.routeMode!
        }
        if self.transitRouterType != nil {
            map["TransitRouterType"] = self.transitRouterType!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        if self.vpcFirewallName != nil {
            map["VpcFirewallName"] = self.vpcFirewallName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CenId"] as? String {
            self.cenId = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["FirewallSwitchStatus"] as? String {
            self.firewallSwitchStatus = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["NetworkInstanceId"] as? String {
            self.networkInstanceId = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["RouteMode"] as? String {
            self.routeMode = value
        }
        if let value = dict["TransitRouterType"] as? String {
            self.transitRouterType = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
        if let value = dict["VpcFirewallName"] as? String {
            self.vpcFirewallName = value
        }
    }
}

public class DescribeVpcFirewallCenListResponseBody : Tea.TeaModel {
    public class VpcFirewalls : Tea.TeaModel {
        public class AclConfig : Tea.TeaModel {
            public var strictMode: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.strictMode != nil {
                    map["StrictMode"] = self.strictMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["StrictMode"] as? Int32 {
                    self.strictMode = value
                }
            }
        }
        public class IpsConfig : Tea.TeaModel {
            public var basicRules: Int32?

            public var enableAllPatch: Int32?

            public var ruleClass: Int32?

            public var runMode: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.basicRules != nil {
                    map["BasicRules"] = self.basicRules!
                }
                if self.enableAllPatch != nil {
                    map["EnableAllPatch"] = self.enableAllPatch!
                }
                if self.ruleClass != nil {
                    map["RuleClass"] = self.ruleClass!
                }
                if self.runMode != nil {
                    map["RunMode"] = self.runMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BasicRules"] as? Int32 {
                    self.basicRules = value
                }
                if let value = dict["EnableAllPatch"] as? Int32 {
                    self.enableAllPatch = value
                }
                if let value = dict["RuleClass"] as? Int32 {
                    self.ruleClass = value
                }
                if let value = dict["RunMode"] as? Int32 {
                    self.runMode = value
                }
            }
        }
        public class LocalVpc : Tea.TeaModel {
            public class VpcCidrTableList : Tea.TeaModel {
                public class RouteEntryList : Tea.TeaModel {
                    public var destinationCidr: String?

                    public var nextHopInstanceId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.destinationCidr != nil {
                            map["DestinationCidr"] = self.destinationCidr!
                        }
                        if self.nextHopInstanceId != nil {
                            map["NextHopInstanceId"] = self.nextHopInstanceId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DestinationCidr"] as? String {
                            self.destinationCidr = value
                        }
                        if let value = dict["NextHopInstanceId"] as? String {
                            self.nextHopInstanceId = value
                        }
                    }
                }
                public var routeEntryList: [DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList.RouteEntryList]?

                public var routeTableId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.routeEntryList != nil {
                        var tmp : [Any] = []
                        for k in self.routeEntryList! {
                            tmp.append(k.toMap())
                        }
                        map["RouteEntryList"] = tmp
                    }
                    if self.routeTableId != nil {
                        map["RouteTableId"] = self.routeTableId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RouteEntryList"] as? [Any?] {
                        var tmp : [DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList.RouteEntryList] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList.RouteEntryList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.routeEntryList = tmp
                    }
                    if let value = dict["RouteTableId"] as? String {
                        self.routeTableId = value
                    }
                }
            }
            public var authorizationStatus: String?

            public var defendCidrList: [String]?

            public var manualVSwitchId: String?

            public var networkInstanceId: String?

            public var networkInstanceName: String?

            public var networkInstanceType: String?

            public var ownerId: Int64?

            public var regionNo: String?

            public var routeMode: String?

            public var supportManualMode: String?

            public var transitRouterType: String?

            public var vpcCidrTableList: [DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList]?

            public var vpcId: String?

            public var vpcName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authorizationStatus != nil {
                    map["AuthorizationStatus"] = self.authorizationStatus!
                }
                if self.defendCidrList != nil {
                    map["DefendCidrList"] = self.defendCidrList!
                }
                if self.manualVSwitchId != nil {
                    map["ManualVSwitchId"] = self.manualVSwitchId!
                }
                if self.networkInstanceId != nil {
                    map["NetworkInstanceId"] = self.networkInstanceId!
                }
                if self.networkInstanceName != nil {
                    map["NetworkInstanceName"] = self.networkInstanceName!
                }
                if self.networkInstanceType != nil {
                    map["NetworkInstanceType"] = self.networkInstanceType!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.regionNo != nil {
                    map["RegionNo"] = self.regionNo!
                }
                if self.routeMode != nil {
                    map["RouteMode"] = self.routeMode!
                }
                if self.supportManualMode != nil {
                    map["SupportManualMode"] = self.supportManualMode!
                }
                if self.transitRouterType != nil {
                    map["TransitRouterType"] = self.transitRouterType!
                }
                if self.vpcCidrTableList != nil {
                    var tmp : [Any] = []
                    for k in self.vpcCidrTableList! {
                        tmp.append(k.toMap())
                    }
                    map["VpcCidrTableList"] = tmp
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpcName != nil {
                    map["VpcName"] = self.vpcName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthorizationStatus"] as? String {
                    self.authorizationStatus = value
                }
                if let value = dict["DefendCidrList"] as? [String] {
                    self.defendCidrList = value
                }
                if let value = dict["ManualVSwitchId"] as? String {
                    self.manualVSwitchId = value
                }
                if let value = dict["NetworkInstanceId"] as? String {
                    self.networkInstanceId = value
                }
                if let value = dict["NetworkInstanceName"] as? String {
                    self.networkInstanceName = value
                }
                if let value = dict["NetworkInstanceType"] as? String {
                    self.networkInstanceType = value
                }
                if let value = dict["OwnerId"] as? Int64 {
                    self.ownerId = value
                }
                if let value = dict["RegionNo"] as? String {
                    self.regionNo = value
                }
                if let value = dict["RouteMode"] as? String {
                    self.routeMode = value
                }
                if let value = dict["SupportManualMode"] as? String {
                    self.supportManualMode = value
                }
                if let value = dict["TransitRouterType"] as? String {
                    self.transitRouterType = value
                }
                if let value = dict["VpcCidrTableList"] as? [Any?] {
                    var tmp : [DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.vpcCidrTableList = tmp
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VpcName"] as? String {
                    self.vpcName = value
                }
            }
        }
        public var aclConfig: DescribeVpcFirewallCenListResponseBody.VpcFirewalls.AclConfig?

        public var cenId: String?

        public var cenName: String?

        public var connectType: String?

        public var firewallSwitchStatus: String?

        public var ipsConfig: DescribeVpcFirewallCenListResponseBody.VpcFirewalls.IpsConfig?

        public var localVpc: DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc?

        public var memberUid: String?

        public var precheckStatus: String?

        public var regionStatus: String?

        public var resultCode: String?

        public var vpcFirewallId: String?

        public var vpcFirewallName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.aclConfig?.validate()
            try self.ipsConfig?.validate()
            try self.localVpc?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclConfig != nil {
                map["AclConfig"] = self.aclConfig?.toMap()
            }
            if self.cenId != nil {
                map["CenId"] = self.cenId!
            }
            if self.cenName != nil {
                map["CenName"] = self.cenName!
            }
            if self.connectType != nil {
                map["ConnectType"] = self.connectType!
            }
            if self.firewallSwitchStatus != nil {
                map["FirewallSwitchStatus"] = self.firewallSwitchStatus!
            }
            if self.ipsConfig != nil {
                map["IpsConfig"] = self.ipsConfig?.toMap()
            }
            if self.localVpc != nil {
                map["LocalVpc"] = self.localVpc?.toMap()
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.precheckStatus != nil {
                map["PrecheckStatus"] = self.precheckStatus!
            }
            if self.regionStatus != nil {
                map["RegionStatus"] = self.regionStatus!
            }
            if self.resultCode != nil {
                map["ResultCode"] = self.resultCode!
            }
            if self.vpcFirewallId != nil {
                map["VpcFirewallId"] = self.vpcFirewallId!
            }
            if self.vpcFirewallName != nil {
                map["VpcFirewallName"] = self.vpcFirewallName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclConfig"] as? [String: Any?] {
                var model = DescribeVpcFirewallCenListResponseBody.VpcFirewalls.AclConfig()
                model.fromMap(value)
                self.aclConfig = model
            }
            if let value = dict["CenId"] as? String {
                self.cenId = value
            }
            if let value = dict["CenName"] as? String {
                self.cenName = value
            }
            if let value = dict["ConnectType"] as? String {
                self.connectType = value
            }
            if let value = dict["FirewallSwitchStatus"] as? String {
                self.firewallSwitchStatus = value
            }
            if let value = dict["IpsConfig"] as? [String: Any?] {
                var model = DescribeVpcFirewallCenListResponseBody.VpcFirewalls.IpsConfig()
                model.fromMap(value)
                self.ipsConfig = model
            }
            if let value = dict["LocalVpc"] as? [String: Any?] {
                var model = DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc()
                model.fromMap(value)
                self.localVpc = model
            }
            if let value = dict["MemberUid"] as? String {
                self.memberUid = value
            }
            if let value = dict["PrecheckStatus"] as? String {
                self.precheckStatus = value
            }
            if let value = dict["RegionStatus"] as? String {
                self.regionStatus = value
            }
            if let value = dict["ResultCode"] as? String {
                self.resultCode = value
            }
            if let value = dict["VpcFirewallId"] as? String {
                self.vpcFirewallId = value
            }
            if let value = dict["VpcFirewallName"] as? String {
                self.vpcFirewallName = value
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int32?

    public var vpcFirewalls: [DescribeVpcFirewallCenListResponseBody.VpcFirewalls]?

    public override init() {
        super.init()
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
        if self.vpcFirewalls != nil {
            var tmp : [Any] = []
            for k in self.vpcFirewalls! {
                tmp.append(k.toMap())
            }
            map["VpcFirewalls"] = tmp
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
        if let value = dict["VpcFirewalls"] as? [Any?] {
            var tmp : [DescribeVpcFirewallCenListResponseBody.VpcFirewalls] = []
            for v in value {
                if v != nil {
                    var model = DescribeVpcFirewallCenListResponseBody.VpcFirewalls()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vpcFirewalls = tmp
        }
    }
}

public class DescribeVpcFirewallCenListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVpcFirewallCenListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVpcFirewallCenListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVpcFirewallControlPolicyRequest : Tea.TeaModel {
    public var aclAction: String?

    public var aclUuid: String?

    public var currentPage: String?

    public var description_: String?

    public var destination: String?

    public var lang: String?

    public var memberUid: String?

    public var pageSize: String?

    public var proto: String?

    public var release: String?

    public var repeatType: String?

    public var source: String?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclAction != nil {
            map["AclAction"] = self.aclAction!
        }
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.proto != nil {
            map["Proto"] = self.proto!
        }
        if self.release != nil {
            map["Release"] = self.release!
        }
        if self.repeatType != nil {
            map["RepeatType"] = self.repeatType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclAction"] as? String {
            self.aclAction = value
        }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Destination"] as? String {
            self.destination = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Proto"] as? String {
            self.proto = value
        }
        if let value = dict["Release"] as? String {
            self.release = value
        }
        if let value = dict["RepeatType"] as? String {
            self.repeatType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class DescribeVpcFirewallControlPolicyResponseBody : Tea.TeaModel {
    public class Policys : Tea.TeaModel {
        public var aclAction: String?

        public var aclUuid: String?

        public var applicationId: String?

        public var applicationName: String?

        public var applicationNameList: [String]?

        public var createTime: Int64?

        public var description_: String?

        public var destPort: String?

        public var destPortGroup: String?

        public var destPortGroupPorts: [String]?

        public var destPortType: String?

        public var destination: String?

        public var destinationGroupCidrs: [String]?

        public var destinationGroupType: String?

        public var destinationType: String?

        public var domainResolveType: String?

        public var endTime: Int64?

        public var hitLastTime: Int64?

        public var hitTimes: Int64?

        public var memberUid: String?

        public var modifyTime: Int64?

        public var order: Int32?

        public var proto: String?

        public var release: String?

        public var repeatDays: [Int64]?

        public var repeatEndTime: String?

        public var repeatStartTime: String?

        public var repeatType: String?

        public var source: String?

        public var sourceGroupCidrs: [String]?

        public var sourceGroupType: String?

        public var sourceType: String?

        public var spreadCnt: Int64?

        public var startTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclAction != nil {
                map["AclAction"] = self.aclAction!
            }
            if self.aclUuid != nil {
                map["AclUuid"] = self.aclUuid!
            }
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
            }
            if self.applicationNameList != nil {
                map["ApplicationNameList"] = self.applicationNameList!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destPort != nil {
                map["DestPort"] = self.destPort!
            }
            if self.destPortGroup != nil {
                map["DestPortGroup"] = self.destPortGroup!
            }
            if self.destPortGroupPorts != nil {
                map["DestPortGroupPorts"] = self.destPortGroupPorts!
            }
            if self.destPortType != nil {
                map["DestPortType"] = self.destPortType!
            }
            if self.destination != nil {
                map["Destination"] = self.destination!
            }
            if self.destinationGroupCidrs != nil {
                map["DestinationGroupCidrs"] = self.destinationGroupCidrs!
            }
            if self.destinationGroupType != nil {
                map["DestinationGroupType"] = self.destinationGroupType!
            }
            if self.destinationType != nil {
                map["DestinationType"] = self.destinationType!
            }
            if self.domainResolveType != nil {
                map["DomainResolveType"] = self.domainResolveType!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.hitLastTime != nil {
                map["HitLastTime"] = self.hitLastTime!
            }
            if self.hitTimes != nil {
                map["HitTimes"] = self.hitTimes!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.order != nil {
                map["Order"] = self.order!
            }
            if self.proto != nil {
                map["Proto"] = self.proto!
            }
            if self.release != nil {
                map["Release"] = self.release!
            }
            if self.repeatDays != nil {
                map["RepeatDays"] = self.repeatDays!
            }
            if self.repeatEndTime != nil {
                map["RepeatEndTime"] = self.repeatEndTime!
            }
            if self.repeatStartTime != nil {
                map["RepeatStartTime"] = self.repeatStartTime!
            }
            if self.repeatType != nil {
                map["RepeatType"] = self.repeatType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceGroupCidrs != nil {
                map["SourceGroupCidrs"] = self.sourceGroupCidrs!
            }
            if self.sourceGroupType != nil {
                map["SourceGroupType"] = self.sourceGroupType!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.spreadCnt != nil {
                map["SpreadCnt"] = self.spreadCnt!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclAction"] as? String {
                self.aclAction = value
            }
            if let value = dict["AclUuid"] as? String {
                self.aclUuid = value
            }
            if let value = dict["ApplicationId"] as? String {
                self.applicationId = value
            }
            if let value = dict["ApplicationName"] as? String {
                self.applicationName = value
            }
            if let value = dict["ApplicationNameList"] as? [String] {
                self.applicationNameList = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DestPort"] as? String {
                self.destPort = value
            }
            if let value = dict["DestPortGroup"] as? String {
                self.destPortGroup = value
            }
            if let value = dict["DestPortGroupPorts"] as? [String] {
                self.destPortGroupPorts = value
            }
            if let value = dict["DestPortType"] as? String {
                self.destPortType = value
            }
            if let value = dict["Destination"] as? String {
                self.destination = value
            }
            if let value = dict["DestinationGroupCidrs"] as? [String] {
                self.destinationGroupCidrs = value
            }
            if let value = dict["DestinationGroupType"] as? String {
                self.destinationGroupType = value
            }
            if let value = dict["DestinationType"] as? String {
                self.destinationType = value
            }
            if let value = dict["DomainResolveType"] as? String {
                self.domainResolveType = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["HitLastTime"] as? Int64 {
                self.hitLastTime = value
            }
            if let value = dict["HitTimes"] as? Int64 {
                self.hitTimes = value
            }
            if let value = dict["MemberUid"] as? String {
                self.memberUid = value
            }
            if let value = dict["ModifyTime"] as? Int64 {
                self.modifyTime = value
            }
            if let value = dict["Order"] as? Int32 {
                self.order = value
            }
            if let value = dict["Proto"] as? String {
                self.proto = value
            }
            if let value = dict["Release"] as? String {
                self.release = value
            }
            if let value = dict["RepeatDays"] as? [Int64] {
                self.repeatDays = value
            }
            if let value = dict["RepeatEndTime"] as? String {
                self.repeatEndTime = value
            }
            if let value = dict["RepeatStartTime"] as? String {
                self.repeatStartTime = value
            }
            if let value = dict["RepeatType"] as? String {
                self.repeatType = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceGroupCidrs"] as? [String] {
                self.sourceGroupCidrs = value
            }
            if let value = dict["SourceGroupType"] as? String {
                self.sourceGroupType = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["SpreadCnt"] as? Int64 {
                self.spreadCnt = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
        }
    }
    public var policys: [DescribeVpcFirewallControlPolicyResponseBody.Policys]?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policys != nil {
            var tmp : [Any] = []
            for k in self.policys! {
                tmp.append(k.toMap())
            }
            map["Policys"] = tmp
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
        if let value = dict["Policys"] as? [Any?] {
            var tmp : [DescribeVpcFirewallControlPolicyResponseBody.Policys] = []
            for v in value {
                if v != nil {
                    var model = DescribeVpcFirewallControlPolicyResponseBody.Policys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policys = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeVpcFirewallControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVpcFirewallControlPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVpcFirewallControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVpcFirewallDefaultIPSConfigRequest : Tea.TeaModel {
    public var memberUid: String?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class DescribeVpcFirewallDefaultIPSConfigResponseBody : Tea.TeaModel {
    public var basicRules: Int32?

    public var enableAllPatch: Int32?

    public var requestId: String?

    public var ruleClass: Int32?

    public var runMode: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basicRules != nil {
            map["BasicRules"] = self.basicRules!
        }
        if self.enableAllPatch != nil {
            map["EnableAllPatch"] = self.enableAllPatch!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleClass != nil {
            map["RuleClass"] = self.ruleClass!
        }
        if self.runMode != nil {
            map["RunMode"] = self.runMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BasicRules"] as? Int32 {
            self.basicRules = value
        }
        if let value = dict["EnableAllPatch"] as? Int32 {
            self.enableAllPatch = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleClass"] as? Int32 {
            self.ruleClass = value
        }
        if let value = dict["RunMode"] as? Int32 {
            self.runMode = value
        }
    }
}

public class DescribeVpcFirewallDefaultIPSConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVpcFirewallDefaultIPSConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVpcFirewallDefaultIPSConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVpcFirewallDetailRequest : Tea.TeaModel {
    public var lang: String?

    public var localVpcId: String?

    public var peerVpcId: String?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
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
        if self.localVpcId != nil {
            map["LocalVpcId"] = self.localVpcId!
        }
        if self.peerVpcId != nil {
            map["PeerVpcId"] = self.peerVpcId!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LocalVpcId"] as? String {
            self.localVpcId = value
        }
        if let value = dict["PeerVpcId"] as? String {
            self.peerVpcId = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class DescribeVpcFirewallDetailResponseBody : Tea.TeaModel {
    public class LocalVpc : Tea.TeaModel {
        public class VpcCidrTableList : Tea.TeaModel {
            public class RouteEntryList : Tea.TeaModel {
                public var destinationCidr: String?

                public var nextHopInstanceId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.destinationCidr != nil {
                        map["DestinationCidr"] = self.destinationCidr!
                    }
                    if self.nextHopInstanceId != nil {
                        map["NextHopInstanceId"] = self.nextHopInstanceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DestinationCidr"] as? String {
                        self.destinationCidr = value
                    }
                    if let value = dict["NextHopInstanceId"] as? String {
                        self.nextHopInstanceId = value
                    }
                }
            }
            public var routeEntryList: [DescribeVpcFirewallDetailResponseBody.LocalVpc.VpcCidrTableList.RouteEntryList]?

            public var routeTableId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.routeEntryList != nil {
                    var tmp : [Any] = []
                    for k in self.routeEntryList! {
                        tmp.append(k.toMap())
                    }
                    map["RouteEntryList"] = tmp
                }
                if self.routeTableId != nil {
                    map["RouteTableId"] = self.routeTableId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RouteEntryList"] as? [Any?] {
                    var tmp : [DescribeVpcFirewallDetailResponseBody.LocalVpc.VpcCidrTableList.RouteEntryList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeVpcFirewallDetailResponseBody.LocalVpc.VpcCidrTableList.RouteEntryList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.routeEntryList = tmp
                }
                if let value = dict["RouteTableId"] as? String {
                    self.routeTableId = value
                }
            }
        }
        public var eniId: String?

        public var eniPrivateIpAddress: String?

        public var regionNo: String?

        public var routerInterfaceId: String?

        public var vpcCidrTableList: [DescribeVpcFirewallDetailResponseBody.LocalVpc.VpcCidrTableList]?

        public var vpcId: String?

        public var vpcName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eniId != nil {
                map["EniId"] = self.eniId!
            }
            if self.eniPrivateIpAddress != nil {
                map["EniPrivateIpAddress"] = self.eniPrivateIpAddress!
            }
            if self.regionNo != nil {
                map["RegionNo"] = self.regionNo!
            }
            if self.routerInterfaceId != nil {
                map["RouterInterfaceId"] = self.routerInterfaceId!
            }
            if self.vpcCidrTableList != nil {
                var tmp : [Any] = []
                for k in self.vpcCidrTableList! {
                    tmp.append(k.toMap())
                }
                map["VpcCidrTableList"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcName != nil {
                map["VpcName"] = self.vpcName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EniId"] as? String {
                self.eniId = value
            }
            if let value = dict["EniPrivateIpAddress"] as? String {
                self.eniPrivateIpAddress = value
            }
            if let value = dict["RegionNo"] as? String {
                self.regionNo = value
            }
            if let value = dict["RouterInterfaceId"] as? String {
                self.routerInterfaceId = value
            }
            if let value = dict["VpcCidrTableList"] as? [Any?] {
                var tmp : [DescribeVpcFirewallDetailResponseBody.LocalVpc.VpcCidrTableList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVpcFirewallDetailResponseBody.LocalVpc.VpcCidrTableList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vpcCidrTableList = tmp
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcName"] as? String {
                self.vpcName = value
            }
        }
    }
    public class PeerVpc : Tea.TeaModel {
        public class VpcCidrTableList : Tea.TeaModel {
            public class RouteEntryList : Tea.TeaModel {
                public var destinationCidr: String?

                public var nextHopInstanceId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.destinationCidr != nil {
                        map["DestinationCidr"] = self.destinationCidr!
                    }
                    if self.nextHopInstanceId != nil {
                        map["NextHopInstanceId"] = self.nextHopInstanceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DestinationCidr"] as? String {
                        self.destinationCidr = value
                    }
                    if let value = dict["NextHopInstanceId"] as? String {
                        self.nextHopInstanceId = value
                    }
                }
            }
            public var routeEntryList: [DescribeVpcFirewallDetailResponseBody.PeerVpc.VpcCidrTableList.RouteEntryList]?

            public var routeTableId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.routeEntryList != nil {
                    var tmp : [Any] = []
                    for k in self.routeEntryList! {
                        tmp.append(k.toMap())
                    }
                    map["RouteEntryList"] = tmp
                }
                if self.routeTableId != nil {
                    map["RouteTableId"] = self.routeTableId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RouteEntryList"] as? [Any?] {
                    var tmp : [DescribeVpcFirewallDetailResponseBody.PeerVpc.VpcCidrTableList.RouteEntryList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeVpcFirewallDetailResponseBody.PeerVpc.VpcCidrTableList.RouteEntryList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.routeEntryList = tmp
                }
                if let value = dict["RouteTableId"] as? String {
                    self.routeTableId = value
                }
            }
        }
        public var eniId: String?

        public var eniPrivateIpAddress: String?

        public var regionNo: String?

        public var routerInterfaceId: String?

        public var vpcCidrTableList: [DescribeVpcFirewallDetailResponseBody.PeerVpc.VpcCidrTableList]?

        public var vpcId: String?

        public var vpcName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eniId != nil {
                map["EniId"] = self.eniId!
            }
            if self.eniPrivateIpAddress != nil {
                map["EniPrivateIpAddress"] = self.eniPrivateIpAddress!
            }
            if self.regionNo != nil {
                map["RegionNo"] = self.regionNo!
            }
            if self.routerInterfaceId != nil {
                map["RouterInterfaceId"] = self.routerInterfaceId!
            }
            if self.vpcCidrTableList != nil {
                var tmp : [Any] = []
                for k in self.vpcCidrTableList! {
                    tmp.append(k.toMap())
                }
                map["VpcCidrTableList"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcName != nil {
                map["VpcName"] = self.vpcName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EniId"] as? String {
                self.eniId = value
            }
            if let value = dict["EniPrivateIpAddress"] as? String {
                self.eniPrivateIpAddress = value
            }
            if let value = dict["RegionNo"] as? String {
                self.regionNo = value
            }
            if let value = dict["RouterInterfaceId"] as? String {
                self.routerInterfaceId = value
            }
            if let value = dict["VpcCidrTableList"] as? [Any?] {
                var tmp : [DescribeVpcFirewallDetailResponseBody.PeerVpc.VpcCidrTableList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVpcFirewallDetailResponseBody.PeerVpc.VpcCidrTableList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vpcCidrTableList = tmp
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcName"] as? String {
                self.vpcName = value
            }
        }
    }
    public var bandwidth: Int32?

    public var connectType: String?

    public var firewallSwitchStatus: String?

    public var localVpc: DescribeVpcFirewallDetailResponseBody.LocalVpc?

    public var memberUid: String?

    public var peerVpc: DescribeVpcFirewallDetailResponseBody.PeerVpc?

    public var requestId: String?

    public var vpcFirewallId: String?

    public var vpcFirewallName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.localVpc?.validate()
        try self.peerVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.connectType != nil {
            map["ConnectType"] = self.connectType!
        }
        if self.firewallSwitchStatus != nil {
            map["FirewallSwitchStatus"] = self.firewallSwitchStatus!
        }
        if self.localVpc != nil {
            map["LocalVpc"] = self.localVpc?.toMap()
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.peerVpc != nil {
            map["PeerVpc"] = self.peerVpc?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        if self.vpcFirewallName != nil {
            map["VpcFirewallName"] = self.vpcFirewallName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["ConnectType"] as? String {
            self.connectType = value
        }
        if let value = dict["FirewallSwitchStatus"] as? String {
            self.firewallSwitchStatus = value
        }
        if let value = dict["LocalVpc"] as? [String: Any?] {
            var model = DescribeVpcFirewallDetailResponseBody.LocalVpc()
            model.fromMap(value)
            self.localVpc = model
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["PeerVpc"] as? [String: Any?] {
            var model = DescribeVpcFirewallDetailResponseBody.PeerVpc()
            model.fromMap(value)
            self.peerVpc = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
        if let value = dict["VpcFirewallName"] as? String {
            self.vpcFirewallName = value
        }
    }
}

public class DescribeVpcFirewallDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVpcFirewallDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVpcFirewallDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVpcFirewallIPSWhitelistRequest : Tea.TeaModel {
    public var lang: String?

    public var memberUid: Int64?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
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
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? Int64 {
            self.memberUid = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class DescribeVpcFirewallIPSWhitelistResponseBody : Tea.TeaModel {
    public class Whitelists : Tea.TeaModel {
        public var listType: Int64?

        public var listValue: String?

        public var vpcFirewallId: String?

        public var whiteListValue: [String]?

        public var whiteType: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.listType != nil {
                map["ListType"] = self.listType!
            }
            if self.listValue != nil {
                map["ListValue"] = self.listValue!
            }
            if self.vpcFirewallId != nil {
                map["VpcFirewallId"] = self.vpcFirewallId!
            }
            if self.whiteListValue != nil {
                map["WhiteListValue"] = self.whiteListValue!
            }
            if self.whiteType != nil {
                map["WhiteType"] = self.whiteType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ListType"] as? Int64 {
                self.listType = value
            }
            if let value = dict["ListValue"] as? String {
                self.listValue = value
            }
            if let value = dict["VpcFirewallId"] as? String {
                self.vpcFirewallId = value
            }
            if let value = dict["WhiteListValue"] as? [String] {
                self.whiteListValue = value
            }
            if let value = dict["WhiteType"] as? Int64 {
                self.whiteType = value
            }
        }
    }
    public var requestId: String?

    public var whitelists: [DescribeVpcFirewallIPSWhitelistResponseBody.Whitelists]?

    public override init() {
        super.init()
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
        if self.whitelists != nil {
            var tmp : [Any] = []
            for k in self.whitelists! {
                tmp.append(k.toMap())
            }
            map["Whitelists"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Whitelists"] as? [Any?] {
            var tmp : [DescribeVpcFirewallIPSWhitelistResponseBody.Whitelists] = []
            for v in value {
                if v != nil {
                    var model = DescribeVpcFirewallIPSWhitelistResponseBody.Whitelists()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.whitelists = tmp
        }
    }
}

public class DescribeVpcFirewallIPSWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVpcFirewallIPSWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVpcFirewallIPSWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVpcFirewallListRequest : Tea.TeaModel {
    public var connectSubType: String?

    public var currentPage: String?

    public var firewallSwitchStatus: String?

    public var lang: String?

    public var memberUid: String?

    public var pageSize: String?

    public var peerUid: String?

    public var regionNo: String?

    public var vpcFirewallId: String?

    public var vpcFirewallName: String?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectSubType != nil {
            map["ConnectSubType"] = self.connectSubType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.firewallSwitchStatus != nil {
            map["FirewallSwitchStatus"] = self.firewallSwitchStatus!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.peerUid != nil {
            map["PeerUid"] = self.peerUid!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        if self.vpcFirewallName != nil {
            map["VpcFirewallName"] = self.vpcFirewallName!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConnectSubType"] as? String {
            self.connectSubType = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["FirewallSwitchStatus"] as? String {
            self.firewallSwitchStatus = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["PeerUid"] as? String {
            self.peerUid = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
        if let value = dict["VpcFirewallName"] as? String {
            self.vpcFirewallName = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DescribeVpcFirewallListResponseBody : Tea.TeaModel {
    public class VpcFirewalls : Tea.TeaModel {
        public class AclConfig : Tea.TeaModel {
            public var strictMode: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.strictMode != nil {
                    map["StrictMode"] = self.strictMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["StrictMode"] as? Int32 {
                    self.strictMode = value
                }
            }
        }
        public class IpsConfig : Tea.TeaModel {
            public var basicRules: Int32?

            public var enableAllPatch: Int32?

            public var ruleClass: Int32?

            public var runMode: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.basicRules != nil {
                    map["BasicRules"] = self.basicRules!
                }
                if self.enableAllPatch != nil {
                    map["EnableAllPatch"] = self.enableAllPatch!
                }
                if self.ruleClass != nil {
                    map["RuleClass"] = self.ruleClass!
                }
                if self.runMode != nil {
                    map["RunMode"] = self.runMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BasicRules"] as? Int32 {
                    self.basicRules = value
                }
                if let value = dict["EnableAllPatch"] as? Int32 {
                    self.enableAllPatch = value
                }
                if let value = dict["RuleClass"] as? Int32 {
                    self.ruleClass = value
                }
                if let value = dict["RunMode"] as? Int32 {
                    self.runMode = value
                }
            }
        }
        public class LocalVpc : Tea.TeaModel {
            public class VpcCidrTableList : Tea.TeaModel {
                public class RouteEntryList : Tea.TeaModel {
                    public var destinationCidr: String?

                    public var nextHopInstanceId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.destinationCidr != nil {
                            map["DestinationCidr"] = self.destinationCidr!
                        }
                        if self.nextHopInstanceId != nil {
                            map["NextHopInstanceId"] = self.nextHopInstanceId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DestinationCidr"] as? String {
                            self.destinationCidr = value
                        }
                        if let value = dict["NextHopInstanceId"] as? String {
                            self.nextHopInstanceId = value
                        }
                    }
                }
                public var routeEntryList: [DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList.RouteEntryList]?

                public var routeTableId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.routeEntryList != nil {
                        var tmp : [Any] = []
                        for k in self.routeEntryList! {
                            tmp.append(k.toMap())
                        }
                        map["RouteEntryList"] = tmp
                    }
                    if self.routeTableId != nil {
                        map["RouteTableId"] = self.routeTableId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RouteEntryList"] as? [Any?] {
                        var tmp : [DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList.RouteEntryList] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList.RouteEntryList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.routeEntryList = tmp
                    }
                    if let value = dict["RouteTableId"] as? String {
                        self.routeTableId = value
                    }
                }
            }
            public var authorizationStatus: String?

            public var ownerId: Int64?

            public var regionNo: String?

            public var vpcCidrTableList: [DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList]?

            public var vpcId: String?

            public var vpcName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authorizationStatus != nil {
                    map["AuthorizationStatus"] = self.authorizationStatus!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.regionNo != nil {
                    map["RegionNo"] = self.regionNo!
                }
                if self.vpcCidrTableList != nil {
                    var tmp : [Any] = []
                    for k in self.vpcCidrTableList! {
                        tmp.append(k.toMap())
                    }
                    map["VpcCidrTableList"] = tmp
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpcName != nil {
                    map["VpcName"] = self.vpcName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthorizationStatus"] as? String {
                    self.authorizationStatus = value
                }
                if let value = dict["OwnerId"] as? Int64 {
                    self.ownerId = value
                }
                if let value = dict["RegionNo"] as? String {
                    self.regionNo = value
                }
                if let value = dict["VpcCidrTableList"] as? [Any?] {
                    var tmp : [DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.vpcCidrTableList = tmp
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VpcName"] as? String {
                    self.vpcName = value
                }
            }
        }
        public class PeerVpc : Tea.TeaModel {
            public class VpcCidrTableList : Tea.TeaModel {
                public class RouteEntryList : Tea.TeaModel {
                    public var destinationCidr: String?

                    public var nextHopInstanceId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.destinationCidr != nil {
                            map["DestinationCidr"] = self.destinationCidr!
                        }
                        if self.nextHopInstanceId != nil {
                            map["NextHopInstanceId"] = self.nextHopInstanceId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DestinationCidr"] as? String {
                            self.destinationCidr = value
                        }
                        if let value = dict["NextHopInstanceId"] as? String {
                            self.nextHopInstanceId = value
                        }
                    }
                }
                public var routeEntryList: [DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc.VpcCidrTableList.RouteEntryList]?

                public var routeTableId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.routeEntryList != nil {
                        var tmp : [Any] = []
                        for k in self.routeEntryList! {
                            tmp.append(k.toMap())
                        }
                        map["RouteEntryList"] = tmp
                    }
                    if self.routeTableId != nil {
                        map["RouteTableId"] = self.routeTableId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RouteEntryList"] as? [Any?] {
                        var tmp : [DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc.VpcCidrTableList.RouteEntryList] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc.VpcCidrTableList.RouteEntryList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.routeEntryList = tmp
                    }
                    if let value = dict["RouteTableId"] as? String {
                        self.routeTableId = value
                    }
                }
            }
            public var authorizationStatus: String?

            public var ownerId: Int64?

            public var regionNo: String?

            public var vpcCidrTableList: [DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc.VpcCidrTableList]?

            public var vpcId: String?

            public var vpcName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authorizationStatus != nil {
                    map["AuthorizationStatus"] = self.authorizationStatus!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.regionNo != nil {
                    map["RegionNo"] = self.regionNo!
                }
                if self.vpcCidrTableList != nil {
                    var tmp : [Any] = []
                    for k in self.vpcCidrTableList! {
                        tmp.append(k.toMap())
                    }
                    map["VpcCidrTableList"] = tmp
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpcName != nil {
                    map["VpcName"] = self.vpcName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthorizationStatus"] as? String {
                    self.authorizationStatus = value
                }
                if let value = dict["OwnerId"] as? Int64 {
                    self.ownerId = value
                }
                if let value = dict["RegionNo"] as? String {
                    self.regionNo = value
                }
                if let value = dict["VpcCidrTableList"] as? [Any?] {
                    var tmp : [DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc.VpcCidrTableList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc.VpcCidrTableList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.vpcCidrTableList = tmp
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VpcName"] as? String {
                    self.vpcName = value
                }
            }
        }
        public var aclConfig: DescribeVpcFirewallListResponseBody.VpcFirewalls.AclConfig?

        public var bandwidth: Int32?

        public var connectSubType: String?

        public var connectType: String?

        public var firewallSwitchStatus: String?

        public var ipsConfig: DescribeVpcFirewallListResponseBody.VpcFirewalls.IpsConfig?

        public var localVpc: DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc?

        public var memberUid: String?

        public var peerVpc: DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc?

        public var regionStatus: String?

        public var resultCode: String?

        public var vpcFirewallId: String?

        public var vpcFirewallName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.aclConfig?.validate()
            try self.ipsConfig?.validate()
            try self.localVpc?.validate()
            try self.peerVpc?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclConfig != nil {
                map["AclConfig"] = self.aclConfig?.toMap()
            }
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.connectSubType != nil {
                map["ConnectSubType"] = self.connectSubType!
            }
            if self.connectType != nil {
                map["ConnectType"] = self.connectType!
            }
            if self.firewallSwitchStatus != nil {
                map["FirewallSwitchStatus"] = self.firewallSwitchStatus!
            }
            if self.ipsConfig != nil {
                map["IpsConfig"] = self.ipsConfig?.toMap()
            }
            if self.localVpc != nil {
                map["LocalVpc"] = self.localVpc?.toMap()
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.peerVpc != nil {
                map["PeerVpc"] = self.peerVpc?.toMap()
            }
            if self.regionStatus != nil {
                map["RegionStatus"] = self.regionStatus!
            }
            if self.resultCode != nil {
                map["ResultCode"] = self.resultCode!
            }
            if self.vpcFirewallId != nil {
                map["VpcFirewallId"] = self.vpcFirewallId!
            }
            if self.vpcFirewallName != nil {
                map["VpcFirewallName"] = self.vpcFirewallName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclConfig"] as? [String: Any?] {
                var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.AclConfig()
                model.fromMap(value)
                self.aclConfig = model
            }
            if let value = dict["Bandwidth"] as? Int32 {
                self.bandwidth = value
            }
            if let value = dict["ConnectSubType"] as? String {
                self.connectSubType = value
            }
            if let value = dict["ConnectType"] as? String {
                self.connectType = value
            }
            if let value = dict["FirewallSwitchStatus"] as? String {
                self.firewallSwitchStatus = value
            }
            if let value = dict["IpsConfig"] as? [String: Any?] {
                var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.IpsConfig()
                model.fromMap(value)
                self.ipsConfig = model
            }
            if let value = dict["LocalVpc"] as? [String: Any?] {
                var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc()
                model.fromMap(value)
                self.localVpc = model
            }
            if let value = dict["MemberUid"] as? String {
                self.memberUid = value
            }
            if let value = dict["PeerVpc"] as? [String: Any?] {
                var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc()
                model.fromMap(value)
                self.peerVpc = model
            }
            if let value = dict["RegionStatus"] as? String {
                self.regionStatus = value
            }
            if let value = dict["ResultCode"] as? String {
                self.resultCode = value
            }
            if let value = dict["VpcFirewallId"] as? String {
                self.vpcFirewallId = value
            }
            if let value = dict["VpcFirewallName"] as? String {
                self.vpcFirewallName = value
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int32?

    public var vpcFirewalls: [DescribeVpcFirewallListResponseBody.VpcFirewalls]?

    public override init() {
        super.init()
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
        if self.vpcFirewalls != nil {
            var tmp : [Any] = []
            for k in self.vpcFirewalls! {
                tmp.append(k.toMap())
            }
            map["VpcFirewalls"] = tmp
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
        if let value = dict["VpcFirewalls"] as? [Any?] {
            var tmp : [DescribeVpcFirewallListResponseBody.VpcFirewalls] = []
            for v in value {
                if v != nil {
                    var model = DescribeVpcFirewallListResponseBody.VpcFirewalls()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vpcFirewalls = tmp
        }
    }
}

public class DescribeVpcFirewallListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVpcFirewallListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVpcFirewallListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVpcFirewallPolicyPriorUsedRequest : Tea.TeaModel {
    public var lang: String?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
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
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class DescribeVpcFirewallPolicyPriorUsedResponseBody : Tea.TeaModel {
    public var end: Int32?

    public var requestId: String?

    public var start: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["End"] as? Int32 {
            self.end = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Start"] as? Int32 {
            self.start = value
        }
    }
}

public class DescribeVpcFirewallPolicyPriorUsedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVpcFirewallPolicyPriorUsedResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVpcFirewallPolicyPriorUsedResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVpcListLiteRequest : Tea.TeaModel {
    public var lang: String?

    public var regionNo: String?

    public var sourceIp: String?

    public var vpcId: String?

    public var vpcName: String?

    public override init() {
        super.init()
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
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vpcName != nil {
            map["VpcName"] = self.vpcName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VpcName"] as? String {
            self.vpcName = value
        }
    }
}

public class DescribeVpcListLiteResponseBody : Tea.TeaModel {
    public class VpcList : Tea.TeaModel {
        public var regionNo: String?

        public var vpcId: String?

        public var vpcName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regionNo != nil {
                map["RegionNo"] = self.regionNo!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcName != nil {
                map["VpcName"] = self.vpcName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionNo"] as? String {
                self.regionNo = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcName"] as? String {
                self.vpcName = value
            }
        }
    }
    public var requestId: String?

    public var vpcList: [DescribeVpcListLiteResponseBody.VpcList]?

    public override init() {
        super.init()
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
        if self.vpcList != nil {
            var tmp : [Any] = []
            for k in self.vpcList! {
                tmp.append(k.toMap())
            }
            map["VpcList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VpcList"] as? [Any?] {
            var tmp : [DescribeVpcListLiteResponseBody.VpcList] = []
            for v in value {
                if v != nil {
                    var model = DescribeVpcListLiteResponseBody.VpcList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vpcList = tmp
        }
    }
}

public class DescribeVpcListLiteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVpcListLiteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVpcListLiteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVpcZoneRequest : Tea.TeaModel {
    public var environment: String?

    public var lang: String?

    public var memberUid: String?

    public var regionNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
    }
}

public class DescribeVpcZoneResponseBody : Tea.TeaModel {
    public class ZoneList : Tea.TeaModel {
        public var localName: String?

        public var zoneId: String?

        public var zoneType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            if self.zoneType != nil {
                map["ZoneType"] = self.zoneType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
            if let value = dict["ZoneType"] as? String {
                self.zoneType = value
            }
        }
    }
    public var requestId: String?

    public var zoneList: [DescribeVpcZoneResponseBody.ZoneList]?

    public override init() {
        super.init()
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
        if self.zoneList != nil {
            var tmp : [Any] = []
            for k in self.zoneList! {
                tmp.append(k.toMap())
            }
            map["ZoneList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ZoneList"] as? [Any?] {
            var tmp : [DescribeVpcZoneResponseBody.ZoneList] = []
            for v in value {
                if v != nil {
                    var model = DescribeVpcZoneResponseBody.ZoneList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.zoneList = tmp
        }
    }
}

public class DescribeVpcZoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVpcZoneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVpcZoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVulnerabilityProtectedListRequest : Tea.TeaModel {
    public var attackType: String?

    public var buyVersion: Int64?

    public var currentPage: String?

    public var endTime: String?

    public var lang: String?

    public var memberUid: String?

    public var order: String?

    public var pageSize: String?

    public var sortKey: String?

    public var sourceIp: String?

    public var startTime: String?

    public var userType: String?

    public var vulnCveName: String?

    public var vulnLevel: String?

    public var vulnResource: String?

    public var vulnStatus: String?

    public var vulnType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attackType != nil {
            map["AttackType"] = self.attackType!
        }
        if self.buyVersion != nil {
            map["BuyVersion"] = self.buyVersion!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortKey != nil {
            map["SortKey"] = self.sortKey!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        if self.vulnCveName != nil {
            map["VulnCveName"] = self.vulnCveName!
        }
        if self.vulnLevel != nil {
            map["VulnLevel"] = self.vulnLevel!
        }
        if self.vulnResource != nil {
            map["VulnResource"] = self.vulnResource!
        }
        if self.vulnStatus != nil {
            map["VulnStatus"] = self.vulnStatus!
        }
        if self.vulnType != nil {
            map["VulnType"] = self.vulnType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttackType"] as? String {
            self.attackType = value
        }
        if let value = dict["BuyVersion"] as? Int64 {
            self.buyVersion = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["SortKey"] as? String {
            self.sortKey = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["UserType"] as? String {
            self.userType = value
        }
        if let value = dict["VulnCveName"] as? String {
            self.vulnCveName = value
        }
        if let value = dict["VulnLevel"] as? String {
            self.vulnLevel = value
        }
        if let value = dict["VulnResource"] as? String {
            self.vulnResource = value
        }
        if let value = dict["VulnStatus"] as? String {
            self.vulnStatus = value
        }
        if let value = dict["VulnType"] as? String {
            self.vulnType = value
        }
    }
}

public class DescribeVulnerabilityProtectedListResponseBody : Tea.TeaModel {
    public class VulnList : Tea.TeaModel {
        public class ResourceList : Tea.TeaModel {
            public var eip: String?

            public var internetIp: String?

            public var intranetIp: String?

            public var regionId: String?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceType: String?

            public var vulnStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eip != nil {
                    map["Eip"] = self.eip!
                }
                if self.internetIp != nil {
                    map["InternetIp"] = self.internetIp!
                }
                if self.intranetIp != nil {
                    map["IntranetIp"] = self.intranetIp!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.vulnStatus != nil {
                    map["VulnStatus"] = self.vulnStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Eip"] as? String {
                    self.eip = value
                }
                if let value = dict["InternetIp"] as? String {
                    self.internetIp = value
                }
                if let value = dict["IntranetIp"] as? String {
                    self.intranetIp = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["VulnStatus"] as? String {
                    self.vulnStatus = value
                }
            }
        }
        public var attackCnt: Int32?

        public var attackType: Int32?

        public var basicRuleIds: String?

        public var cveId: String?

        public var firstTime: Int64?

        public var highlightTag: Int32?

        public var lastTime: Int64?

        public var memberUid: String?

        public var needOpenBasicRule: Bool?

        public var needOpenBasicRuleUuids: String?

        public var needOpenRunMode: Bool?

        public var needOpenVirtualPatche: Bool?

        public var needOpenVirtualPatcheUuids: String?

        public var needRuleClass: Int32?

        public var resourceCnt: Int32?

        public var resourceList: [DescribeVulnerabilityProtectedListResponseBody.VulnList.ResourceList]?

        public var virtualPatcheIds: String?

        public var vulnKey: String?

        public var vulnLevel: String?

        public var vulnName: String?

        public var vulnStatus: String?

        public var vulnType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attackCnt != nil {
                map["AttackCnt"] = self.attackCnt!
            }
            if self.attackType != nil {
                map["AttackType"] = self.attackType!
            }
            if self.basicRuleIds != nil {
                map["BasicRuleIds"] = self.basicRuleIds!
            }
            if self.cveId != nil {
                map["CveId"] = self.cveId!
            }
            if self.firstTime != nil {
                map["FirstTime"] = self.firstTime!
            }
            if self.highlightTag != nil {
                map["HighlightTag"] = self.highlightTag!
            }
            if self.lastTime != nil {
                map["LastTime"] = self.lastTime!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.needOpenBasicRule != nil {
                map["NeedOpenBasicRule"] = self.needOpenBasicRule!
            }
            if self.needOpenBasicRuleUuids != nil {
                map["NeedOpenBasicRuleUuids"] = self.needOpenBasicRuleUuids!
            }
            if self.needOpenRunMode != nil {
                map["NeedOpenRunMode"] = self.needOpenRunMode!
            }
            if self.needOpenVirtualPatche != nil {
                map["NeedOpenVirtualPatche"] = self.needOpenVirtualPatche!
            }
            if self.needOpenVirtualPatcheUuids != nil {
                map["NeedOpenVirtualPatcheUuids"] = self.needOpenVirtualPatcheUuids!
            }
            if self.needRuleClass != nil {
                map["NeedRuleClass"] = self.needRuleClass!
            }
            if self.resourceCnt != nil {
                map["ResourceCnt"] = self.resourceCnt!
            }
            if self.resourceList != nil {
                var tmp : [Any] = []
                for k in self.resourceList! {
                    tmp.append(k.toMap())
                }
                map["ResourceList"] = tmp
            }
            if self.virtualPatcheIds != nil {
                map["VirtualPatcheIds"] = self.virtualPatcheIds!
            }
            if self.vulnKey != nil {
                map["VulnKey"] = self.vulnKey!
            }
            if self.vulnLevel != nil {
                map["VulnLevel"] = self.vulnLevel!
            }
            if self.vulnName != nil {
                map["VulnName"] = self.vulnName!
            }
            if self.vulnStatus != nil {
                map["VulnStatus"] = self.vulnStatus!
            }
            if self.vulnType != nil {
                map["VulnType"] = self.vulnType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttackCnt"] as? Int32 {
                self.attackCnt = value
            }
            if let value = dict["AttackType"] as? Int32 {
                self.attackType = value
            }
            if let value = dict["BasicRuleIds"] as? String {
                self.basicRuleIds = value
            }
            if let value = dict["CveId"] as? String {
                self.cveId = value
            }
            if let value = dict["FirstTime"] as? Int64 {
                self.firstTime = value
            }
            if let value = dict["HighlightTag"] as? Int32 {
                self.highlightTag = value
            }
            if let value = dict["LastTime"] as? Int64 {
                self.lastTime = value
            }
            if let value = dict["MemberUid"] as? String {
                self.memberUid = value
            }
            if let value = dict["NeedOpenBasicRule"] as? Bool {
                self.needOpenBasicRule = value
            }
            if let value = dict["NeedOpenBasicRuleUuids"] as? String {
                self.needOpenBasicRuleUuids = value
            }
            if let value = dict["NeedOpenRunMode"] as? Bool {
                self.needOpenRunMode = value
            }
            if let value = dict["NeedOpenVirtualPatche"] as? Bool {
                self.needOpenVirtualPatche = value
            }
            if let value = dict["NeedOpenVirtualPatcheUuids"] as? String {
                self.needOpenVirtualPatcheUuids = value
            }
            if let value = dict["NeedRuleClass"] as? Int32 {
                self.needRuleClass = value
            }
            if let value = dict["ResourceCnt"] as? Int32 {
                self.resourceCnt = value
            }
            if let value = dict["ResourceList"] as? [Any?] {
                var tmp : [DescribeVulnerabilityProtectedListResponseBody.VulnList.ResourceList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVulnerabilityProtectedListResponseBody.VulnList.ResourceList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resourceList = tmp
            }
            if let value = dict["VirtualPatcheIds"] as? String {
                self.virtualPatcheIds = value
            }
            if let value = dict["VulnKey"] as? String {
                self.vulnKey = value
            }
            if let value = dict["VulnLevel"] as? String {
                self.vulnLevel = value
            }
            if let value = dict["VulnName"] as? String {
                self.vulnName = value
            }
            if let value = dict["VulnStatus"] as? String {
                self.vulnStatus = value
            }
            if let value = dict["VulnType"] as? String {
                self.vulnType = value
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int32?

    public var vulnList: [DescribeVulnerabilityProtectedListResponseBody.VulnList]?

    public var zeroResourceCount: Int32?

    public override init() {
        super.init()
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
        if self.vulnList != nil {
            var tmp : [Any] = []
            for k in self.vulnList! {
                tmp.append(k.toMap())
            }
            map["VulnList"] = tmp
        }
        if self.zeroResourceCount != nil {
            map["ZeroResourceCount"] = self.zeroResourceCount!
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
        if let value = dict["VulnList"] as? [Any?] {
            var tmp : [DescribeVulnerabilityProtectedListResponseBody.VulnList] = []
            for v in value {
                if v != nil {
                    var model = DescribeVulnerabilityProtectedListResponseBody.VulnList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vulnList = tmp
        }
        if let value = dict["ZeroResourceCount"] as? Int32 {
            self.zeroResourceCount = value
        }
    }
}

public class DescribeVulnerabilityProtectedListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVulnerabilityProtectedListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVulnerabilityProtectedListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAddressBookRequest : Tea.TeaModel {
    public class TagList : Tea.TeaModel {
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
    public var addressList: String?

    public var autoAddTagEcs: String?

    public var description_: String?

    public var groupName: String?

    public var groupUuid: String?

    public var lang: String?

    public var modifyMode: String?

    public var sourceIp: String?

    public var tagList: [ModifyAddressBookRequest.TagList]?

    public var tagRelation: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressList != nil {
            map["AddressList"] = self.addressList!
        }
        if self.autoAddTagEcs != nil {
            map["AutoAddTagEcs"] = self.autoAddTagEcs!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupUuid != nil {
            map["GroupUuid"] = self.groupUuid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.modifyMode != nil {
            map["ModifyMode"] = self.modifyMode!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.tagList != nil {
            var tmp : [Any] = []
            for k in self.tagList! {
                tmp.append(k.toMap())
            }
            map["TagList"] = tmp
        }
        if self.tagRelation != nil {
            map["TagRelation"] = self.tagRelation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressList"] as? String {
            self.addressList = value
        }
        if let value = dict["AutoAddTagEcs"] as? String {
            self.autoAddTagEcs = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["GroupUuid"] as? String {
            self.groupUuid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ModifyMode"] as? String {
            self.modifyMode = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["TagList"] as? [Any?] {
            var tmp : [ModifyAddressBookRequest.TagList] = []
            for v in value {
                if v != nil {
                    var model = ModifyAddressBookRequest.TagList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagList = tmp
        }
        if let value = dict["TagRelation"] as? String {
            self.tagRelation = value
        }
    }
}

public class ModifyAddressBookResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyAddressBookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAddressBookResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyAddressBookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyControlPolicyRequest : Tea.TeaModel {
    public var aclAction: String?

    public var aclUuid: String?

    public var applicationName: String?

    public var applicationNameList: [String]?

    public var description_: String?

    public var destPort: String?

    public var destPortGroup: String?

    public var destPortType: String?

    public var destination: String?

    public var destinationType: String?

    public var direction: String?

    public var domainResolveType: String?

    public var endTime: Int64?

    public var lang: String?

    public var proto: String?

    public var release: String?

    public var repeatDays: [Int64]?

    public var repeatEndTime: String?

    public var repeatStartTime: String?

    public var repeatType: String?

    public var source: String?

    public var sourceType: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclAction != nil {
            map["AclAction"] = self.aclAction!
        }
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.applicationNameList != nil {
            map["ApplicationNameList"] = self.applicationNameList!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destPort != nil {
            map["DestPort"] = self.destPort!
        }
        if self.destPortGroup != nil {
            map["DestPortGroup"] = self.destPortGroup!
        }
        if self.destPortType != nil {
            map["DestPortType"] = self.destPortType!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationType != nil {
            map["DestinationType"] = self.destinationType!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.domainResolveType != nil {
            map["DomainResolveType"] = self.domainResolveType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.proto != nil {
            map["Proto"] = self.proto!
        }
        if self.release != nil {
            map["Release"] = self.release!
        }
        if self.repeatDays != nil {
            map["RepeatDays"] = self.repeatDays!
        }
        if self.repeatEndTime != nil {
            map["RepeatEndTime"] = self.repeatEndTime!
        }
        if self.repeatStartTime != nil {
            map["RepeatStartTime"] = self.repeatStartTime!
        }
        if self.repeatType != nil {
            map["RepeatType"] = self.repeatType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclAction"] as? String {
            self.aclAction = value
        }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["ApplicationNameList"] as? [String] {
            self.applicationNameList = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DestPort"] as? String {
            self.destPort = value
        }
        if let value = dict["DestPortGroup"] as? String {
            self.destPortGroup = value
        }
        if let value = dict["DestPortType"] as? String {
            self.destPortType = value
        }
        if let value = dict["Destination"] as? String {
            self.destination = value
        }
        if let value = dict["DestinationType"] as? String {
            self.destinationType = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["DomainResolveType"] as? String {
            self.domainResolveType = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Proto"] as? String {
            self.proto = value
        }
        if let value = dict["Release"] as? String {
            self.release = value
        }
        if let value = dict["RepeatDays"] as? [Int64] {
            self.repeatDays = value
        }
        if let value = dict["RepeatEndTime"] as? String {
            self.repeatEndTime = value
        }
        if let value = dict["RepeatStartTime"] as? String {
            self.repeatStartTime = value
        }
        if let value = dict["RepeatType"] as? String {
            self.repeatType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ModifyControlPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyControlPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyControlPolicyPositionRequest : Tea.TeaModel {
    public var direction: String?

    public var lang: String?

    public var newOrder: String?

    public var oldOrder: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.newOrder != nil {
            map["NewOrder"] = self.newOrder!
        }
        if self.oldOrder != nil {
            map["OldOrder"] = self.oldOrder!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NewOrder"] as? String {
            self.newOrder = value
        }
        if let value = dict["OldOrder"] as? String {
            self.oldOrder = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class ModifyControlPolicyPositionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyControlPolicyPositionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyControlPolicyPositionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyControlPolicyPositionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyControlPolicyPriorityRequest : Tea.TeaModel {
    public var aclUuid: String?

    public var order: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
    }
}

public class ModifyControlPolicyPriorityResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyControlPolicyPriorityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyControlPolicyPriorityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyControlPolicyPriorityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDefaultIPSConfigRequest : Tea.TeaModel {
    public var basicRules: Int32?

    public var ctiRules: Int32?

    public var lang: String?

    public var maxSdl: Int64?

    public var patchRules: Int32?

    public var ruleClass: Int32?

    public var runMode: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basicRules != nil {
            map["BasicRules"] = self.basicRules!
        }
        if self.ctiRules != nil {
            map["CtiRules"] = self.ctiRules!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxSdl != nil {
            map["MaxSdl"] = self.maxSdl!
        }
        if self.patchRules != nil {
            map["PatchRules"] = self.patchRules!
        }
        if self.ruleClass != nil {
            map["RuleClass"] = self.ruleClass!
        }
        if self.runMode != nil {
            map["RunMode"] = self.runMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BasicRules"] as? Int32 {
            self.basicRules = value
        }
        if let value = dict["CtiRules"] as? Int32 {
            self.ctiRules = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxSdl"] as? Int64 {
            self.maxSdl = value
        }
        if let value = dict["PatchRules"] as? Int32 {
            self.patchRules = value
        }
        if let value = dict["RuleClass"] as? Int32 {
            self.ruleClass = value
        }
        if let value = dict["RunMode"] as? Int32 {
            self.runMode = value
        }
    }
}

public class ModifyDefaultIPSConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyDefaultIPSConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDefaultIPSConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDefaultIPSConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDnsFirewallPolicyRequest : Tea.TeaModel {
    public var aclAction: String?

    public var aclUuid: String?

    public var description_: String?

    public var destination: String?

    public var destinationType: String?

    public var lang: String?

    public var priority: String?

    public var release: String?

    public var source: String?

    public var sourceIp: String?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclAction != nil {
            map["AclAction"] = self.aclAction!
        }
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationType != nil {
            map["DestinationType"] = self.destinationType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.release != nil {
            map["Release"] = self.release!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclAction"] as? String {
            self.aclAction = value
        }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Destination"] as? String {
            self.destination = value
        }
        if let value = dict["DestinationType"] as? String {
            self.destinationType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Priority"] as? String {
            self.priority = value
        }
        if let value = dict["Release"] as? String {
            self.release = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class ModifyDnsFirewallPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyDnsFirewallPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDnsFirewallPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDnsFirewallPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyFirewallV2RoutePolicySwitchRequest : Tea.TeaModel {
    public var firewallId: String?

    public var lang: String?

    public var shouldRecover: String?

    public var trFirewallRoutePolicyId: String?

    public var trFirewallRoutePolicySwitchStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.shouldRecover != nil {
            map["ShouldRecover"] = self.shouldRecover!
        }
        if self.trFirewallRoutePolicyId != nil {
            map["TrFirewallRoutePolicyId"] = self.trFirewallRoutePolicyId!
        }
        if self.trFirewallRoutePolicySwitchStatus != nil {
            map["TrFirewallRoutePolicySwitchStatus"] = self.trFirewallRoutePolicySwitchStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ShouldRecover"] as? String {
            self.shouldRecover = value
        }
        if let value = dict["TrFirewallRoutePolicyId"] as? String {
            self.trFirewallRoutePolicyId = value
        }
        if let value = dict["TrFirewallRoutePolicySwitchStatus"] as? String {
            self.trFirewallRoutePolicySwitchStatus = value
        }
    }
}

public class ModifyFirewallV2RoutePolicySwitchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyFirewallV2RoutePolicySwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFirewallV2RoutePolicySwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyFirewallV2RoutePolicySwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceMemberAttributesRequest : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var memberDesc: String?

        public var memberUid: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memberDesc != nil {
                map["MemberDesc"] = self.memberDesc!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MemberDesc"] as? String {
                self.memberDesc = value
            }
            if let value = dict["MemberUid"] as? Int64 {
                self.memberUid = value
            }
        }
    }
    public var members: [ModifyInstanceMemberAttributesRequest.Members]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Members"] as? [Any?] {
            var tmp : [ModifyInstanceMemberAttributesRequest.Members] = []
            for v in value {
                if v != nil {
                    var model = ModifyInstanceMemberAttributesRequest.Members()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.members = tmp
        }
    }
}

public class ModifyInstanceMemberAttributesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyInstanceMemberAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceMemberAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyInstanceMemberAttributesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyNatFirewallControlPolicyRequest : Tea.TeaModel {
    public var aclAction: String?

    public var aclUuid: String?

    public var applicationNameList: [String]?

    public var description_: String?

    public var destPort: String?

    public var destPortGroup: String?

    public var destPortType: String?

    public var destination: String?

    public var destinationType: String?

    public var direction: String?

    public var domainResolveType: String?

    public var endTime: Int64?

    public var lang: String?

    public var natGatewayId: String?

    public var proto: String?

    public var release: String?

    public var repeatDays: [Int64]?

    public var repeatEndTime: String?

    public var repeatStartTime: String?

    public var repeatType: String?

    public var source: String?

    public var sourceType: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclAction != nil {
            map["AclAction"] = self.aclAction!
        }
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.applicationNameList != nil {
            map["ApplicationNameList"] = self.applicationNameList!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destPort != nil {
            map["DestPort"] = self.destPort!
        }
        if self.destPortGroup != nil {
            map["DestPortGroup"] = self.destPortGroup!
        }
        if self.destPortType != nil {
            map["DestPortType"] = self.destPortType!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationType != nil {
            map["DestinationType"] = self.destinationType!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.domainResolveType != nil {
            map["DomainResolveType"] = self.domainResolveType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        if self.proto != nil {
            map["Proto"] = self.proto!
        }
        if self.release != nil {
            map["Release"] = self.release!
        }
        if self.repeatDays != nil {
            map["RepeatDays"] = self.repeatDays!
        }
        if self.repeatEndTime != nil {
            map["RepeatEndTime"] = self.repeatEndTime!
        }
        if self.repeatStartTime != nil {
            map["RepeatStartTime"] = self.repeatStartTime!
        }
        if self.repeatType != nil {
            map["RepeatType"] = self.repeatType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclAction"] as? String {
            self.aclAction = value
        }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["ApplicationNameList"] as? [String] {
            self.applicationNameList = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DestPort"] as? String {
            self.destPort = value
        }
        if let value = dict["DestPortGroup"] as? String {
            self.destPortGroup = value
        }
        if let value = dict["DestPortType"] as? String {
            self.destPortType = value
        }
        if let value = dict["Destination"] as? String {
            self.destination = value
        }
        if let value = dict["DestinationType"] as? String {
            self.destinationType = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["DomainResolveType"] as? String {
            self.domainResolveType = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
        if let value = dict["Proto"] as? String {
            self.proto = value
        }
        if let value = dict["Release"] as? String {
            self.release = value
        }
        if let value = dict["RepeatDays"] as? [Int64] {
            self.repeatDays = value
        }
        if let value = dict["RepeatEndTime"] as? String {
            self.repeatEndTime = value
        }
        if let value = dict["RepeatStartTime"] as? String {
            self.repeatStartTime = value
        }
        if let value = dict["RepeatType"] as? String {
            self.repeatType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ModifyNatFirewallControlPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyNatFirewallControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNatFirewallControlPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyNatFirewallControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyNatFirewallControlPolicyPositionRequest : Tea.TeaModel {
    public var aclUuid: String?

    public var direction: String?

    public var lang: String?

    public var natGatewayId: String?

    public var newOrder: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        if self.newOrder != nil {
            map["NewOrder"] = self.newOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
        if let value = dict["NewOrder"] as? Int32 {
            self.newOrder = value
        }
    }
}

public class ModifyNatFirewallControlPolicyPositionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyNatFirewallControlPolicyPositionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNatFirewallControlPolicyPositionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyNatFirewallControlPolicyPositionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyObjectGroupOperationRequest : Tea.TeaModel {
    public var comment: String?

    public var direction: String?

    public var lang: String?

    public var objectList: [String]?

    public var objectOperation: String?

    public var objectType: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.objectList != nil {
            map["ObjectList"] = self.objectList!
        }
        if self.objectOperation != nil {
            map["ObjectOperation"] = self.objectOperation!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ObjectList"] as? [String] {
            self.objectList = value
        }
        if let value = dict["ObjectOperation"] as? String {
            self.objectOperation = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class ModifyObjectGroupOperationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyObjectGroupOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyObjectGroupOperationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyObjectGroupOperationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyPolicyAdvancedConfigRequest : Tea.TeaModel {
    public var eips: [String]?

    public var internetSwitch: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eips != nil {
            map["Eips"] = self.eips!
        }
        if self.internetSwitch != nil {
            map["InternetSwitch"] = self.internetSwitch!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Eips"] as? [String] {
            self.eips = value
        }
        if let value = dict["InternetSwitch"] as? String {
            self.internetSwitch = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class ModifyPolicyAdvancedConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyPolicyAdvancedConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPolicyAdvancedConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPolicyAdvancedConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyPrivateDnsEndpointRequest : Tea.TeaModel {
    public var accessInstanceId: String?

    public var accessInstanceName: String?

    public var primaryDns: String?

    public var privateDnsType: String?

    public var regionNo: String?

    public var standbyDns: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessInstanceId != nil {
            map["AccessInstanceId"] = self.accessInstanceId!
        }
        if self.accessInstanceName != nil {
            map["AccessInstanceName"] = self.accessInstanceName!
        }
        if self.primaryDns != nil {
            map["PrimaryDns"] = self.primaryDns!
        }
        if self.privateDnsType != nil {
            map["PrivateDnsType"] = self.privateDnsType!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.standbyDns != nil {
            map["StandbyDns"] = self.standbyDns!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessInstanceId"] as? String {
            self.accessInstanceId = value
        }
        if let value = dict["AccessInstanceName"] as? String {
            self.accessInstanceName = value
        }
        if let value = dict["PrimaryDns"] as? String {
            self.primaryDns = value
        }
        if let value = dict["PrivateDnsType"] as? String {
            self.privateDnsType = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["StandbyDns"] as? String {
            self.standbyDns = value
        }
    }
}

public class ModifyPrivateDnsEndpointResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyPrivateDnsEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPrivateDnsEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPrivateDnsEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyTrFirewallV2ConfigurationRequest : Tea.TeaModel {
    public var firewallId: String?

    public var firewallName: String?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.firewallName != nil {
            map["FirewallName"] = self.firewallName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["FirewallName"] as? String {
            self.firewallName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class ModifyTrFirewallV2ConfigurationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyTrFirewallV2ConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTrFirewallV2ConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyTrFirewallV2ConfigurationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyTrFirewallV2RoutePolicyScopeRequest : Tea.TeaModel {
    public class DestCandidateList : Tea.TeaModel {
        public var candidateId: String?

        public var candidateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.candidateId != nil {
                map["CandidateId"] = self.candidateId!
            }
            if self.candidateType != nil {
                map["CandidateType"] = self.candidateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CandidateId"] as? String {
                self.candidateId = value
            }
            if let value = dict["CandidateType"] as? String {
                self.candidateType = value
            }
        }
    }
    public class SrcCandidateList : Tea.TeaModel {
        public var candidateId: String?

        public var candidateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.candidateId != nil {
                map["CandidateId"] = self.candidateId!
            }
            if self.candidateType != nil {
                map["CandidateType"] = self.candidateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CandidateId"] as? String {
                self.candidateId = value
            }
            if let value = dict["CandidateType"] as? String {
                self.candidateType = value
            }
        }
    }
    public var destCandidateList: [ModifyTrFirewallV2RoutePolicyScopeRequest.DestCandidateList]?

    public var firewallId: String?

    public var lang: String?

    public var shouldRecover: String?

    public var srcCandidateList: [ModifyTrFirewallV2RoutePolicyScopeRequest.SrcCandidateList]?

    public var trFirewallRoutePolicyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destCandidateList != nil {
            var tmp : [Any] = []
            for k in self.destCandidateList! {
                tmp.append(k.toMap())
            }
            map["DestCandidateList"] = tmp
        }
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.shouldRecover != nil {
            map["ShouldRecover"] = self.shouldRecover!
        }
        if self.srcCandidateList != nil {
            var tmp : [Any] = []
            for k in self.srcCandidateList! {
                tmp.append(k.toMap())
            }
            map["SrcCandidateList"] = tmp
        }
        if self.trFirewallRoutePolicyId != nil {
            map["TrFirewallRoutePolicyId"] = self.trFirewallRoutePolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestCandidateList"] as? [Any?] {
            var tmp : [ModifyTrFirewallV2RoutePolicyScopeRequest.DestCandidateList] = []
            for v in value {
                if v != nil {
                    var model = ModifyTrFirewallV2RoutePolicyScopeRequest.DestCandidateList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.destCandidateList = tmp
        }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ShouldRecover"] as? String {
            self.shouldRecover = value
        }
        if let value = dict["SrcCandidateList"] as? [Any?] {
            var tmp : [ModifyTrFirewallV2RoutePolicyScopeRequest.SrcCandidateList] = []
            for v in value {
                if v != nil {
                    var model = ModifyTrFirewallV2RoutePolicyScopeRequest.SrcCandidateList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.srcCandidateList = tmp
        }
        if let value = dict["TrFirewallRoutePolicyId"] as? String {
            self.trFirewallRoutePolicyId = value
        }
    }
}

public class ModifyTrFirewallV2RoutePolicyScopeShrinkRequest : Tea.TeaModel {
    public var destCandidateListShrink: String?

    public var firewallId: String?

    public var lang: String?

    public var shouldRecover: String?

    public var srcCandidateListShrink: String?

    public var trFirewallRoutePolicyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destCandidateListShrink != nil {
            map["DestCandidateList"] = self.destCandidateListShrink!
        }
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.shouldRecover != nil {
            map["ShouldRecover"] = self.shouldRecover!
        }
        if self.srcCandidateListShrink != nil {
            map["SrcCandidateList"] = self.srcCandidateListShrink!
        }
        if self.trFirewallRoutePolicyId != nil {
            map["TrFirewallRoutePolicyId"] = self.trFirewallRoutePolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestCandidateList"] as? String {
            self.destCandidateListShrink = value
        }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ShouldRecover"] as? String {
            self.shouldRecover = value
        }
        if let value = dict["SrcCandidateList"] as? String {
            self.srcCandidateListShrink = value
        }
        if let value = dict["TrFirewallRoutePolicyId"] as? String {
            self.trFirewallRoutePolicyId = value
        }
    }
}

public class ModifyTrFirewallV2RoutePolicyScopeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var trFirewallRoutePolicyId: String?

    public override init() {
        super.init()
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
        if self.trFirewallRoutePolicyId != nil {
            map["TrFirewallRoutePolicyId"] = self.trFirewallRoutePolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TrFirewallRoutePolicyId"] as? String {
            self.trFirewallRoutePolicyId = value
        }
    }
}

public class ModifyTrFirewallV2RoutePolicyScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTrFirewallV2RoutePolicyScopeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyTrFirewallV2RoutePolicyScopeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyUserIPSWhitelistRequest : Tea.TeaModel {
    public var direction: Int64?

    public var ipVersion: String?

    public var lang: String?

    public var listType: Int64?

    public var listValue: String?

    public var sourceIp: String?

    public var whiteType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.listType != nil {
            map["ListType"] = self.listType!
        }
        if self.listValue != nil {
            map["ListValue"] = self.listValue!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.whiteType != nil {
            map["WhiteType"] = self.whiteType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Direction"] as? Int64 {
            self.direction = value
        }
        if let value = dict["IpVersion"] as? String {
            self.ipVersion = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ListType"] as? Int64 {
            self.listType = value
        }
        if let value = dict["ListValue"] as? String {
            self.listValue = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["WhiteType"] as? Int64 {
            self.whiteType = value
        }
    }
}

public class ModifyUserIPSWhitelistResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyUserIPSWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUserIPSWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyUserIPSWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyVpcFirewallCenConfigureRequest : Tea.TeaModel {
    public var lang: String?

    public var memberUid: String?

    public var vpcFirewallId: String?

    public var vpcFirewallName: String?

    public override init() {
        super.init()
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
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        if self.vpcFirewallName != nil {
            map["VpcFirewallName"] = self.vpcFirewallName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
        if let value = dict["VpcFirewallName"] as? String {
            self.vpcFirewallName = value
        }
    }
}

public class ModifyVpcFirewallCenConfigureResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyVpcFirewallCenConfigureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyVpcFirewallCenConfigureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyVpcFirewallCenConfigureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyVpcFirewallCenSwitchStatusRequest : Tea.TeaModel {
    public var firewallSwitch: String?

    public var lang: String?

    public var memberUid: String?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.firewallSwitch != nil {
            map["FirewallSwitch"] = self.firewallSwitch!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallSwitch"] as? String {
            self.firewallSwitch = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class ModifyVpcFirewallCenSwitchStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyVpcFirewallCenSwitchStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyVpcFirewallCenSwitchStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyVpcFirewallCenSwitchStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyVpcFirewallConfigureRequest : Tea.TeaModel {
    public var lang: String?

    public var localVpcCidrTableList: String?

    public var memberUid: String?

    public var peerVpcCidrTableList: String?

    public var vpcFirewallId: String?

    public var vpcFirewallName: String?

    public override init() {
        super.init()
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
        if self.localVpcCidrTableList != nil {
            map["LocalVpcCidrTableList"] = self.localVpcCidrTableList!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.peerVpcCidrTableList != nil {
            map["PeerVpcCidrTableList"] = self.peerVpcCidrTableList!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        if self.vpcFirewallName != nil {
            map["VpcFirewallName"] = self.vpcFirewallName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LocalVpcCidrTableList"] as? String {
            self.localVpcCidrTableList = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["PeerVpcCidrTableList"] as? String {
            self.peerVpcCidrTableList = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
        if let value = dict["VpcFirewallName"] as? String {
            self.vpcFirewallName = value
        }
    }
}

public class ModifyVpcFirewallConfigureResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyVpcFirewallConfigureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyVpcFirewallConfigureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyVpcFirewallConfigureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyVpcFirewallControlPolicyRequest : Tea.TeaModel {
    public var aclAction: String?

    public var aclUuid: String?

    public var applicationName: String?

    public var applicationNameList: [String]?

    public var description_: String?

    public var destPort: String?

    public var destPortGroup: String?

    public var destPortType: String?

    public var destination: String?

    public var destinationType: String?

    public var domainResolveType: String?

    public var endTime: Int64?

    public var lang: String?

    public var proto: String?

    public var release: String?

    public var repeatDays: [Int64]?

    public var repeatEndTime: String?

    public var repeatStartTime: String?

    public var repeatType: String?

    public var source: String?

    public var sourceType: String?

    public var startTime: Int64?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclAction != nil {
            map["AclAction"] = self.aclAction!
        }
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.applicationNameList != nil {
            map["ApplicationNameList"] = self.applicationNameList!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destPort != nil {
            map["DestPort"] = self.destPort!
        }
        if self.destPortGroup != nil {
            map["DestPortGroup"] = self.destPortGroup!
        }
        if self.destPortType != nil {
            map["DestPortType"] = self.destPortType!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationType != nil {
            map["DestinationType"] = self.destinationType!
        }
        if self.domainResolveType != nil {
            map["DomainResolveType"] = self.domainResolveType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.proto != nil {
            map["Proto"] = self.proto!
        }
        if self.release != nil {
            map["Release"] = self.release!
        }
        if self.repeatDays != nil {
            map["RepeatDays"] = self.repeatDays!
        }
        if self.repeatEndTime != nil {
            map["RepeatEndTime"] = self.repeatEndTime!
        }
        if self.repeatStartTime != nil {
            map["RepeatStartTime"] = self.repeatStartTime!
        }
        if self.repeatType != nil {
            map["RepeatType"] = self.repeatType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclAction"] as? String {
            self.aclAction = value
        }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["ApplicationNameList"] as? [String] {
            self.applicationNameList = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DestPort"] as? String {
            self.destPort = value
        }
        if let value = dict["DestPortGroup"] as? String {
            self.destPortGroup = value
        }
        if let value = dict["DestPortType"] as? String {
            self.destPortType = value
        }
        if let value = dict["Destination"] as? String {
            self.destination = value
        }
        if let value = dict["DestinationType"] as? String {
            self.destinationType = value
        }
        if let value = dict["DomainResolveType"] as? String {
            self.domainResolveType = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Proto"] as? String {
            self.proto = value
        }
        if let value = dict["Release"] as? String {
            self.release = value
        }
        if let value = dict["RepeatDays"] as? [Int64] {
            self.repeatDays = value
        }
        if let value = dict["RepeatEndTime"] as? String {
            self.repeatEndTime = value
        }
        if let value = dict["RepeatStartTime"] as? String {
            self.repeatStartTime = value
        }
        if let value = dict["RepeatType"] as? String {
            self.repeatType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class ModifyVpcFirewallControlPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyVpcFirewallControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyVpcFirewallControlPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyVpcFirewallControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyVpcFirewallControlPolicyPositionRequest : Tea.TeaModel {
    public var aclUuid: String?

    public var lang: String?

    public var newOrder: String?

    public var oldOrder: String?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.newOrder != nil {
            map["NewOrder"] = self.newOrder!
        }
        if self.oldOrder != nil {
            map["OldOrder"] = self.oldOrder!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NewOrder"] as? String {
            self.newOrder = value
        }
        if let value = dict["OldOrder"] as? String {
            self.oldOrder = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class ModifyVpcFirewallControlPolicyPositionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyVpcFirewallControlPolicyPositionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyVpcFirewallControlPolicyPositionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyVpcFirewallControlPolicyPositionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyVpcFirewallDefaultIPSConfigRequest : Tea.TeaModel {
    public var basicRules: String?

    public var enableAllPatch: String?

    public var lang: String?

    public var memberUid: String?

    public var ruleClass: String?

    public var runMode: String?

    public var sourceIp: String?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basicRules != nil {
            map["BasicRules"] = self.basicRules!
        }
        if self.enableAllPatch != nil {
            map["EnableAllPatch"] = self.enableAllPatch!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.ruleClass != nil {
            map["RuleClass"] = self.ruleClass!
        }
        if self.runMode != nil {
            map["RunMode"] = self.runMode!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BasicRules"] as? String {
            self.basicRules = value
        }
        if let value = dict["EnableAllPatch"] as? String {
            self.enableAllPatch = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["RuleClass"] as? String {
            self.ruleClass = value
        }
        if let value = dict["RunMode"] as? String {
            self.runMode = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class ModifyVpcFirewallDefaultIPSConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyVpcFirewallDefaultIPSConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyVpcFirewallDefaultIPSConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyVpcFirewallDefaultIPSConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyVpcFirewallIPSWhitelistRequest : Tea.TeaModel {
    public var lang: String?

    public var listType: Int64?

    public var listValue: String?

    public var memberUid: Int64?

    public var vpcFirewallId: String?

    public var whiteType: Int64?

    public override init() {
        super.init()
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
        if self.listType != nil {
            map["ListType"] = self.listType!
        }
        if self.listValue != nil {
            map["ListValue"] = self.listValue!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        if self.whiteType != nil {
            map["WhiteType"] = self.whiteType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ListType"] as? Int64 {
            self.listType = value
        }
        if let value = dict["ListValue"] as? String {
            self.listValue = value
        }
        if let value = dict["MemberUid"] as? Int64 {
            self.memberUid = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
        if let value = dict["WhiteType"] as? Int64 {
            self.whiteType = value
        }
    }
}

public class ModifyVpcFirewallIPSWhitelistResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyVpcFirewallIPSWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyVpcFirewallIPSWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyVpcFirewallIPSWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyVpcFirewallSwitchStatusRequest : Tea.TeaModel {
    public var firewallSwitch: String?

    public var lang: String?

    public var memberUid: String?

    public var vpcFirewallId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.firewallSwitch != nil {
            map["FirewallSwitch"] = self.firewallSwitch!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallSwitch"] as? String {
            self.firewallSwitch = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["VpcFirewallId"] as? String {
            self.vpcFirewallId = value
        }
    }
}

public class ModifyVpcFirewallSwitchStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyVpcFirewallSwitchStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyVpcFirewallSwitchStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyVpcFirewallSwitchStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutDisableAllFwSwitchRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class PutDisableAllFwSwitchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class PutDisableAllFwSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutDisableAllFwSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PutDisableAllFwSwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutDisableFwSwitchRequest : Tea.TeaModel {
    public var ipaddrList: [String]?

    public var lang: String?

    public var regionList: [String]?

    public var resourceTypeList: [String]?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipaddrList != nil {
            map["IpaddrList"] = self.ipaddrList!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionList != nil {
            map["RegionList"] = self.regionList!
        }
        if self.resourceTypeList != nil {
            map["ResourceTypeList"] = self.resourceTypeList!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpaddrList"] as? [String] {
            self.ipaddrList = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionList"] as? [String] {
            self.regionList = value
        }
        if let value = dict["ResourceTypeList"] as? [String] {
            self.resourceTypeList = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class PutDisableFwSwitchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class PutDisableFwSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutDisableFwSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PutDisableFwSwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutEnableAllFwSwitchRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class PutEnableAllFwSwitchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class PutEnableAllFwSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutEnableAllFwSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PutEnableAllFwSwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutEnableFwSwitchRequest : Tea.TeaModel {
    public var ipaddrList: [String]?

    public var lang: String?

    public var regionList: [String]?

    public var resourceTypeList: [String]?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipaddrList != nil {
            map["IpaddrList"] = self.ipaddrList!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionList != nil {
            map["RegionList"] = self.regionList!
        }
        if self.resourceTypeList != nil {
            map["ResourceTypeList"] = self.resourceTypeList!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpaddrList"] as? [String] {
            self.ipaddrList = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionList"] as? [String] {
            self.regionList = value
        }
        if let value = dict["ResourceTypeList"] as? [String] {
            self.resourceTypeList = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class PutEnableFwSwitchResponseBody : Tea.TeaModel {
    public class AbnormalResourceStatusList : Tea.TeaModel {
        public var msg: String?

        public var resource: String?

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
            if self.msg != nil {
                map["Msg"] = self.msg!
            }
            if self.resource != nil {
                map["Resource"] = self.resource!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Msg"] as? String {
                self.msg = value
            }
            if let value = dict["Resource"] as? String {
                self.resource = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var abnormalResourceStatusList: [PutEnableFwSwitchResponseBody.AbnormalResourceStatusList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.abnormalResourceStatusList != nil {
            var tmp : [Any] = []
            for k in self.abnormalResourceStatusList! {
                tmp.append(k.toMap())
            }
            map["AbnormalResourceStatusList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AbnormalResourceStatusList"] as? [Any?] {
            var tmp : [PutEnableFwSwitchResponseBody.AbnormalResourceStatusList] = []
            for v in value {
                if v != nil {
                    var model = PutEnableFwSwitchResponseBody.AbnormalResourceStatusList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.abnormalResourceStatusList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PutEnableFwSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutEnableFwSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PutEnableFwSwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseExpiredInstanceRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ReleaseExpiredInstanceResponseBody : Tea.TeaModel {
    public var httpStatusCode: Int32?

    public var releaseStatus: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.releaseStatus != nil {
            map["ReleaseStatus"] = self.releaseStatus!
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
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["ReleaseStatus"] as? String {
            self.releaseStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ReleaseExpiredInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseExpiredInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReleaseExpiredInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleasePostInstanceRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ReleasePostInstanceResponseBody : Tea.TeaModel {
    public var httpStatusCode: Int32?

    public var releaseStatus: Bool?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.releaseStatus != nil {
            map["ReleaseStatus"] = self.releaseStatus!
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
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["ReleaseStatus"] as? Bool {
            self.releaseStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ReleasePostInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleasePostInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReleasePostInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetNatFirewallRuleHitCountRequest : Tea.TeaModel {
    public var aclUuid: String?

    public var lang: String?

    public var natGatewayId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
    }
}

public class ResetNatFirewallRuleHitCountResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ResetNatFirewallRuleHitCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetNatFirewallRuleHitCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResetNatFirewallRuleHitCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetVpcFirewallRuleHitCountRequest : Tea.TeaModel {
    public var aclUuid: String?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclUuid != nil {
            map["AclUuid"] = self.aclUuid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclUuid"] as? String {
            self.aclUuid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class ResetVpcFirewallRuleHitCountResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ResetVpcFirewallRuleHitCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetVpcFirewallRuleHitCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResetVpcFirewallRuleHitCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SwitchSecurityProxyRequest : Tea.TeaModel {
    public var lang: String?

    public var proxyId: String?

    public var switch_: String?

    public override init() {
        super.init()
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
        if self.proxyId != nil {
            map["ProxyId"] = self.proxyId!
        }
        if self.switch_ != nil {
            map["Switch"] = self.switch_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProxyId"] as? String {
            self.proxyId = value
        }
        if let value = dict["Switch"] as? String {
            self.switch_ = value
        }
    }
}

public class SwitchSecurityProxyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class SwitchSecurityProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchSecurityProxyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SwitchSecurityProxyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAITrafficAnalysisStatusRequest : Tea.TeaModel {
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

public class UpdateAITrafficAnalysisStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateAITrafficAnalysisStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAITrafficAnalysisStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAITrafficAnalysisStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
