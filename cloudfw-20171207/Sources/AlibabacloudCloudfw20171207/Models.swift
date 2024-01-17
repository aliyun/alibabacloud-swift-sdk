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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                self.tagValue = dict["TagValue"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressList") && dict["AddressList"] != nil {
            self.addressList = dict["AddressList"] as! String
        }
        if dict.keys.contains("AutoAddTagEcs") && dict["AutoAddTagEcs"] != nil {
            self.autoAddTagEcs = dict["AutoAddTagEcs"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
            self.groupType = dict["GroupType"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("TagList") && dict["TagList"] != nil {
            var tmp : [AddAddressBookRequest.TagList] = []
            for v in dict["TagList"] as! [Any] {
                var model = AddAddressBookRequest.TagList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagList = tmp
        }
        if dict.keys.contains("TagRelation") && dict["TagRelation"] != nil {
            self.tagRelation = dict["TagRelation"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupUuid") && dict["GroupUuid"] != nil {
            self.groupUuid = dict["GroupUuid"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = AddAddressBookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") && dict["AclAction"] != nil {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("ApplicationName") && dict["ApplicationName"] != nil {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("ApplicationNameList") && dict["ApplicationNameList"] != nil {
            self.applicationNameList = dict["ApplicationNameList"] as! [String]
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestPort") && dict["DestPort"] != nil {
            self.destPort = dict["DestPort"] as! String
        }
        if dict.keys.contains("DestPortGroup") && dict["DestPortGroup"] != nil {
            self.destPortGroup = dict["DestPortGroup"] as! String
        }
        if dict.keys.contains("DestPortType") && dict["DestPortType"] != nil {
            self.destPortType = dict["DestPortType"] as! String
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("IpVersion") && dict["IpVersion"] != nil {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NewOrder") && dict["NewOrder"] != nil {
            self.newOrder = dict["NewOrder"] as! String
        }
        if dict.keys.contains("Proto") && dict["Proto"] != nil {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") && dict["Release"] != nil {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("RepeatDays") && dict["RepeatDays"] != nil {
            self.repeatDays = dict["RepeatDays"] as! [Int64]
        }
        if dict.keys.contains("RepeatEndTime") && dict["RepeatEndTime"] != nil {
            self.repeatEndTime = dict["RepeatEndTime"] as! String
        }
        if dict.keys.contains("RepeatStartTime") && dict["RepeatStartTime"] != nil {
            self.repeatStartTime = dict["RepeatStartTime"] as! String
        }
        if dict.keys.contains("RepeatType") && dict["RepeatType"] != nil {
            self.repeatType = dict["RepeatType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = AddControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberDesc") && dict["MemberDesc"] != nil {
                self.memberDesc = dict["MemberDesc"] as! String
            }
            if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
                self.memberUid = dict["MemberUid"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [AddInstanceMembersRequest.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = AddInstanceMembersRequest.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = AddInstanceMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("SourceVpcFirewallId") && dict["SourceVpcFirewallId"] != nil {
            self.sourceVpcFirewallId = dict["SourceVpcFirewallId"] as! String
        }
        if dict.keys.contains("TargetVpcFirewallId") && dict["TargetVpcFirewallId"] != nil {
            self.targetVpcFirewallId = dict["TargetVpcFirewallId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = BatchCopyVpcFirewallControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") && dict["AclAction"] != nil {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("ApplicationNameList") && dict["ApplicationNameList"] != nil {
            self.applicationNameList = dict["ApplicationNameList"] as! [String]
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestPort") && dict["DestPort"] != nil {
            self.destPort = dict["DestPort"] as! String
        }
        if dict.keys.contains("DestPortGroup") && dict["DestPortGroup"] != nil {
            self.destPortGroup = dict["DestPortGroup"] as! String
        }
        if dict.keys.contains("DestPortType") && dict["DestPortType"] != nil {
            self.destPortType = dict["DestPortType"] as! String
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("DomainResolveType") && dict["DomainResolveType"] != nil {
            self.domainResolveType = dict["DomainResolveType"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("IpVersion") && dict["IpVersion"] != nil {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NatGatewayId") && dict["NatGatewayId"] != nil {
            self.natGatewayId = dict["NatGatewayId"] as! String
        }
        if dict.keys.contains("NewOrder") && dict["NewOrder"] != nil {
            self.newOrder = dict["NewOrder"] as! String
        }
        if dict.keys.contains("Proto") && dict["Proto"] != nil {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") && dict["Release"] != nil {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("RepeatDays") && dict["RepeatDays"] != nil {
            self.repeatDays = dict["RepeatDays"] as! [Int64]
        }
        if dict.keys.contains("RepeatEndTime") && dict["RepeatEndTime"] != nil {
            self.repeatEndTime = dict["RepeatEndTime"] as! String
        }
        if dict.keys.contains("RepeatStartTime") && dict["RepeatStartTime"] != nil {
            self.repeatStartTime = dict["RepeatStartTime"] as! String
        }
        if dict.keys.contains("RepeatType") && dict["RepeatType"] != nil {
            self.repeatType = dict["RepeatType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CreateNatFirewallControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") && dict["CenId"] != nil {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("FirewallDescription") && dict["FirewallDescription"] != nil {
            self.firewallDescription = dict["FirewallDescription"] as! String
        }
        if dict.keys.contains("FirewallName") && dict["FirewallName"] != nil {
            self.firewallName = dict["FirewallName"] as! String
        }
        if dict.keys.contains("FirewallSubnetCidr") && dict["FirewallSubnetCidr"] != nil {
            self.firewallSubnetCidr = dict["FirewallSubnetCidr"] as! String
        }
        if dict.keys.contains("FirewallVpcCidr") && dict["FirewallVpcCidr"] != nil {
            self.firewallVpcCidr = dict["FirewallVpcCidr"] as! String
        }
        if dict.keys.contains("FirewallVpcId") && dict["FirewallVpcId"] != nil {
            self.firewallVpcId = dict["FirewallVpcId"] as! String
        }
        if dict.keys.contains("FirewallVswitchId") && dict["FirewallVswitchId"] != nil {
            self.firewallVswitchId = dict["FirewallVswitchId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("RouteMode") && dict["RouteMode"] != nil {
            self.routeMode = dict["RouteMode"] as! String
        }
        if dict.keys.contains("TrAttachmentMasterCidr") && dict["TrAttachmentMasterCidr"] != nil {
            self.trAttachmentMasterCidr = dict["TrAttachmentMasterCidr"] as! String
        }
        if dict.keys.contains("TrAttachmentMasterZone") && dict["TrAttachmentMasterZone"] != nil {
            self.trAttachmentMasterZone = dict["TrAttachmentMasterZone"] as! String
        }
        if dict.keys.contains("TrAttachmentSlaveCidr") && dict["TrAttachmentSlaveCidr"] != nil {
            self.trAttachmentSlaveCidr = dict["TrAttachmentSlaveCidr"] as! String
        }
        if dict.keys.contains("TrAttachmentSlaveZone") && dict["TrAttachmentSlaveZone"] != nil {
            self.trAttachmentSlaveZone = dict["TrAttachmentSlaveZone"] as! String
        }
        if dict.keys.contains("TransitRouterId") && dict["TransitRouterId"] != nil {
            self.transitRouterId = dict["TransitRouterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CreateTrFirewallV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CandidateId") && dict["CandidateId"] != nil {
                self.candidateId = dict["CandidateId"] as! String
            }
            if dict.keys.contains("CandidateType") && dict["CandidateType"] != nil {
                self.candidateType = dict["CandidateType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CandidateId") && dict["CandidateId"] != nil {
                self.candidateId = dict["CandidateId"] as! String
            }
            if dict.keys.contains("CandidateType") && dict["CandidateType"] != nil {
                self.candidateType = dict["CandidateType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestCandidateList") && dict["DestCandidateList"] != nil {
            var tmp : [CreateTrFirewallV2RoutePolicyRequest.DestCandidateList] = []
            for v in dict["DestCandidateList"] as! [Any] {
                var model = CreateTrFirewallV2RoutePolicyRequest.DestCandidateList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.destCandidateList = tmp
        }
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PolicyDescription") && dict["PolicyDescription"] != nil {
            self.policyDescription = dict["PolicyDescription"] as! String
        }
        if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("PolicyType") && dict["PolicyType"] != nil {
            self.policyType = dict["PolicyType"] as! String
        }
        if dict.keys.contains("SrcCandidateList") && dict["SrcCandidateList"] != nil {
            var tmp : [CreateTrFirewallV2RoutePolicyRequest.SrcCandidateList] = []
            for v in dict["SrcCandidateList"] as! [Any] {
                var model = CreateTrFirewallV2RoutePolicyRequest.SrcCandidateList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestCandidateList") && dict["DestCandidateList"] != nil {
            self.destCandidateListShrink = dict["DestCandidateList"] as! String
        }
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PolicyDescription") && dict["PolicyDescription"] != nil {
            self.policyDescription = dict["PolicyDescription"] as! String
        }
        if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("PolicyType") && dict["PolicyType"] != nil {
            self.policyType = dict["PolicyType"] as! String
        }
        if dict.keys.contains("SrcCandidateList") && dict["SrcCandidateList"] != nil {
            self.srcCandidateListShrink = dict["SrcCandidateList"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrFirewallRoutePolicyId") && dict["TrFirewallRoutePolicyId"] != nil {
            self.trFirewallRoutePolicyId = dict["TrFirewallRoutePolicyId"] as! String
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
            var model = CreateTrFirewallV2RoutePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVpcFirewallCenConfigureRequest : Tea.TeaModel {
    public var cenId: String?

    public var firewallSwitch: String?

    public var firewallVSwitchCidrBlock: String?

    public var firewallVpcCidrBlock: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") && dict["CenId"] != nil {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("FirewallSwitch") && dict["FirewallSwitch"] != nil {
            self.firewallSwitch = dict["FirewallSwitch"] as! String
        }
        if dict.keys.contains("FirewallVSwitchCidrBlock") && dict["FirewallVSwitchCidrBlock"] != nil {
            self.firewallVSwitchCidrBlock = dict["FirewallVSwitchCidrBlock"] as! String
        }
        if dict.keys.contains("FirewallVpcCidrBlock") && dict["FirewallVpcCidrBlock"] != nil {
            self.firewallVpcCidrBlock = dict["FirewallVpcCidrBlock"] as! String
        }
        if dict.keys.contains("FirewallVpcZoneId") && dict["FirewallVpcZoneId"] != nil {
            self.firewallVpcZoneId = dict["FirewallVpcZoneId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("NetworkInstanceId") && dict["NetworkInstanceId"] != nil {
            self.networkInstanceId = dict["NetworkInstanceId"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcFirewallName") && dict["VpcFirewallName"] != nil {
            self.vpcFirewallName = dict["VpcFirewallName"] as! String
        }
        if dict.keys.contains("VpcRegion") && dict["VpcRegion"] != nil {
            self.vpcRegion = dict["VpcRegion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
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
            var model = CreateVpcFirewallCenConfigureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FirewallSwitch") && dict["FirewallSwitch"] != nil {
            self.firewallSwitch = dict["FirewallSwitch"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("LocalVpcCidrTableList") && dict["LocalVpcCidrTableList"] != nil {
            self.localVpcCidrTableList = dict["LocalVpcCidrTableList"] as! String
        }
        if dict.keys.contains("LocalVpcId") && dict["LocalVpcId"] != nil {
            self.localVpcId = dict["LocalVpcId"] as! String
        }
        if dict.keys.contains("LocalVpcRegion") && dict["LocalVpcRegion"] != nil {
            self.localVpcRegion = dict["LocalVpcRegion"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("PeerVpcCidrTableList") && dict["PeerVpcCidrTableList"] != nil {
            self.peerVpcCidrTableList = dict["PeerVpcCidrTableList"] as! String
        }
        if dict.keys.contains("PeerVpcId") && dict["PeerVpcId"] != nil {
            self.peerVpcId = dict["PeerVpcId"] as! String
        }
        if dict.keys.contains("PeerVpcRegion") && dict["PeerVpcRegion"] != nil {
            self.peerVpcRegion = dict["PeerVpcRegion"] as! String
        }
        if dict.keys.contains("VpcFirewallName") && dict["VpcFirewallName"] != nil {
            self.vpcFirewallName = dict["VpcFirewallName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
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
            var model = CreateVpcFirewallConfigureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") && dict["AclAction"] != nil {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("ApplicationName") && dict["ApplicationName"] != nil {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("ApplicationNameList") && dict["ApplicationNameList"] != nil {
            self.applicationNameList = dict["ApplicationNameList"] as! [String]
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestPort") && dict["DestPort"] != nil {
            self.destPort = dict["DestPort"] as! String
        }
        if dict.keys.contains("DestPortGroup") && dict["DestPortGroup"] != nil {
            self.destPortGroup = dict["DestPortGroup"] as! String
        }
        if dict.keys.contains("DestPortType") && dict["DestPortType"] != nil {
            self.destPortType = dict["DestPortType"] as! String
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("NewOrder") && dict["NewOrder"] != nil {
            self.newOrder = dict["NewOrder"] as! String
        }
        if dict.keys.contains("Proto") && dict["Proto"] != nil {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") && dict["Release"] != nil {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("RepeatDays") && dict["RepeatDays"] != nil {
            self.repeatDays = dict["RepeatDays"] as! [Int64]
        }
        if dict.keys.contains("RepeatEndTime") && dict["RepeatEndTime"] != nil {
            self.repeatEndTime = dict["RepeatEndTime"] as! String
        }
        if dict.keys.contains("RepeatStartTime") && dict["RepeatStartTime"] != nil {
            self.repeatStartTime = dict["RepeatStartTime"] as! String
        }
        if dict.keys.contains("RepeatType") && dict["RepeatType"] != nil {
            self.repeatType = dict["RepeatType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CreateVpcFirewallControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupUuid") && dict["GroupUuid"] != nil {
            self.groupUuid = dict["GroupUuid"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteAddressBookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TrFirewallRoutePolicyId") && dict["TrFirewallRoutePolicyId"] != nil {
            self.trFirewallRoutePolicyId = dict["TrFirewallRoutePolicyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteFirewallV2RoutePoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberUids") && dict["MemberUids"] != nil {
            self.memberUids = dict["MemberUids"] as! [Int64]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteInstanceMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NatGatewayId") && dict["NatGatewayId"] != nil {
            self.natGatewayId = dict["NatGatewayId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteNatFirewallControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteTrFirewallV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("VpcFirewallIdList") && dict["VpcFirewallIdList"] != nil {
            self.vpcFirewallIdList = dict["VpcFirewallIdList"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteVpcFirewallCenConfigureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("VpcFirewallIdList") && dict["VpcFirewallIdList"] != nil {
            self.vpcFirewallIdList = dict["VpcFirewallIdList"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteVpcFirewallConfigureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteVpcFirewallControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ProtectCnt") && dict["ProtectCnt"] != nil {
                self.protectCnt = dict["ProtectCnt"] as! Int32
            }
            if dict.keys.contains("Time") && dict["Time"] != nil {
                self.time = dict["Time"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InProtectCnt") && dict["InProtectCnt"] != nil {
            self.inProtectCnt = dict["InProtectCnt"] as! Int64
        }
        if dict.keys.contains("InterVPCProtectCnt") && dict["InterVPCProtectCnt"] != nil {
            self.interVPCProtectCnt = dict["InterVPCProtectCnt"] as! Int64
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! Int32
        }
        if dict.keys.contains("OutProtectCnt") && dict["OutProtectCnt"] != nil {
            self.outProtectCnt = dict["OutProtectCnt"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalProtectCnt") && dict["TotalProtectCnt"] != nil {
            self.totalProtectCnt = dict["TotalProtectCnt"] as! Int64
        }
        if dict.keys.contains("TrendList") && dict["TrendList"] != nil {
            var tmp : [DescribeACLProtectTrendResponseBody.TrendList] = []
            for v in dict["TrendList"] as! [Any] {
                var model = DescribeACLProtectTrendResponseBody.TrendList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = DescribeACLProtectTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainPort") && dict["ContainPort"] != nil {
            self.containPort = dict["ContainPort"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
            self.groupType = dict["GroupType"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
    }
}

public class DescribeAddressBookResponseBody : Tea.TeaModel {
    public class Acls : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var addressList: [String]?

        public var addressListCount: Int32?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddressList") && dict["AddressList"] != nil {
                self.addressList = dict["AddressList"] as! [String]
            }
            if dict.keys.contains("AddressListCount") && dict["AddressListCount"] != nil {
                self.addressListCount = dict["AddressListCount"] as! Int32
            }
            if dict.keys.contains("AutoAddTagEcs") && dict["AutoAddTagEcs"] != nil {
                self.autoAddTagEcs = dict["AutoAddTagEcs"] as! Int32
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
                self.groupType = dict["GroupType"] as! String
            }
            if dict.keys.contains("GroupUuid") && dict["GroupUuid"] != nil {
                self.groupUuid = dict["GroupUuid"] as! String
            }
            if dict.keys.contains("ReferenceCount") && dict["ReferenceCount"] != nil {
                self.referenceCount = dict["ReferenceCount"] as! Int32
            }
            if dict.keys.contains("TagList") && dict["TagList"] != nil {
                var tmp : [DescribeAddressBookResponseBody.Acls.TagList] = []
                for v in dict["TagList"] as! [Any] {
                    var model = DescribeAddressBookResponseBody.Acls.TagList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tagList = tmp
            }
            if dict.keys.contains("TagRelation") && dict["TagRelation"] != nil {
                self.tagRelation = dict["TagRelation"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Acls") && dict["Acls"] != nil {
            var tmp : [DescribeAddressBookResponseBody.Acls] = []
            for v in dict["Acls"] as! [Any] {
                var model = DescribeAddressBookResponseBody.Acls()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.acls = tmp
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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
            var model = DescribeAddressBookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public var pageSize: String?

    public var regionNo: String?

    public var resourceType: String?

    public var searchItem: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("IpVersion") && dict["IpVersion"] != nil {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! Int64
        }
        if dict.keys.contains("NewResourceTag") && dict["NewResourceTag"] != nil {
            self.newResourceTag = dict["NewResourceTag"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SearchItem") && dict["SearchItem"] != nil {
            self.searchItem = dict["SearchItem"] as! String
        }
        if dict.keys.contains("SgStatus") && dict["SgStatus"] != nil {
            self.sgStatus = dict["SgStatus"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UserType") && dict["UserType"] != nil {
            self.userType = dict["UserType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
                self.aliUid = dict["AliUid"] as! Int64
            }
            if dict.keys.contains("BindInstanceId") && dict["BindInstanceId"] != nil {
                self.bindInstanceId = dict["BindInstanceId"] as! String
            }
            if dict.keys.contains("BindInstanceName") && dict["BindInstanceName"] != nil {
                self.bindInstanceName = dict["BindInstanceName"] as! String
            }
            if dict.keys.contains("CreateTimeStamp") && dict["CreateTimeStamp"] != nil {
                self.createTimeStamp = dict["CreateTimeStamp"] as! String
            }
            if dict.keys.contains("InternetAddress") && dict["InternetAddress"] != nil {
                self.internetAddress = dict["InternetAddress"] as! String
            }
            if dict.keys.contains("IntranetAddress") && dict["IntranetAddress"] != nil {
                self.intranetAddress = dict["IntranetAddress"] as! String
            }
            if dict.keys.contains("IpVersion") && dict["IpVersion"] != nil {
                self.ipVersion = dict["IpVersion"] as! Int32
            }
            if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
                self.memberUid = dict["MemberUid"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NewResourceTag") && dict["NewResourceTag"] != nil {
                self.newResourceTag = dict["NewResourceTag"] as! String
            }
            if dict.keys.contains("Note") && dict["Note"] != nil {
                self.note = dict["Note"] as! String
            }
            if dict.keys.contains("ProtectStatus") && dict["ProtectStatus"] != nil {
                self.protectStatus = dict["ProtectStatus"] as! String
            }
            if dict.keys.contains("RegionID") && dict["RegionID"] != nil {
                self.regionID = dict["RegionID"] as! String
            }
            if dict.keys.contains("RegionStatus") && dict["RegionStatus"] != nil {
                self.regionStatus = dict["RegionStatus"] as! String
            }
            if dict.keys.contains("ResourceInstanceId") && dict["ResourceInstanceId"] != nil {
                self.resourceInstanceId = dict["ResourceInstanceId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("RiskLevel") && dict["RiskLevel"] != nil {
                self.riskLevel = dict["RiskLevel"] as! String
            }
            if dict.keys.contains("SgStatus") && dict["SgStatus"] != nil {
                self.sgStatus = dict["SgStatus"] as! String
            }
            if dict.keys.contains("SgStatusTime") && dict["SgStatusTime"] != nil {
                self.sgStatusTime = dict["SgStatusTime"] as! Int64
            }
            if dict.keys.contains("SyncStatus") && dict["SyncStatus"] != nil {
                self.syncStatus = dict["SyncStatus"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Assets") && dict["Assets"] != nil {
            var tmp : [DescribeAssetListResponseBody.Assets] = []
            for v in dict["Assets"] as! [Any] {
                var model = DescribeAssetListResponseBody.Assets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.assets = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = DescribeAssetListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") && dict["AclAction"] != nil {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("IpVersion") && dict["IpVersion"] != nil {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Proto") && dict["Proto"] != nil {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") && dict["Release"] != nil {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("RepeatType") && dict["RepeatType"] != nil {
            self.repeatType = dict["RepeatType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclAction") && dict["AclAction"] != nil {
                self.aclAction = dict["AclAction"] as! String
            }
            if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
                self.aclUuid = dict["AclUuid"] as! String
            }
            if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("ApplicationName") && dict["ApplicationName"] != nil {
                self.applicationName = dict["ApplicationName"] as! String
            }
            if dict.keys.contains("ApplicationNameList") && dict["ApplicationNameList"] != nil {
                self.applicationNameList = dict["ApplicationNameList"] as! [String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestPort") && dict["DestPort"] != nil {
                self.destPort = dict["DestPort"] as! String
            }
            if dict.keys.contains("DestPortGroup") && dict["DestPortGroup"] != nil {
                self.destPortGroup = dict["DestPortGroup"] as! String
            }
            if dict.keys.contains("DestPortGroupPorts") && dict["DestPortGroupPorts"] != nil {
                self.destPortGroupPorts = dict["DestPortGroupPorts"] as! [String]
            }
            if dict.keys.contains("DestPortType") && dict["DestPortType"] != nil {
                self.destPortType = dict["DestPortType"] as! String
            }
            if dict.keys.contains("Destination") && dict["Destination"] != nil {
                self.destination = dict["Destination"] as! String
            }
            if dict.keys.contains("DestinationGroupCidrs") && dict["DestinationGroupCidrs"] != nil {
                self.destinationGroupCidrs = dict["DestinationGroupCidrs"] as! [String]
            }
            if dict.keys.contains("DestinationGroupType") && dict["DestinationGroupType"] != nil {
                self.destinationGroupType = dict["DestinationGroupType"] as! String
            }
            if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
                self.destinationType = dict["DestinationType"] as! String
            }
            if dict.keys.contains("Direction") && dict["Direction"] != nil {
                self.direction = dict["Direction"] as! String
            }
            if dict.keys.contains("DnsResult") && dict["DnsResult"] != nil {
                self.dnsResult = dict["DnsResult"] as! String
            }
            if dict.keys.contains("DnsResultTime") && dict["DnsResultTime"] != nil {
                self.dnsResultTime = dict["DnsResultTime"] as! Int64
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("HitLastTime") && dict["HitLastTime"] != nil {
                self.hitLastTime = dict["HitLastTime"] as! Int64
            }
            if dict.keys.contains("HitTimes") && dict["HitTimes"] != nil {
                self.hitTimes = dict["HitTimes"] as! Int64
            }
            if dict.keys.contains("IpVersion") && dict["IpVersion"] != nil {
                self.ipVersion = dict["IpVersion"] as! Int32
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! Int64
            }
            if dict.keys.contains("Order") && dict["Order"] != nil {
                self.order = dict["Order"] as! Int32
            }
            if dict.keys.contains("Proto") && dict["Proto"] != nil {
                self.proto = dict["Proto"] as! String
            }
            if dict.keys.contains("Release") && dict["Release"] != nil {
                self.release = dict["Release"] as! String
            }
            if dict.keys.contains("RepeatDays") && dict["RepeatDays"] != nil {
                self.repeatDays = dict["RepeatDays"] as! [Int64]
            }
            if dict.keys.contains("RepeatEndTime") && dict["RepeatEndTime"] != nil {
                self.repeatEndTime = dict["RepeatEndTime"] as! String
            }
            if dict.keys.contains("RepeatStartTime") && dict["RepeatStartTime"] != nil {
                self.repeatStartTime = dict["RepeatStartTime"] as! String
            }
            if dict.keys.contains("RepeatType") && dict["RepeatType"] != nil {
                self.repeatType = dict["RepeatType"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceGroupCidrs") && dict["SourceGroupCidrs"] != nil {
                self.sourceGroupCidrs = dict["SourceGroupCidrs"] as! [String]
            }
            if dict.keys.contains("SourceGroupType") && dict["SourceGroupType"] != nil {
                self.sourceGroupType = dict["SourceGroupType"] as! String
            }
            if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("SpreadCnt") && dict["SpreadCnt"] != nil {
                self.spreadCnt = dict["SpreadCnt"] as! Int32
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Policys") && dict["Policys"] != nil {
            var tmp : [DescribeControlPolicyResponseBody.Policys] = []
            for v in dict["Policys"] as! [Any] {
                var model = DescribeControlPolicyResponseBody.Policys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policys = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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
            var model = DescribeControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDefaultIPSConfigRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeDefaultIPSConfigResponseBody : Tea.TeaModel {
    public var aiRules: Int32?

    public var basicRules: Int32?

    public var ctiRules: Int32?

    public var enableAllPatch: Int32?

    public var enableDefault: Int32?

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
        if self.aiRules != nil {
            map["AiRules"] = self.aiRules!
        }
        if self.basicRules != nil {
            map["BasicRules"] = self.basicRules!
        }
        if self.ctiRules != nil {
            map["CtiRules"] = self.ctiRules!
        }
        if self.enableAllPatch != nil {
            map["EnableAllPatch"] = self.enableAllPatch!
        }
        if self.enableDefault != nil {
            map["EnableDefault"] = self.enableDefault!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AiRules") && dict["AiRules"] != nil {
            self.aiRules = dict["AiRules"] as! Int32
        }
        if dict.keys.contains("BasicRules") && dict["BasicRules"] != nil {
            self.basicRules = dict["BasicRules"] as! Int32
        }
        if dict.keys.contains("CtiRules") && dict["CtiRules"] != nil {
            self.ctiRules = dict["CtiRules"] as! Int32
        }
        if dict.keys.contains("EnableAllPatch") && dict["EnableAllPatch"] != nil {
            self.enableAllPatch = dict["EnableAllPatch"] as! Int32
        }
        if dict.keys.contains("EnableDefault") && dict["EnableDefault"] != nil {
            self.enableDefault = dict["EnableDefault"] as! Int32
        }
        if dict.keys.contains("PatchRules") && dict["PatchRules"] != nil {
            self.patchRules = dict["PatchRules"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleClass") && dict["RuleClass"] != nil {
            self.ruleClass = dict["RuleClass"] as! Int32
        }
        if dict.keys.contains("RunMode") && dict["RunMode"] != nil {
            self.runMode = dict["RunMode"] as! Int32
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
            var model = DescribeDefaultIPSConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("IpVersion") && dict["IpVersion"] != nil {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IpAddrs") && dict["IpAddrs"] != nil {
                self.ipAddrs = dict["IpAddrs"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResolveResult") && dict["ResolveResult"] != nil {
            var model = DescribeDomainResolveResponseBody.ResolveResult()
            model.fromMap(dict["ResolveResult"] as! [String: Any])
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
            var model = DescribeDomainResolveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("MemberDesc") && dict["MemberDesc"] != nil {
            self.memberDesc = dict["MemberDesc"] as! String
        }
        if dict.keys.contains("MemberDisplayName") && dict["MemberDisplayName"] != nil {
            self.memberDisplayName = dict["MemberDisplayName"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int32
            }
            if dict.keys.contains("MemberDesc") && dict["MemberDesc"] != nil {
                self.memberDesc = dict["MemberDesc"] as! String
            }
            if dict.keys.contains("MemberDisplayName") && dict["MemberDisplayName"] != nil {
                self.memberDisplayName = dict["MemberDisplayName"] as! String
            }
            if dict.keys.contains("MemberStatus") && dict["MemberStatus"] != nil {
                self.memberStatus = dict["MemberStatus"] as! String
            }
            if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
                self.memberUid = dict["MemberUid"] as! Int64
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [DescribeInstanceMembersResponseBody.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = DescribeInstanceMembersResponseBody.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
            var model = DescribeInstanceMembersResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DescribeInstanceMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetsInstanceId") && dict["AssetsInstanceId"] != nil {
            self.assetsInstanceId = dict["AssetsInstanceId"] as! String
        }
        if dict.keys.contains("AssetsInstanceName") && dict["AssetsInstanceName"] != nil {
            self.assetsInstanceName = dict["AssetsInstanceName"] as! String
        }
        if dict.keys.contains("AssetsType") && dict["AssetsType"] != nil {
            self.assetsType = dict["AssetsType"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Port") && dict["Port"] != nil {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("PublicIp") && dict["PublicIp"] != nil {
            self.publicIp = dict["PublicIp"] as! String
        }
        if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("RiskLevel") && dict["RiskLevel"] != nil {
            self.riskLevel = dict["RiskLevel"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
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

        public var portList: [String]?

        public var publicIp: String?

        public var regionNo: String?

        public var riskLevel: Int32?

        public var riskReason: String?

        public var serviceNameList: [String]?

        public var trafficPercent1Day: String?

        public var trafficPercent30Day: String?

        public var trafficPercent7Day: String?

        public override init() {
            super.init()
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
            if self.trafficPercent1Day != nil {
                map["TrafficPercent1Day"] = self.trafficPercent1Day!
            }
            if self.trafficPercent30Day != nil {
                map["TrafficPercent30Day"] = self.trafficPercent30Day!
            }
            if self.trafficPercent7Day != nil {
                map["TrafficPercent7Day"] = self.trafficPercent7Day!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclRecommendDetail") && dict["AclRecommendDetail"] != nil {
                self.aclRecommendDetail = dict["AclRecommendDetail"] as! String
            }
            if dict.keys.contains("AssetsInstanceId") && dict["AssetsInstanceId"] != nil {
                self.assetsInstanceId = dict["AssetsInstanceId"] as! String
            }
            if dict.keys.contains("AssetsName") && dict["AssetsName"] != nil {
                self.assetsName = dict["AssetsName"] as! String
            }
            if dict.keys.contains("AssetsType") && dict["AssetsType"] != nil {
                self.assetsType = dict["AssetsType"] as! String
            }
            if dict.keys.contains("DetailNum") && dict["DetailNum"] != nil {
                self.detailNum = dict["DetailNum"] as! Int32
            }
            if dict.keys.contains("HasAclRecommend") && dict["HasAclRecommend"] != nil {
                self.hasAclRecommend = dict["HasAclRecommend"] as! Bool
            }
            if dict.keys.contains("PortList") && dict["PortList"] != nil {
                self.portList = dict["PortList"] as! [String]
            }
            if dict.keys.contains("PublicIp") && dict["PublicIp"] != nil {
                self.publicIp = dict["PublicIp"] as! String
            }
            if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
                self.regionNo = dict["RegionNo"] as! String
            }
            if dict.keys.contains("RiskLevel") && dict["RiskLevel"] != nil {
                self.riskLevel = dict["RiskLevel"] as! Int32
            }
            if dict.keys.contains("RiskReason") && dict["RiskReason"] != nil {
                self.riskReason = dict["RiskReason"] as! String
            }
            if dict.keys.contains("ServiceNameList") && dict["ServiceNameList"] != nil {
                self.serviceNameList = dict["ServiceNameList"] as! [String]
            }
            if dict.keys.contains("TrafficPercent1Day") && dict["TrafficPercent1Day"] != nil {
                self.trafficPercent1Day = dict["TrafficPercent1Day"] as! String
            }
            if dict.keys.contains("TrafficPercent30Day") && dict["TrafficPercent30Day"] != nil {
                self.trafficPercent30Day = dict["TrafficPercent30Day"] as! String
            }
            if dict.keys.contains("TrafficPercent7Day") && dict["TrafficPercent7Day"] != nil {
                self.trafficPercent7Day = dict["TrafficPercent7Day"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataList") && dict["DataList"] != nil {
            var tmp : [DescribeInternetOpenIpResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = DescribeInternetOpenIpResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
            var model = DescribeInternetOpenIpResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DescribeInternetOpenIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceCode") && dict["SourceCode"] != nil {
            self.sourceCode = dict["SourceCode"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("SrcPrivateIP") && dict["SrcPrivateIP"] != nil {
            self.srcPrivateIP = dict["SrcPrivateIP"] as! String
        }
        if dict.keys.contains("SrcPublicIP") && dict["SrcPublicIP"] != nil {
            self.srcPublicIP = dict["SrcPublicIP"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TrafficType") && dict["TrafficType"] != nil {
            self.trafficType = dict["TrafficType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InBps") && dict["InBps"] != nil {
                self.inBps = dict["InBps"] as! Int64
            }
            if dict.keys.contains("InBytes") && dict["InBytes"] != nil {
                self.inBytes = dict["InBytes"] as! Int64
            }
            if dict.keys.contains("InPps") && dict["InPps"] != nil {
                self.inPps = dict["InPps"] as! Int64
            }
            if dict.keys.contains("NewConn") && dict["NewConn"] != nil {
                self.newConn = dict["NewConn"] as! Int64
            }
            if dict.keys.contains("OutBps") && dict["OutBps"] != nil {
                self.outBps = dict["OutBps"] as! Int64
            }
            if dict.keys.contains("OutBytes") && dict["OutBytes"] != nil {
                self.outBytes = dict["OutBytes"] as! Int64
            }
            if dict.keys.contains("OutPps") && dict["OutPps"] != nil {
                self.outPps = dict["OutPps"] as! Int64
            }
            if dict.keys.contains("SessionCount") && dict["SessionCount"] != nil {
                self.sessionCount = dict["SessionCount"] as! Int64
            }
            if dict.keys.contains("Time") && dict["Time"] != nil {
                self.time = dict["Time"] as! Int32
            }
            if dict.keys.contains("TotalBps") && dict["TotalBps"] != nil {
                self.totalBps = dict["TotalBps"] as! Int64
            }
        }
    }
    public var avgInBps: Int64?

    public var avgOutBps: Int64?

    public var avgSession: Int64?

    public var avgTotalBps: Int64?

    public var dataList: [DescribeInternetTrafficTrendResponseBody.DataList]?

    public var maxBandwidthTime: Int64?

    public var maxInBps: Int64?

    public var maxOutBps: Int64?

    public var maxSession: Int64?

    public var maxTotalBps: Int64?

    public var requestId: String?

    public var totalBytes: Int64?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvgInBps") && dict["AvgInBps"] != nil {
            self.avgInBps = dict["AvgInBps"] as! Int64
        }
        if dict.keys.contains("AvgOutBps") && dict["AvgOutBps"] != nil {
            self.avgOutBps = dict["AvgOutBps"] as! Int64
        }
        if dict.keys.contains("AvgSession") && dict["AvgSession"] != nil {
            self.avgSession = dict["AvgSession"] as! Int64
        }
        if dict.keys.contains("AvgTotalBps") && dict["AvgTotalBps"] != nil {
            self.avgTotalBps = dict["AvgTotalBps"] as! Int64
        }
        if dict.keys.contains("DataList") && dict["DataList"] != nil {
            var tmp : [DescribeInternetTrafficTrendResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = DescribeInternetTrafficTrendResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("MaxBandwidthTime") && dict["MaxBandwidthTime"] != nil {
            self.maxBandwidthTime = dict["MaxBandwidthTime"] as! Int64
        }
        if dict.keys.contains("MaxInBps") && dict["MaxInBps"] != nil {
            self.maxInBps = dict["MaxInBps"] as! Int64
        }
        if dict.keys.contains("MaxOutBps") && dict["MaxOutBps"] != nil {
            self.maxOutBps = dict["MaxOutBps"] as! Int64
        }
        if dict.keys.contains("MaxSession") && dict["MaxSession"] != nil {
            self.maxSession = dict["MaxSession"] as! Int64
        }
        if dict.keys.contains("MaxTotalBps") && dict["MaxTotalBps"] != nil {
            self.maxTotalBps = dict["MaxTotalBps"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalBytes") && dict["TotalBytes"] != nil {
            self.totalBytes = dict["TotalBytes"] as! Int64
        }
        if dict.keys.contains("TotalInBytes") && dict["TotalInBytes"] != nil {
            self.totalInBytes = dict["TotalInBytes"] as! Int64
        }
        if dict.keys.contains("TotalOutBytes") && dict["TotalOutBytes"] != nil {
            self.totalOutBytes = dict["TotalOutBytes"] as! Int64
        }
        if dict.keys.contains("TotalSession") && dict["TotalSession"] != nil {
            self.totalSession = dict["TotalSession"] as! Int64
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
            var model = DescribeInternetTrafficTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetsIP") && dict["AssetsIP"] != nil {
            self.assetsIP = dict["AssetsIP"] as! String
        }
        if dict.keys.contains("AssetsInstanceId") && dict["AssetsInstanceId"] != nil {
            self.assetsInstanceId = dict["AssetsInstanceId"] as! String
        }
        if dict.keys.contains("AssetsInstanceName") && dict["AssetsInstanceName"] != nil {
            self.assetsInstanceName = dict["AssetsInstanceName"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EventKey") && dict["EventKey"] != nil {
            self.eventKey = dict["EventKey"] as! String
        }
        if dict.keys.contains("EventName") && dict["EventName"] != nil {
            self.eventName = dict["EventName"] as! String
        }
        if dict.keys.contains("EventUuid") && dict["EventUuid"] != nil {
            self.eventUuid = dict["EventUuid"] as! String
        }
        if dict.keys.contains("IsIgnore") && dict["IsIgnore"] != nil {
            self.isIgnore = dict["IsIgnore"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("ProcessStatusList") && dict["ProcessStatusList"] != nil {
            self.processStatusList = dict["ProcessStatusList"] as! [Int32]
        }
        if dict.keys.contains("RiskLevel") && dict["RiskLevel"] != nil {
            self.riskLevel = dict["RiskLevel"] as! [Int32]
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssetsInstanceId") && dict["AssetsInstanceId"] != nil {
                self.assetsInstanceId = dict["AssetsInstanceId"] as! String
            }
            if dict.keys.contains("AssetsInstanceName") && dict["AssetsInstanceName"] != nil {
                self.assetsInstanceName = dict["AssetsInstanceName"] as! String
            }
            if dict.keys.contains("AssetsType") && dict["AssetsType"] != nil {
                self.assetsType = dict["AssetsType"] as! String
            }
            if dict.keys.contains("EventKey") && dict["EventKey"] != nil {
                self.eventKey = dict["EventKey"] as! String
            }
            if dict.keys.contains("EventName") && dict["EventName"] != nil {
                self.eventName = dict["EventName"] as! String
            }
            if dict.keys.contains("EventSrc") && dict["EventSrc"] != nil {
                self.eventSrc = dict["EventSrc"] as! String
            }
            if dict.keys.contains("EventUuid") && dict["EventUuid"] != nil {
                self.eventUuid = dict["EventUuid"] as! String
            }
            if dict.keys.contains("FirstTime") && dict["FirstTime"] != nil {
                self.firstTime = dict["FirstTime"] as! Int32
            }
            if dict.keys.contains("IsIgnore") && dict["IsIgnore"] != nil {
                self.isIgnore = dict["IsIgnore"] as! Bool
            }
            if dict.keys.contains("LastTime") && dict["LastTime"] != nil {
                self.lastTime = dict["LastTime"] as! Int32
            }
            if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
                self.memberUid = dict["MemberUid"] as! String
            }
            if dict.keys.contains("PrivateIP") && dict["PrivateIP"] != nil {
                self.privateIP = dict["PrivateIP"] as! String
            }
            if dict.keys.contains("ProcessStatus") && dict["ProcessStatus"] != nil {
                self.processStatus = dict["ProcessStatus"] as! Int32
            }
            if dict.keys.contains("PublicIP") && dict["PublicIP"] != nil {
                self.publicIP = dict["PublicIP"] as! String
            }
            if dict.keys.contains("PublicIpType") && dict["PublicIpType"] != nil {
                self.publicIpType = dict["PublicIpType"] as! String
            }
            if dict.keys.contains("RiskLevel") && dict["RiskLevel"] != nil {
                self.riskLevel = dict["RiskLevel"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventList") && dict["EventList"] != nil {
            var tmp : [DescribeInvadeEventListResponseBody.EventList] = []
            for v in dict["EventList"] as! [Any] {
                var model = DescribeInvadeEventListResponseBody.EventList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eventList = tmp
        }
        if dict.keys.contains("HighLevelPercent") && dict["HighLevelPercent"] != nil {
            self.highLevelPercent = dict["HighLevelPercent"] as! Int32
        }
        if dict.keys.contains("LowLevelPercent") && dict["LowLevelPercent"] != nil {
            self.lowLevelPercent = dict["LowLevelPercent"] as! Int32
        }
        if dict.keys.contains("MiddleLevelPercent") && dict["MiddleLevelPercent"] != nil {
            self.middleLevelPercent = dict["MiddleLevelPercent"] as! Int32
        }
        if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
            var model = DescribeInvadeEventListResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DescribeInvadeEventListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") && dict["AclAction"] != nil {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NatGatewayId") && dict["NatGatewayId"] != nil {
            self.natGatewayId = dict["NatGatewayId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Proto") && dict["Proto"] != nil {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") && dict["Release"] != nil {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("RepeatType") && dict["RepeatType"] != nil {
            self.repeatType = dict["RepeatType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclAction") && dict["AclAction"] != nil {
                self.aclAction = dict["AclAction"] as! String
            }
            if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
                self.aclUuid = dict["AclUuid"] as! String
            }
            if dict.keys.contains("ApplicationNameList") && dict["ApplicationNameList"] != nil {
                self.applicationNameList = dict["ApplicationNameList"] as! [String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestPort") && dict["DestPort"] != nil {
                self.destPort = dict["DestPort"] as! String
            }
            if dict.keys.contains("DestPortGroup") && dict["DestPortGroup"] != nil {
                self.destPortGroup = dict["DestPortGroup"] as! String
            }
            if dict.keys.contains("DestPortGroupPorts") && dict["DestPortGroupPorts"] != nil {
                self.destPortGroupPorts = dict["DestPortGroupPorts"] as! [String]
            }
            if dict.keys.contains("DestPortType") && dict["DestPortType"] != nil {
                self.destPortType = dict["DestPortType"] as! String
            }
            if dict.keys.contains("Destination") && dict["Destination"] != nil {
                self.destination = dict["Destination"] as! String
            }
            if dict.keys.contains("DestinationGroupCidrs") && dict["DestinationGroupCidrs"] != nil {
                self.destinationGroupCidrs = dict["DestinationGroupCidrs"] as! [String]
            }
            if dict.keys.contains("DestinationGroupType") && dict["DestinationGroupType"] != nil {
                self.destinationGroupType = dict["DestinationGroupType"] as! String
            }
            if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
                self.destinationType = dict["DestinationType"] as! String
            }
            if dict.keys.contains("DnsResult") && dict["DnsResult"] != nil {
                self.dnsResult = dict["DnsResult"] as! String
            }
            if dict.keys.contains("DnsResultTime") && dict["DnsResultTime"] != nil {
                self.dnsResultTime = dict["DnsResultTime"] as! Int64
            }
            if dict.keys.contains("DomainResolveType") && dict["DomainResolveType"] != nil {
                self.domainResolveType = dict["DomainResolveType"] as! Int32
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("HitLastTime") && dict["HitLastTime"] != nil {
                self.hitLastTime = dict["HitLastTime"] as! Int64
            }
            if dict.keys.contains("HitTimes") && dict["HitTimes"] != nil {
                self.hitTimes = dict["HitTimes"] as! Int32
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! Int64
            }
            if dict.keys.contains("NatGatewayId") && dict["NatGatewayId"] != nil {
                self.natGatewayId = dict["NatGatewayId"] as! String
            }
            if dict.keys.contains("Order") && dict["Order"] != nil {
                self.order = dict["Order"] as! Int32
            }
            if dict.keys.contains("Proto") && dict["Proto"] != nil {
                self.proto = dict["Proto"] as! String
            }
            if dict.keys.contains("Release") && dict["Release"] != nil {
                self.release = dict["Release"] as! String
            }
            if dict.keys.contains("RepeatDays") && dict["RepeatDays"] != nil {
                self.repeatDays = dict["RepeatDays"] as! [Int64]
            }
            if dict.keys.contains("RepeatEndTime") && dict["RepeatEndTime"] != nil {
                self.repeatEndTime = dict["RepeatEndTime"] as! String
            }
            if dict.keys.contains("RepeatStartTime") && dict["RepeatStartTime"] != nil {
                self.repeatStartTime = dict["RepeatStartTime"] as! String
            }
            if dict.keys.contains("RepeatType") && dict["RepeatType"] != nil {
                self.repeatType = dict["RepeatType"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceGroupCidrs") && dict["SourceGroupCidrs"] != nil {
                self.sourceGroupCidrs = dict["SourceGroupCidrs"] as! [String]
            }
            if dict.keys.contains("SourceGroupType") && dict["SourceGroupType"] != nil {
                self.sourceGroupType = dict["SourceGroupType"] as! String
            }
            if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("SpreadCnt") && dict["SpreadCnt"] != nil {
                self.spreadCnt = dict["SpreadCnt"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policys") && dict["Policys"] != nil {
            var tmp : [DescribeNatFirewallControlPolicyResponseBody.Policys] = []
            for v in dict["Policys"] as! [Any] {
                var model = DescribeNatFirewallControlPolicyResponseBody.Policys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policys = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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
            var model = DescribeNatFirewallControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("IpVersion") && dict["IpVersion"] != nil {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NatGatewayId") && dict["NatGatewayId"] != nil {
            self.natGatewayId = dict["NatGatewayId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("End") && dict["End"] != nil {
            self.end = dict["End"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Start") && dict["Start"] != nil {
            self.start = dict["Start"] as! Int32
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
            var model = DescribeNatFirewallPolicyPriorUsedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") && dict["ApplicationName"] != nil {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("DstIP") && dict["DstIP"] != nil {
            self.dstIP = dict["DstIP"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Port") && dict["Port"] != nil {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("PrivateIP") && dict["PrivateIP"] != nil {
            self.privateIP = dict["PrivateIP"] as! String
        }
        if dict.keys.contains("PublicIP") && dict["PublicIP"] != nil {
            self.publicIP = dict["PublicIP"] as! String
        }
        if dict.keys.contains("Sort") && dict["Sort"] != nil {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TagIdNew") && dict["TagIdNew"] != nil {
            self.tagIdNew = dict["TagIdNew"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddressGroupName") && dict["AddressGroupName"] != nil {
                    self.addressGroupName = dict["AddressGroupName"] as! String
                }
                if dict.keys.contains("AddressGroupUUID") && dict["AddressGroupUUID"] != nil {
                    self.addressGroupUUID = dict["AddressGroupUUID"] as! String
                }
            }
        }
        public class ApplicationPortList : Tea.TeaModel {
            public var applicationName: String?

            public var port: Int32?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApplicationName") && dict["ApplicationName"] != nil {
                    self.applicationName = dict["ApplicationName"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClassId") && dict["ClassId"] != nil {
                    self.classId = dict["ClassId"] as! String
                }
                if dict.keys.contains("RiskLevel") && dict["RiskLevel"] != nil {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
                if dict.keys.contains("TagDescribe") && dict["TagDescribe"] != nil {
                    self.tagDescribe = dict["TagDescribe"] as! String
                }
                if dict.keys.contains("TagId") && dict["TagId"] != nil {
                    self.tagId = dict["TagId"] as! String
                }
                if dict.keys.contains("TagName") && dict["TagName"] != nil {
                    self.tagName = dict["TagName"] as! String
                }
            }
        }
        public var aclCoverage: String?

        public var aclRecommendDetail: String?

        public var aclStatus: String?

        public var addressGroupList: [DescribeOutgoingDestinationIPResponseBody.DstIPList.AddressGroupList]?

        public var applicationPortList: [DescribeOutgoingDestinationIPResponseBody.DstIPList.ApplicationPortList]?

        public var categoryClassId: String?

        public var categoryId: String?

        public var categoryName: String?

        public var dstIP: String?

        public var groupName: String?

        public var hasAcl: String?

        public var hasAclRecommend: Bool?

        public var inBytes: Int64?

        public var isMarkNormal: Bool?

        public var outBytes: Int64?

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
            if self.outBytes != nil {
                map["OutBytes"] = self.outBytes!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclCoverage") && dict["AclCoverage"] != nil {
                self.aclCoverage = dict["AclCoverage"] as! String
            }
            if dict.keys.contains("AclRecommendDetail") && dict["AclRecommendDetail"] != nil {
                self.aclRecommendDetail = dict["AclRecommendDetail"] as! String
            }
            if dict.keys.contains("AclStatus") && dict["AclStatus"] != nil {
                self.aclStatus = dict["AclStatus"] as! String
            }
            if dict.keys.contains("AddressGroupList") && dict["AddressGroupList"] != nil {
                var tmp : [DescribeOutgoingDestinationIPResponseBody.DstIPList.AddressGroupList] = []
                for v in dict["AddressGroupList"] as! [Any] {
                    var model = DescribeOutgoingDestinationIPResponseBody.DstIPList.AddressGroupList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.addressGroupList = tmp
            }
            if dict.keys.contains("ApplicationPortList") && dict["ApplicationPortList"] != nil {
                var tmp : [DescribeOutgoingDestinationIPResponseBody.DstIPList.ApplicationPortList] = []
                for v in dict["ApplicationPortList"] as! [Any] {
                    var model = DescribeOutgoingDestinationIPResponseBody.DstIPList.ApplicationPortList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.applicationPortList = tmp
            }
            if dict.keys.contains("CategoryClassId") && dict["CategoryClassId"] != nil {
                self.categoryClassId = dict["CategoryClassId"] as! String
            }
            if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                self.categoryId = dict["CategoryId"] as! String
            }
            if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                self.categoryName = dict["CategoryName"] as! String
            }
            if dict.keys.contains("DstIP") && dict["DstIP"] != nil {
                self.dstIP = dict["DstIP"] as! String
            }
            if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("HasAcl") && dict["HasAcl"] != nil {
                self.hasAcl = dict["HasAcl"] as! String
            }
            if dict.keys.contains("HasAclRecommend") && dict["HasAclRecommend"] != nil {
                self.hasAclRecommend = dict["HasAclRecommend"] as! Bool
            }
            if dict.keys.contains("InBytes") && dict["InBytes"] != nil {
                self.inBytes = dict["InBytes"] as! Int64
            }
            if dict.keys.contains("IsMarkNormal") && dict["IsMarkNormal"] != nil {
                self.isMarkNormal = dict["IsMarkNormal"] as! Bool
            }
            if dict.keys.contains("OutBytes") && dict["OutBytes"] != nil {
                self.outBytes = dict["OutBytes"] as! Int64
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("SecurityReason") && dict["SecurityReason"] != nil {
                self.securityReason = dict["SecurityReason"] as! String
            }
            if dict.keys.contains("SecuritySuggest") && dict["SecuritySuggest"] != nil {
                self.securitySuggest = dict["SecuritySuggest"] as! String
            }
            if dict.keys.contains("SessionCount") && dict["SessionCount"] != nil {
                self.sessionCount = dict["SessionCount"] as! Int64
            }
            if dict.keys.contains("TagList") && dict["TagList"] != nil {
                var tmp : [DescribeOutgoingDestinationIPResponseBody.DstIPList.TagList] = []
                for v in dict["TagList"] as! [Any] {
                    var model = DescribeOutgoingDestinationIPResponseBody.DstIPList.TagList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tagList = tmp
            }
            if dict.keys.contains("TotalBytes") && dict["TotalBytes"] != nil {
                self.totalBytes = dict["TotalBytes"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DstIPList") && dict["DstIPList"] != nil {
            var tmp : [DescribeOutgoingDestinationIPResponseBody.DstIPList] = []
            for v in dict["DstIPList"] as! [Any] {
                var model = DescribeOutgoingDestinationIPResponseBody.DstIPList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dstIPList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = DescribeOutgoingDestinationIPResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOutgoingDomainRequest : Tea.TeaModel {
    public var categoryId: String?

    public var currentPage: String?

    public var domain: String?

    public var endTime: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("PublicIP") && dict["PublicIP"] != nil {
            self.publicIP = dict["PublicIP"] as! String
        }
        if dict.keys.contains("Sort") && dict["Sort"] != nil {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TagIdNew") && dict["TagIdNew"] != nil {
            self.tagIdNew = dict["TagIdNew"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClassId") && dict["ClassId"] != nil {
                    self.classId = dict["ClassId"] as! String
                }
                if dict.keys.contains("RiskLevel") && dict["RiskLevel"] != nil {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
                if dict.keys.contains("TagDescribe") && dict["TagDescribe"] != nil {
                    self.tagDescribe = dict["TagDescribe"] as! String
                }
                if dict.keys.contains("TagId") && dict["TagId"] != nil {
                    self.tagId = dict["TagId"] as! String
                }
                if dict.keys.contains("TagName") && dict["TagName"] != nil {
                    self.tagName = dict["TagName"] as! String
                }
            }
        }
        public var aclCoverage: String?

        public var aclRecommendDetail: String?

        public var aclStatus: String?

        public var addressGroupName: String?

        public var addressGroupUUID: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclCoverage") && dict["AclCoverage"] != nil {
                self.aclCoverage = dict["AclCoverage"] as! String
            }
            if dict.keys.contains("AclRecommendDetail") && dict["AclRecommendDetail"] != nil {
                self.aclRecommendDetail = dict["AclRecommendDetail"] as! String
            }
            if dict.keys.contains("AclStatus") && dict["AclStatus"] != nil {
                self.aclStatus = dict["AclStatus"] as! String
            }
            if dict.keys.contains("AddressGroupName") && dict["AddressGroupName"] != nil {
                self.addressGroupName = dict["AddressGroupName"] as! String
            }
            if dict.keys.contains("AddressGroupUUID") && dict["AddressGroupUUID"] != nil {
                self.addressGroupUUID = dict["AddressGroupUUID"] as! String
            }
            if dict.keys.contains("Business") && dict["Business"] != nil {
                self.business = dict["Business"] as! String
            }
            if dict.keys.contains("CategoryClassId") && dict["CategoryClassId"] != nil {
                self.categoryClassId = dict["CategoryClassId"] as! String
            }
            if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                self.categoryId = dict["CategoryId"] as! String
            }
            if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                self.categoryName = dict["CategoryName"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("HasAcl") && dict["HasAcl"] != nil {
                self.hasAcl = dict["HasAcl"] as! String
            }
            if dict.keys.contains("HasAclRecommend") && dict["HasAclRecommend"] != nil {
                self.hasAclRecommend = dict["HasAclRecommend"] as! Bool
            }
            if dict.keys.contains("InBytes") && dict["InBytes"] != nil {
                self.inBytes = dict["InBytes"] as! Int64
            }
            if dict.keys.contains("IsMarkNormal") && dict["IsMarkNormal"] != nil {
                self.isMarkNormal = dict["IsMarkNormal"] as! Bool
            }
            if dict.keys.contains("Organization") && dict["Organization"] != nil {
                self.organization = dict["Organization"] as! String
            }
            if dict.keys.contains("OutBytes") && dict["OutBytes"] != nil {
                self.outBytes = dict["OutBytes"] as! Int64
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("SecurityReason") && dict["SecurityReason"] != nil {
                self.securityReason = dict["SecurityReason"] as! String
            }
            if dict.keys.contains("SecuritySuggest") && dict["SecuritySuggest"] != nil {
                self.securitySuggest = dict["SecuritySuggest"] as! String
            }
            if dict.keys.contains("SessionCount") && dict["SessionCount"] != nil {
                self.sessionCount = dict["SessionCount"] as! Int64
            }
            if dict.keys.contains("TagList") && dict["TagList"] != nil {
                var tmp : [DescribeOutgoingDomainResponseBody.DomainList.TagList] = []
                for v in dict["TagList"] as! [Any] {
                    var model = DescribeOutgoingDomainResponseBody.DomainList.TagList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tagList = tmp
            }
            if dict.keys.contains("TotalBytes") && dict["TotalBytes"] != nil {
                self.totalBytes = dict["TotalBytes"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainList") && dict["DomainList"] != nil {
            var tmp : [DescribeOutgoingDomainResponseBody.DomainList] = []
            for v in dict["DomainList"] as! [Any] {
                var model = DescribeOutgoingDomainResponseBody.DomainList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.domainList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = DescribeOutgoingDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InternetSwitch") && dict["InternetSwitch"] != nil {
            self.internetSwitch = dict["InternetSwitch"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DescribePolicyAdvancedConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("IpVersion") && dict["IpVersion"] != nil {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("End") && dict["End"] != nil {
            self.end = dict["End"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Start") && dict["Start"] != nil {
            self.start = dict["Start"] as! Int32
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
            var model = DescribePolicyPriorUsedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRiskEventGroupRequest : Tea.TeaModel {
    public var attackApp: [String]?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttackApp") && dict["AttackApp"] != nil {
            self.attackApp = dict["AttackApp"] as! [String]
        }
        if dict.keys.contains("AttackType") && dict["AttackType"] != nil {
            self.attackType = dict["AttackType"] as! String
        }
        if dict.keys.contains("BuyVersion") && dict["BuyVersion"] != nil {
            self.buyVersion = dict["BuyVersion"] as! Int64
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("DataType") && dict["DataType"] != nil {
            self.dataType = dict["DataType"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("DstIP") && dict["DstIP"] != nil {
            self.dstIP = dict["DstIP"] as! String
        }
        if dict.keys.contains("DstNetworkInstanceId") && dict["DstNetworkInstanceId"] != nil {
            self.dstNetworkInstanceId = dict["DstNetworkInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EventName") && dict["EventName"] != nil {
            self.eventName = dict["EventName"] as! String
        }
        if dict.keys.contains("FirewallType") && dict["FirewallType"] != nil {
            self.firewallType = dict["FirewallType"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NoLocation") && dict["NoLocation"] != nil {
            self.noLocation = dict["NoLocation"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RuleResult") && dict["RuleResult"] != nil {
            self.ruleResult = dict["RuleResult"] as! String
        }
        if dict.keys.contains("RuleSource") && dict["RuleSource"] != nil {
            self.ruleSource = dict["RuleSource"] as! String
        }
        if dict.keys.contains("Sort") && dict["Sort"] != nil {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("SrcIP") && dict["SrcIP"] != nil {
            self.srcIP = dict["SrcIP"] as! String
        }
        if dict.keys.contains("SrcNetworkInstanceId") && dict["SrcNetworkInstanceId"] != nil {
            self.srcNetworkInstanceId = dict["SrcNetworkInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("VulLevel") && dict["VulLevel"] != nil {
            self.vulLevel = dict["VulLevel"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CityId") && dict["CityId"] != nil {
                    self.cityId = dict["CityId"] as! String
                }
                if dict.keys.contains("CityName") && dict["CityName"] != nil {
                    self.cityName = dict["CityName"] as! String
                }
                if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
                    self.countryId = dict["CountryId"] as! String
                }
                if dict.keys.contains("CountryName") && dict["CountryName"] != nil {
                    self.countryName = dict["CountryName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
                    self.regionNo = dict["RegionNo"] as! String
                }
                if dict.keys.contains("ResourceInstanceId") && dict["ResourceInstanceId"] != nil {
                    self.resourceInstanceId = dict["ResourceInstanceId"] as! String
                }
                if dict.keys.contains("ResourceInstanceName") && dict["ResourceInstanceName"] != nil {
                    self.resourceInstanceName = dict["ResourceInstanceName"] as! String
                }
                if dict.keys.contains("ResourcePrivateIP") && dict["ResourcePrivateIP"] != nil {
                    self.resourcePrivateIP = dict["ResourcePrivateIP"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EcsInstanceId") && dict["EcsInstanceId"] != nil {
                    self.ecsInstanceId = dict["EcsInstanceId"] as! String
                }
                if dict.keys.contains("EcsInstanceName") && dict["EcsInstanceName"] != nil {
                    self.ecsInstanceName = dict["EcsInstanceName"] as! String
                }
                if dict.keys.contains("NetworkInstanceId") && dict["NetworkInstanceId"] != nil {
                    self.networkInstanceId = dict["NetworkInstanceId"] as! String
                }
                if dict.keys.contains("NetworkInstanceName") && dict["NetworkInstanceName"] != nil {
                    self.networkInstanceName = dict["NetworkInstanceName"] as! String
                }
                if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
                    self.regionNo = dict["RegionNo"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EcsInstanceId") && dict["EcsInstanceId"] != nil {
                    self.ecsInstanceId = dict["EcsInstanceId"] as! String
                }
                if dict.keys.contains("EcsInstanceName") && dict["EcsInstanceName"] != nil {
                    self.ecsInstanceName = dict["EcsInstanceName"] as! String
                }
                if dict.keys.contains("NetworkInstanceId") && dict["NetworkInstanceId"] != nil {
                    self.networkInstanceId = dict["NetworkInstanceId"] as! String
                }
                if dict.keys.contains("NetworkInstanceName") && dict["NetworkInstanceName"] != nil {
                    self.networkInstanceName = dict["NetworkInstanceName"] as! String
                }
                if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
                    self.regionNo = dict["RegionNo"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttackApp") && dict["AttackApp"] != nil {
                self.attackApp = dict["AttackApp"] as! String
            }
            if dict.keys.contains("AttackType") && dict["AttackType"] != nil {
                self.attackType = dict["AttackType"] as! Int32
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Direction") && dict["Direction"] != nil {
                self.direction = dict["Direction"] as! String
            }
            if dict.keys.contains("DstIP") && dict["DstIP"] != nil {
                self.dstIP = dict["DstIP"] as! String
            }
            if dict.keys.contains("EventCount") && dict["EventCount"] != nil {
                self.eventCount = dict["EventCount"] as! Int32
            }
            if dict.keys.contains("EventId") && dict["EventId"] != nil {
                self.eventId = dict["EventId"] as! String
            }
            if dict.keys.contains("EventName") && dict["EventName"] != nil {
                self.eventName = dict["EventName"] as! String
            }
            if dict.keys.contains("FirstEventTime") && dict["FirstEventTime"] != nil {
                self.firstEventTime = dict["FirstEventTime"] as! Int32
            }
            if dict.keys.contains("IPLocationInfo") && dict["IPLocationInfo"] != nil {
                var model = DescribeRiskEventGroupResponseBody.DataList.IPLocationInfo()
                model.fromMap(dict["IPLocationInfo"] as! [String: Any])
                self.IPLocationInfo = model
            }
            if dict.keys.contains("LastEventTime") && dict["LastEventTime"] != nil {
                self.lastEventTime = dict["LastEventTime"] as! Int32
            }
            if dict.keys.contains("ResourcePrivateIPList") && dict["ResourcePrivateIPList"] != nil {
                var tmp : [DescribeRiskEventGroupResponseBody.DataList.ResourcePrivateIPList] = []
                for v in dict["ResourcePrivateIPList"] as! [Any] {
                    var model = DescribeRiskEventGroupResponseBody.DataList.ResourcePrivateIPList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resourcePrivateIPList = tmp
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleResult") && dict["RuleResult"] != nil {
                self.ruleResult = dict["RuleResult"] as! Int32
            }
            if dict.keys.contains("RuleSource") && dict["RuleSource"] != nil {
                self.ruleSource = dict["RuleSource"] as! Int32
            }
            if dict.keys.contains("SrcIP") && dict["SrcIP"] != nil {
                self.srcIP = dict["SrcIP"] as! String
            }
            if dict.keys.contains("SrcIPTag") && dict["SrcIPTag"] != nil {
                self.srcIPTag = dict["SrcIPTag"] as! String
            }
            if dict.keys.contains("SrcPrivateIPList") && dict["SrcPrivateIPList"] != nil {
                self.srcPrivateIPList = dict["SrcPrivateIPList"] as! [String]
            }
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("VpcDstInfo") && dict["VpcDstInfo"] != nil {
                var model = DescribeRiskEventGroupResponseBody.DataList.VpcDstInfo()
                model.fromMap(dict["VpcDstInfo"] as! [String: Any])
                self.vpcDstInfo = model
            }
            if dict.keys.contains("VpcSrcInfo") && dict["VpcSrcInfo"] != nil {
                var model = DescribeRiskEventGroupResponseBody.DataList.VpcSrcInfo()
                model.fromMap(dict["VpcSrcInfo"] as! [String: Any])
                self.vpcSrcInfo = model
            }
            if dict.keys.contains("VulLevel") && dict["VulLevel"] != nil {
                self.vulLevel = dict["VulLevel"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataList") && dict["DataList"] != nil {
            var tmp : [DescribeRiskEventGroupResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = DescribeRiskEventGroupResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = DescribeRiskEventGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DstIP") && dict["DstIP"] != nil {
            self.dstIP = dict["DstIP"] as! String
        }
        if dict.keys.contains("DstVpcId") && dict["DstVpcId"] != nil {
            self.dstVpcId = dict["DstVpcId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FirewallType") && dict["FirewallType"] != nil {
            self.firewallType = dict["FirewallType"] as! String
        }
        if dict.keys.contains("PublicIP") && dict["PublicIP"] != nil {
            self.publicIP = dict["PublicIP"] as! String
        }
        if dict.keys.contains("SrcIP") && dict["SrcIP"] != nil {
            self.srcIP = dict["SrcIP"] as! String
        }
        if dict.keys.contains("SrcVpcId") && dict["SrcVpcId"] != nil {
            self.srcVpcId = dict["SrcVpcId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("UUID") && dict["UUID"] != nil {
            self.UUID = dict["UUID"] as! String
        }
    }
}

public class DescribeRiskEventPayloadResponseBody : Tea.TeaModel {
    public var dstIP: String?

    public var dstPort: Int32?

    public var dstVpcId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DstIP") && dict["DstIP"] != nil {
            self.dstIP = dict["DstIP"] as! String
        }
        if dict.keys.contains("DstPort") && dict["DstPort"] != nil {
            self.dstPort = dict["DstPort"] as! Int32
        }
        if dict.keys.contains("DstVpcId") && dict["DstVpcId"] != nil {
            self.dstVpcId = dict["DstVpcId"] as! String
        }
        if dict.keys.contains("Payload") && dict["Payload"] != nil {
            self.payload = dict["Payload"] as! String
        }
        if dict.keys.contains("PayloadLen") && dict["PayloadLen"] != nil {
            self.payloadLen = dict["PayloadLen"] as! Int32
        }
        if dict.keys.contains("Proto") && dict["Proto"] != nil {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("RealIp") && dict["RealIp"] != nil {
            self.realIp = dict["RealIp"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SrcIP") && dict["SrcIP"] != nil {
            self.srcIP = dict["SrcIP"] as! String
        }
        if dict.keys.contains("SrcPort") && dict["SrcPort"] != nil {
            self.srcPort = dict["SrcPort"] as! Int32
        }
        if dict.keys.contains("SrcVpcId") && dict["SrcVpcId"] != nil {
            self.srcVpcId = dict["SrcVpcId"] as! String
        }
        if dict.keys.contains("XForwardFor") && dict["XForwardFor"] != nil {
            self.XForwardFor = dict["XForwardFor"] as! String
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
            var model = DescribeRiskEventPayloadResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTrFirewallPolicyBackUpAssociationListRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TrFirewallRoutePolicyId") && dict["TrFirewallRoutePolicyId"] != nil {
            self.trFirewallRoutePolicyId = dict["TrFirewallRoutePolicyId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CandidateId") && dict["CandidateId"] != nil {
                self.candidateId = dict["CandidateId"] as! String
            }
            if dict.keys.contains("CandidateName") && dict["CandidateName"] != nil {
                self.candidateName = dict["CandidateName"] as! String
            }
            if dict.keys.contains("CandidateType") && dict["CandidateType"] != nil {
                self.candidateType = dict["CandidateType"] as! String
            }
            if dict.keys.contains("CurrentRouteTableId") && dict["CurrentRouteTableId"] != nil {
                self.currentRouteTableId = dict["CurrentRouteTableId"] as! String
            }
            if dict.keys.contains("OriginalRouteTableId") && dict["OriginalRouteTableId"] != nil {
                self.originalRouteTableId = dict["OriginalRouteTableId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyAssociationBackupConfigs") && dict["PolicyAssociationBackupConfigs"] != nil {
            var tmp : [DescribeTrFirewallPolicyBackUpAssociationListResponseBody.PolicyAssociationBackupConfigs] = []
            for v in dict["PolicyAssociationBackupConfigs"] as! [Any] {
                var model = DescribeTrFirewallPolicyBackUpAssociationListResponseBody.PolicyAssociationBackupConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policyAssociationBackupConfigs = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DescribeTrFirewallPolicyBackUpAssociationListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CandidateId") && dict["CandidateId"] != nil {
                    self.candidateId = dict["CandidateId"] as! String
                }
                if dict.keys.contains("CandidateType") && dict["CandidateType"] != nil {
                    self.candidateType = dict["CandidateType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CandidateId") && dict["CandidateId"] != nil {
                    self.candidateId = dict["CandidateId"] as! String
                }
                if dict.keys.contains("CandidateType") && dict["CandidateType"] != nil {
                    self.candidateType = dict["CandidateType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DestCandidateList") && dict["DestCandidateList"] != nil {
                var tmp : [DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies.DestCandidateList] = []
                for v in dict["DestCandidateList"] as! [Any] {
                    var model = DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies.DestCandidateList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.destCandidateList = tmp
            }
            if dict.keys.contains("PolicyDescription") && dict["PolicyDescription"] != nil {
                self.policyDescription = dict["PolicyDescription"] as! String
            }
            if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
                self.policyName = dict["PolicyName"] as! String
            }
            if dict.keys.contains("PolicyStatus") && dict["PolicyStatus"] != nil {
                self.policyStatus = dict["PolicyStatus"] as! String
            }
            if dict.keys.contains("PolicyType") && dict["PolicyType"] != nil {
                self.policyType = dict["PolicyType"] as! String
            }
            if dict.keys.contains("SrcCandidateList") && dict["SrcCandidateList"] != nil {
                var tmp : [DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies.SrcCandidateList] = []
                for v in dict["SrcCandidateList"] as! [Any] {
                    var model = DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies.SrcCandidateList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.srcCandidateList = tmp
            }
            if dict.keys.contains("TrFirewallRoutePolicyId") && dict["TrFirewallRoutePolicyId"] != nil {
                self.trFirewallRoutePolicyId = dict["TrFirewallRoutePolicyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
        if dict.keys.contains("TrFirewallRoutePolicies") && dict["TrFirewallRoutePolicies"] != nil {
            var tmp : [DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies] = []
            for v in dict["TrFirewallRoutePolicies"] as! [Any] {
                var model = DescribeTrFirewallV2RoutePolicyListResponseBody.TrFirewallRoutePolicies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = DescribeTrFirewallV2RoutePolicyListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
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

    public var trAttachmentSlaveCidr: String?

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
        if self.trAttachmentSlaveCidr != nil {
            map["TrAttachmentSlaveCidr"] = self.trAttachmentSlaveCidr!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") && dict["CenId"] != nil {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("FirewallDescription") && dict["FirewallDescription"] != nil {
            self.firewallDescription = dict["FirewallDescription"] as! String
        }
        if dict.keys.contains("FirewallEniId") && dict["FirewallEniId"] != nil {
            self.firewallEniId = dict["FirewallEniId"] as! String
        }
        if dict.keys.contains("FirewallEniVpcId") && dict["FirewallEniVpcId"] != nil {
            self.firewallEniVpcId = dict["FirewallEniVpcId"] as! String
        }
        if dict.keys.contains("FirewallEniVswitchId") && dict["FirewallEniVswitchId"] != nil {
            self.firewallEniVswitchId = dict["FirewallEniVswitchId"] as! String
        }
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("FirewallName") && dict["FirewallName"] != nil {
            self.firewallName = dict["FirewallName"] as! String
        }
        if dict.keys.contains("FirewallStatus") && dict["FirewallStatus"] != nil {
            self.firewallStatus = dict["FirewallStatus"] as! String
        }
        if dict.keys.contains("FirewallSubnetCidr") && dict["FirewallSubnetCidr"] != nil {
            self.firewallSubnetCidr = dict["FirewallSubnetCidr"] as! String
        }
        if dict.keys.contains("FirewallSwitchStatus") && dict["FirewallSwitchStatus"] != nil {
            self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
        }
        if dict.keys.contains("FirewallVpcCidr") && dict["FirewallVpcCidr"] != nil {
            self.firewallVpcCidr = dict["FirewallVpcCidr"] as! String
        }
        if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RouteMode") && dict["RouteMode"] != nil {
            self.routeMode = dict["RouteMode"] as! String
        }
        if dict.keys.contains("TrAttachmentMasterCidr") && dict["TrAttachmentMasterCidr"] != nil {
            self.trAttachmentMasterCidr = dict["TrAttachmentMasterCidr"] as! String
        }
        if dict.keys.contains("TrAttachmentSlaveCidr") && dict["TrAttachmentSlaveCidr"] != nil {
            self.trAttachmentSlaveCidr = dict["TrAttachmentSlaveCidr"] as! String
        }
        if dict.keys.contains("TransitRouterId") && dict["TransitRouterId"] != nil {
            self.transitRouterId = dict["TransitRouterId"] as! String
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
            var model = DescribeTrFirewallsV2DetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") && dict["CenId"] != nil {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("FirewallName") && dict["FirewallName"] != nil {
            self.firewallName = dict["FirewallName"] as! String
        }
        if dict.keys.contains("FirewallSwitchStatus") && dict["FirewallSwitchStatus"] != nil {
            self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("RouteMode") && dict["RouteMode"] != nil {
            self.routeMode = dict["RouteMode"] as! String
        }
        if dict.keys.contains("TransitRouterId") && dict["TransitRouterId"] != nil {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
    }
}

public class DescribeTrFirewallsV2ListResponseBody : Tea.TeaModel {
    public class VpcTrFirewalls : Tea.TeaModel {
        public class IpsConfig : Tea.TeaModel {
            public var basicRules: Int32?

            public var enableAllPatch: Int32?

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
                if self.runMode != nil {
                    map["RunMode"] = self.runMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BasicRules") && dict["BasicRules"] != nil {
                    self.basicRules = dict["BasicRules"] as! Int32
                }
                if dict.keys.contains("EnableAllPatch") && dict["EnableAllPatch"] != nil {
                    self.enableAllPatch = dict["EnableAllPatch"] as! Int32
                }
                if dict.keys.contains("RunMode") && dict["RunMode"] != nil {
                    self.runMode = dict["RunMode"] as! Int32
                }
            }
        }
        public class ProtectedResource : Tea.TeaModel {
            public var count: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") && dict["Count"] != nil {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("PeerTrList") && dict["PeerTrList"] != nil {
                    self.peerTrList = dict["PeerTrList"] as! [String]
                }
                if dict.keys.contains("VbrList") && dict["VbrList"] != nil {
                    self.vbrList = dict["VbrList"] as! [String]
                }
                if dict.keys.contains("VpcList") && dict["VpcList"] != nil {
                    self.vpcList = dict["VpcList"] as! [String]
                }
                if dict.keys.contains("VpnList") && dict["VpnList"] != nil {
                    self.vpnList = dict["VpnList"] as! [String]
                }
            }
        }
        public class UnprotectedResource : Tea.TeaModel {
            public var count: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") && dict["Count"] != nil {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("PeerTrList") && dict["PeerTrList"] != nil {
                    self.peerTrList = dict["PeerTrList"] as! [String]
                }
                if dict.keys.contains("VbrList") && dict["VbrList"] != nil {
                    self.vbrList = dict["VbrList"] as! [String]
                }
                if dict.keys.contains("VpcList") && dict["VpcList"] != nil {
                    self.vpcList = dict["VpcList"] as! [String]
                }
                if dict.keys.contains("VpnList") && dict["VpnList"] != nil {
                    self.vpnList = dict["VpnList"] as! [String]
                }
            }
        }
        public var cenId: String?

        public var cenName: String?

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
            try self.ipsConfig?.validate()
            try self.protectedResource?.validate()
            try self.unprotectedResource?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cenId != nil {
                map["CenId"] = self.cenId!
            }
            if self.cenName != nil {
                map["CenName"] = self.cenName!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CenId") && dict["CenId"] != nil {
                self.cenId = dict["CenId"] as! String
            }
            if dict.keys.contains("CenName") && dict["CenName"] != nil {
                self.cenName = dict["CenName"] as! String
            }
            if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
                self.firewallId = dict["FirewallId"] as! String
            }
            if dict.keys.contains("FirewallSwitchStatus") && dict["FirewallSwitchStatus"] != nil {
                self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
            }
            if dict.keys.contains("IpsConfig") && dict["IpsConfig"] != nil {
                var model = DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls.IpsConfig()
                model.fromMap(dict["IpsConfig"] as! [String: Any])
                self.ipsConfig = model
            }
            if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                self.ownerId = dict["OwnerId"] as! Int64
            }
            if dict.keys.contains("PrecheckStatus") && dict["PrecheckStatus"] != nil {
                self.precheckStatus = dict["PrecheckStatus"] as! String
            }
            if dict.keys.contains("ProtectedResource") && dict["ProtectedResource"] != nil {
                var model = DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls.ProtectedResource()
                model.fromMap(dict["ProtectedResource"] as! [String: Any])
                self.protectedResource = model
            }
            if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
                self.regionNo = dict["RegionNo"] as! String
            }
            if dict.keys.contains("RegionStatus") && dict["RegionStatus"] != nil {
                self.regionStatus = dict["RegionStatus"] as! String
            }
            if dict.keys.contains("ResultCode") && dict["ResultCode"] != nil {
                self.resultCode = dict["ResultCode"] as! String
            }
            if dict.keys.contains("RouteMode") && dict["RouteMode"] != nil {
                self.routeMode = dict["RouteMode"] as! String
            }
            if dict.keys.contains("TransitRouterId") && dict["TransitRouterId"] != nil {
                self.transitRouterId = dict["TransitRouterId"] as! String
            }
            if dict.keys.contains("UnprotectedResource") && dict["UnprotectedResource"] != nil {
                var model = DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls.UnprotectedResource()
                model.fromMap(dict["UnprotectedResource"] as! [String: Any])
                self.unprotectedResource = model
            }
            if dict.keys.contains("VpcFirewallName") && dict["VpcFirewallName"] != nil {
                self.vpcFirewallName = dict["VpcFirewallName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
        if dict.keys.contains("VpcTrFirewalls") && dict["VpcTrFirewalls"] != nil {
            var tmp : [DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls] = []
            for v in dict["VpcTrFirewalls"] as! [Any] {
                var model = DescribeTrFirewallsV2ListResponseBody.VpcTrFirewalls()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = DescribeTrFirewallsV2ListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("TrFirewallRoutePolicyId") && dict["TrFirewallRoutePolicyId"] != nil {
            self.trFirewallRoutePolicyId = dict["TrFirewallRoutePolicyId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TrFirewallRouteDestination") && dict["TrFirewallRouteDestination"] != nil {
                self.trFirewallRouteDestination = dict["TrFirewallRouteDestination"] as! String
            }
            if dict.keys.contains("TrFirewallRouteNexthop") && dict["TrFirewallRouteNexthop"] != nil {
                self.trFirewallRouteNexthop = dict["TrFirewallRouteNexthop"] as! String
            }
            if dict.keys.contains("TrFirewallRoutePolicyId") && dict["TrFirewallRoutePolicyId"] != nil {
                self.trFirewallRoutePolicyId = dict["TrFirewallRoutePolicyId"] as! String
            }
            if dict.keys.contains("TrFirewallRouteTableId") && dict["TrFirewallRouteTableId"] != nil {
                self.trFirewallRouteTableId = dict["TrFirewallRouteTableId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FirewallRouteDetailList") && dict["FirewallRouteDetailList"] != nil {
            var tmp : [DescribeTrFirewallsV2RouteListResponseBody.FirewallRouteDetailList] = []
            for v in dict["FirewallRouteDetailList"] as! [Any] {
                var model = DescribeTrFirewallsV2RouteListResponseBody.FirewallRouteDetailList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.firewallRouteDetailList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DescribeTrFirewallsV2RouteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetIP") && dict["AssetIP"] != nil {
            self.assetIP = dict["AssetIP"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TrafficTime") && dict["TrafficTime"] != nil {
            self.trafficTime = dict["TrafficTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InBps") && dict["InBps"] != nil {
            self.inBps = dict["InBps"] as! Int64
        }
        if dict.keys.contains("InPps") && dict["InPps"] != nil {
            self.inPps = dict["InPps"] as! Int64
        }
        if dict.keys.contains("NewConn") && dict["NewConn"] != nil {
            self.newConn = dict["NewConn"] as! Int64
        }
        if dict.keys.contains("OutBps") && dict["OutBps"] != nil {
            self.outBps = dict["OutBps"] as! Int64
        }
        if dict.keys.contains("OutPps") && dict["OutPps"] != nil {
            self.outPps = dict["OutPps"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SessionCount") && dict["SessionCount"] != nil {
            self.sessionCount = dict["SessionCount"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
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
            var model = DescribeUserAssetIPTrafficInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Direction") && dict["Direction"] != nil {
                self.direction = dict["Direction"] as! Int64
            }
            if dict.keys.contains("ListType") && dict["ListType"] != nil {
                self.listType = dict["ListType"] as! Int64
            }
            if dict.keys.contains("ListValue") && dict["ListValue"] != nil {
                self.listValue = dict["ListValue"] as! String
            }
            if dict.keys.contains("WhiteListValue") && dict["WhiteListValue"] != nil {
                self.whiteListValue = dict["WhiteListValue"] as! [String]
            }
            if dict.keys.contains("WhiteType") && dict["WhiteType"] != nil {
                self.whiteType = dict["WhiteType"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Direction") && dict["Direction"] != nil {
                self.direction = dict["Direction"] as! Int64
            }
            if dict.keys.contains("ListType") && dict["ListType"] != nil {
                self.listType = dict["ListType"] as! Int64
            }
            if dict.keys.contains("ListValue") && dict["ListValue"] != nil {
                self.listValue = dict["ListValue"] as! String
            }
            if dict.keys.contains("WhiteListValue") && dict["WhiteListValue"] != nil {
                self.whiteListValue = dict["WhiteListValue"] as! [String]
            }
            if dict.keys.contains("WhiteType") && dict["WhiteType"] != nil {
                self.whiteType = dict["WhiteType"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ipv6Whitelists") && dict["Ipv6Whitelists"] != nil {
            var tmp : [DescribeUserIPSWhitelistResponseBody.Ipv6Whitelists] = []
            for v in dict["Ipv6Whitelists"] as! [Any] {
                var model = DescribeUserIPSWhitelistResponseBody.Ipv6Whitelists()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ipv6Whitelists = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Whitelists") && dict["Whitelists"] != nil {
            var tmp : [DescribeUserIPSWhitelistResponseBody.Whitelists] = []
            for v in dict["Whitelists"] as! [Any] {
                var model = DescribeUserIPSWhitelistResponseBody.Whitelists()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = DescribeUserIPSWhitelistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVpcFirewallAclGroupListRequest : Tea.TeaModel {
    public var currentPage: String?

    public var firewallConfigureStatus: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("FirewallConfigureStatus") && dict["FirewallConfigureStatus"] != nil {
            self.firewallConfigureStatus = dict["FirewallConfigureStatus"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
    }
}

public class DescribeVpcFirewallAclGroupListResponseBody : Tea.TeaModel {
    public class AclGroupList : Tea.TeaModel {
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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclGroupId") && dict["AclGroupId"] != nil {
                self.aclGroupId = dict["AclGroupId"] as! String
            }
            if dict.keys.contains("AclGroupName") && dict["AclGroupName"] != nil {
                self.aclGroupName = dict["AclGroupName"] as! String
            }
            if dict.keys.contains("AclRuleCount") && dict["AclRuleCount"] != nil {
                self.aclRuleCount = dict["AclRuleCount"] as! Int32
            }
            if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
                self.memberUid = dict["MemberUid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclGroupList") && dict["AclGroupList"] != nil {
            var tmp : [DescribeVpcFirewallAclGroupListResponseBody.AclGroupList] = []
            for v in dict["AclGroupList"] as! [Any] {
                var model = DescribeVpcFirewallAclGroupListResponseBody.AclGroupList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.aclGroupList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = DescribeVpcFirewallAclGroupListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NetworkInstanceId") && dict["NetworkInstanceId"] != nil {
            self.networkInstanceId = dict["NetworkInstanceId"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
    }
}

public class DescribeVpcFirewallCenDetailResponseBody : Tea.TeaModel {
    public class FirewallVpc : Tea.TeaModel {
        public var allowConfiguration: Int32?

        public var vpcCidr: String?

        public var vpcId: String?

        public var vswitchCidr: String?

        public var vswitchId: String?

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
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowConfiguration") && dict["AllowConfiguration"] != nil {
                self.allowConfiguration = dict["AllowConfiguration"] as! Int32
            }
            if dict.keys.contains("VpcCidr") && dict["VpcCidr"] != nil {
                self.vpcCidr = dict["VpcCidr"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VswitchCidr") && dict["VswitchCidr"] != nil {
                self.vswitchCidr = dict["VswitchCidr"] as! String
            }
            if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
                self.vswitchId = dict["VswitchId"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EniId") && dict["EniId"] != nil {
                    self.eniId = dict["EniId"] as! String
                }
                if dict.keys.contains("EniPrivateIpAddress") && dict["EniPrivateIpAddress"] != nil {
                    self.eniPrivateIpAddress = dict["EniPrivateIpAddress"] as! String
                }
                if dict.keys.contains("EniVSwitchId") && dict["EniVSwitchId"] != nil {
                    self.eniVSwitchId = dict["EniVSwitchId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DestinationCidr") && dict["DestinationCidr"] != nil {
                        self.destinationCidr = dict["DestinationCidr"] as! String
                    }
                    if dict.keys.contains("NextHopInstanceId") && dict["NextHopInstanceId"] != nil {
                        self.nextHopInstanceId = dict["NextHopInstanceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RouteEntryList") && dict["RouteEntryList"] != nil {
                    var tmp : [DescribeVpcFirewallCenDetailResponseBody.LocalVpc.VpcCidrTableList.RouteEntryList] = []
                    for v in dict["RouteEntryList"] as! [Any] {
                        var model = DescribeVpcFirewallCenDetailResponseBody.LocalVpc.VpcCidrTableList.RouteEntryList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.routeEntryList = tmp
                }
                if dict.keys.contains("RouteTableId") && dict["RouteTableId"] != nil {
                    self.routeTableId = dict["RouteTableId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttachmentId") && dict["AttachmentId"] != nil {
                self.attachmentId = dict["AttachmentId"] as! String
            }
            if dict.keys.contains("AttachmentName") && dict["AttachmentName"] != nil {
                self.attachmentName = dict["AttachmentName"] as! String
            }
            if dict.keys.contains("DefendCidrList") && dict["DefendCidrList"] != nil {
                self.defendCidrList = dict["DefendCidrList"] as! [String]
            }
            if dict.keys.contains("EniList") && dict["EniList"] != nil {
                var tmp : [DescribeVpcFirewallCenDetailResponseBody.LocalVpc.EniList] = []
                for v in dict["EniList"] as! [Any] {
                    var model = DescribeVpcFirewallCenDetailResponseBody.LocalVpc.EniList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.eniList = tmp
            }
            if dict.keys.contains("ManualVSwitchId") && dict["ManualVSwitchId"] != nil {
                self.manualVSwitchId = dict["ManualVSwitchId"] as! String
            }
            if dict.keys.contains("NetworkInstanceId") && dict["NetworkInstanceId"] != nil {
                self.networkInstanceId = dict["NetworkInstanceId"] as! String
            }
            if dict.keys.contains("NetworkInstanceName") && dict["NetworkInstanceName"] != nil {
                self.networkInstanceName = dict["NetworkInstanceName"] as! String
            }
            if dict.keys.contains("NetworkInstanceType") && dict["NetworkInstanceType"] != nil {
                self.networkInstanceType = dict["NetworkInstanceType"] as! String
            }
            if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
                self.regionNo = dict["RegionNo"] as! String
            }
            if dict.keys.contains("RouteMode") && dict["RouteMode"] != nil {
                self.routeMode = dict["RouteMode"] as! String
            }
            if dict.keys.contains("SupportManualMode") && dict["SupportManualMode"] != nil {
                self.supportManualMode = dict["SupportManualMode"] as! String
            }
            if dict.keys.contains("TransitRouterId") && dict["TransitRouterId"] != nil {
                self.transitRouterId = dict["TransitRouterId"] as! String
            }
            if dict.keys.contains("TransitRouterType") && dict["TransitRouterType"] != nil {
                self.transitRouterType = dict["TransitRouterType"] as! String
            }
            if dict.keys.contains("VpcCidrTableList") && dict["VpcCidrTableList"] != nil {
                var tmp : [DescribeVpcFirewallCenDetailResponseBody.LocalVpc.VpcCidrTableList] = []
                for v in dict["VpcCidrTableList"] as! [Any] {
                    var model = DescribeVpcFirewallCenDetailResponseBody.LocalVpc.VpcCidrTableList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.vpcCidrTableList = tmp
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
                self.vpcName = dict["VpcName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectType") && dict["ConnectType"] != nil {
            self.connectType = dict["ConnectType"] as! String
        }
        if dict.keys.contains("FirewallSwitchStatus") && dict["FirewallSwitchStatus"] != nil {
            self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
        }
        if dict.keys.contains("FirewallVpc") && dict["FirewallVpc"] != nil {
            var model = DescribeVpcFirewallCenDetailResponseBody.FirewallVpc()
            model.fromMap(dict["FirewallVpc"] as! [String: Any])
            self.firewallVpc = model
        }
        if dict.keys.contains("LocalVpc") && dict["LocalVpc"] != nil {
            var model = DescribeVpcFirewallCenDetailResponseBody.LocalVpc()
            model.fromMap(dict["LocalVpc"] as! [String: Any])
            self.localVpc = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
        if dict.keys.contains("VpcFirewallName") && dict["VpcFirewallName"] != nil {
            self.vpcFirewallName = dict["VpcFirewallName"] as! String
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
            var model = DescribeVpcFirewallCenDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") && dict["CenId"] != nil {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("FirewallSwitchStatus") && dict["FirewallSwitchStatus"] != nil {
            self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("NetworkInstanceId") && dict["NetworkInstanceId"] != nil {
            self.networkInstanceId = dict["NetworkInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("RouteMode") && dict["RouteMode"] != nil {
            self.routeMode = dict["RouteMode"] as! String
        }
        if dict.keys.contains("TransitRouterType") && dict["TransitRouterType"] != nil {
            self.transitRouterType = dict["TransitRouterType"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
        if dict.keys.contains("VpcFirewallName") && dict["VpcFirewallName"] != nil {
            self.vpcFirewallName = dict["VpcFirewallName"] as! String
        }
    }
}

public class DescribeVpcFirewallCenListResponseBody : Tea.TeaModel {
    public class VpcFirewalls : Tea.TeaModel {
        public class IpsConfig : Tea.TeaModel {
            public var basicRules: Int32?

            public var enableAllPatch: Int32?

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
                if self.runMode != nil {
                    map["RunMode"] = self.runMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BasicRules") && dict["BasicRules"] != nil {
                    self.basicRules = dict["BasicRules"] as! Int32
                }
                if dict.keys.contains("EnableAllPatch") && dict["EnableAllPatch"] != nil {
                    self.enableAllPatch = dict["EnableAllPatch"] as! Int32
                }
                if dict.keys.contains("RunMode") && dict["RunMode"] != nil {
                    self.runMode = dict["RunMode"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DestinationCidr") && dict["DestinationCidr"] != nil {
                            self.destinationCidr = dict["DestinationCidr"] as! String
                        }
                        if dict.keys.contains("NextHopInstanceId") && dict["NextHopInstanceId"] != nil {
                            self.nextHopInstanceId = dict["NextHopInstanceId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RouteEntryList") && dict["RouteEntryList"] != nil {
                        var tmp : [DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList.RouteEntryList] = []
                        for v in dict["RouteEntryList"] as! [Any] {
                            var model = DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList.RouteEntryList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.routeEntryList = tmp
                    }
                    if dict.keys.contains("RouteTableId") && dict["RouteTableId"] != nil {
                        self.routeTableId = dict["RouteTableId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthorizationStatus") && dict["AuthorizationStatus"] != nil {
                    self.authorizationStatus = dict["AuthorizationStatus"] as! String
                }
                if dict.keys.contains("DefendCidrList") && dict["DefendCidrList"] != nil {
                    self.defendCidrList = dict["DefendCidrList"] as! [String]
                }
                if dict.keys.contains("ManualVSwitchId") && dict["ManualVSwitchId"] != nil {
                    self.manualVSwitchId = dict["ManualVSwitchId"] as! String
                }
                if dict.keys.contains("NetworkInstanceId") && dict["NetworkInstanceId"] != nil {
                    self.networkInstanceId = dict["NetworkInstanceId"] as! String
                }
                if dict.keys.contains("NetworkInstanceName") && dict["NetworkInstanceName"] != nil {
                    self.networkInstanceName = dict["NetworkInstanceName"] as! String
                }
                if dict.keys.contains("NetworkInstanceType") && dict["NetworkInstanceType"] != nil {
                    self.networkInstanceType = dict["NetworkInstanceType"] as! String
                }
                if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                    self.ownerId = dict["OwnerId"] as! Int64
                }
                if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
                    self.regionNo = dict["RegionNo"] as! String
                }
                if dict.keys.contains("RouteMode") && dict["RouteMode"] != nil {
                    self.routeMode = dict["RouteMode"] as! String
                }
                if dict.keys.contains("SupportManualMode") && dict["SupportManualMode"] != nil {
                    self.supportManualMode = dict["SupportManualMode"] as! String
                }
                if dict.keys.contains("TransitRouterType") && dict["TransitRouterType"] != nil {
                    self.transitRouterType = dict["TransitRouterType"] as! String
                }
                if dict.keys.contains("VpcCidrTableList") && dict["VpcCidrTableList"] != nil {
                    var tmp : [DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList] = []
                    for v in dict["VpcCidrTableList"] as! [Any] {
                        var model = DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.vpcCidrTableList = tmp
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
                    self.vpcName = dict["VpcName"] as! String
                }
            }
        }
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
            try self.ipsConfig?.validate()
            try self.localVpc?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CenId") && dict["CenId"] != nil {
                self.cenId = dict["CenId"] as! String
            }
            if dict.keys.contains("CenName") && dict["CenName"] != nil {
                self.cenName = dict["CenName"] as! String
            }
            if dict.keys.contains("ConnectType") && dict["ConnectType"] != nil {
                self.connectType = dict["ConnectType"] as! String
            }
            if dict.keys.contains("FirewallSwitchStatus") && dict["FirewallSwitchStatus"] != nil {
                self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
            }
            if dict.keys.contains("IpsConfig") && dict["IpsConfig"] != nil {
                var model = DescribeVpcFirewallCenListResponseBody.VpcFirewalls.IpsConfig()
                model.fromMap(dict["IpsConfig"] as! [String: Any])
                self.ipsConfig = model
            }
            if dict.keys.contains("LocalVpc") && dict["LocalVpc"] != nil {
                var model = DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc()
                model.fromMap(dict["LocalVpc"] as! [String: Any])
                self.localVpc = model
            }
            if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
                self.memberUid = dict["MemberUid"] as! String
            }
            if dict.keys.contains("PrecheckStatus") && dict["PrecheckStatus"] != nil {
                self.precheckStatus = dict["PrecheckStatus"] as! String
            }
            if dict.keys.contains("RegionStatus") && dict["RegionStatus"] != nil {
                self.regionStatus = dict["RegionStatus"] as! String
            }
            if dict.keys.contains("ResultCode") && dict["ResultCode"] != nil {
                self.resultCode = dict["ResultCode"] as! String
            }
            if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
                self.vpcFirewallId = dict["VpcFirewallId"] as! String
            }
            if dict.keys.contains("VpcFirewallName") && dict["VpcFirewallName"] != nil {
                self.vpcFirewallName = dict["VpcFirewallName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("VpcFirewalls") && dict["VpcFirewalls"] != nil {
            var tmp : [DescribeVpcFirewallCenListResponseBody.VpcFirewalls] = []
            for v in dict["VpcFirewalls"] as! [Any] {
                var model = DescribeVpcFirewallCenListResponseBody.VpcFirewalls()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = DescribeVpcFirewallCenListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") && dict["AclAction"] != nil {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Proto") && dict["Proto"] != nil {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") && dict["Release"] != nil {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("RepeatType") && dict["RepeatType"] != nil {
            self.repeatType = dict["RepeatType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclAction") && dict["AclAction"] != nil {
                self.aclAction = dict["AclAction"] as! String
            }
            if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
                self.aclUuid = dict["AclUuid"] as! String
            }
            if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("ApplicationName") && dict["ApplicationName"] != nil {
                self.applicationName = dict["ApplicationName"] as! String
            }
            if dict.keys.contains("ApplicationNameList") && dict["ApplicationNameList"] != nil {
                self.applicationNameList = dict["ApplicationNameList"] as! [String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestPort") && dict["DestPort"] != nil {
                self.destPort = dict["DestPort"] as! String
            }
            if dict.keys.contains("DestPortGroup") && dict["DestPortGroup"] != nil {
                self.destPortGroup = dict["DestPortGroup"] as! String
            }
            if dict.keys.contains("DestPortGroupPorts") && dict["DestPortGroupPorts"] != nil {
                self.destPortGroupPorts = dict["DestPortGroupPorts"] as! [String]
            }
            if dict.keys.contains("DestPortType") && dict["DestPortType"] != nil {
                self.destPortType = dict["DestPortType"] as! String
            }
            if dict.keys.contains("Destination") && dict["Destination"] != nil {
                self.destination = dict["Destination"] as! String
            }
            if dict.keys.contains("DestinationGroupCidrs") && dict["DestinationGroupCidrs"] != nil {
                self.destinationGroupCidrs = dict["DestinationGroupCidrs"] as! [String]
            }
            if dict.keys.contains("DestinationGroupType") && dict["DestinationGroupType"] != nil {
                self.destinationGroupType = dict["DestinationGroupType"] as! String
            }
            if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
                self.destinationType = dict["DestinationType"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("HitLastTime") && dict["HitLastTime"] != nil {
                self.hitLastTime = dict["HitLastTime"] as! Int64
            }
            if dict.keys.contains("HitTimes") && dict["HitTimes"] != nil {
                self.hitTimes = dict["HitTimes"] as! Int64
            }
            if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
                self.memberUid = dict["MemberUid"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! Int64
            }
            if dict.keys.contains("Order") && dict["Order"] != nil {
                self.order = dict["Order"] as! Int32
            }
            if dict.keys.contains("Proto") && dict["Proto"] != nil {
                self.proto = dict["Proto"] as! String
            }
            if dict.keys.contains("Release") && dict["Release"] != nil {
                self.release = dict["Release"] as! String
            }
            if dict.keys.contains("RepeatDays") && dict["RepeatDays"] != nil {
                self.repeatDays = dict["RepeatDays"] as! [Int64]
            }
            if dict.keys.contains("RepeatEndTime") && dict["RepeatEndTime"] != nil {
                self.repeatEndTime = dict["RepeatEndTime"] as! String
            }
            if dict.keys.contains("RepeatStartTime") && dict["RepeatStartTime"] != nil {
                self.repeatStartTime = dict["RepeatStartTime"] as! String
            }
            if dict.keys.contains("RepeatType") && dict["RepeatType"] != nil {
                self.repeatType = dict["RepeatType"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceGroupCidrs") && dict["SourceGroupCidrs"] != nil {
                self.sourceGroupCidrs = dict["SourceGroupCidrs"] as! [String]
            }
            if dict.keys.contains("SourceGroupType") && dict["SourceGroupType"] != nil {
                self.sourceGroupType = dict["SourceGroupType"] as! String
            }
            if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("SpreadCnt") && dict["SpreadCnt"] != nil {
                self.spreadCnt = dict["SpreadCnt"] as! Int64
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policys") && dict["Policys"] != nil {
            var tmp : [DescribeVpcFirewallControlPolicyResponseBody.Policys] = []
            for v in dict["Policys"] as! [Any] {
                var model = DescribeVpcFirewallControlPolicyResponseBody.Policys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policys = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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
            var model = DescribeVpcFirewallControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
    }
}

public class DescribeVpcFirewallDefaultIPSConfigResponseBody : Tea.TeaModel {
    public var basicRules: Int32?

    public var enableAllPatch: Int32?

    public var requestId: String?

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
        if self.runMode != nil {
            map["RunMode"] = self.runMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BasicRules") && dict["BasicRules"] != nil {
            self.basicRules = dict["BasicRules"] as! Int32
        }
        if dict.keys.contains("EnableAllPatch") && dict["EnableAllPatch"] != nil {
            self.enableAllPatch = dict["EnableAllPatch"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RunMode") && dict["RunMode"] != nil {
            self.runMode = dict["RunMode"] as! Int32
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
            var model = DescribeVpcFirewallDefaultIPSConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("LocalVpcId") && dict["LocalVpcId"] != nil {
            self.localVpcId = dict["LocalVpcId"] as! String
        }
        if dict.keys.contains("PeerVpcId") && dict["PeerVpcId"] != nil {
            self.peerVpcId = dict["PeerVpcId"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DestinationCidr") && dict["DestinationCidr"] != nil {
                        self.destinationCidr = dict["DestinationCidr"] as! String
                    }
                    if dict.keys.contains("NextHopInstanceId") && dict["NextHopInstanceId"] != nil {
                        self.nextHopInstanceId = dict["NextHopInstanceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RouteEntryList") && dict["RouteEntryList"] != nil {
                    var tmp : [DescribeVpcFirewallDetailResponseBody.LocalVpc.VpcCidrTableList.RouteEntryList] = []
                    for v in dict["RouteEntryList"] as! [Any] {
                        var model = DescribeVpcFirewallDetailResponseBody.LocalVpc.VpcCidrTableList.RouteEntryList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.routeEntryList = tmp
                }
                if dict.keys.contains("RouteTableId") && dict["RouteTableId"] != nil {
                    self.routeTableId = dict["RouteTableId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EniId") && dict["EniId"] != nil {
                self.eniId = dict["EniId"] as! String
            }
            if dict.keys.contains("EniPrivateIpAddress") && dict["EniPrivateIpAddress"] != nil {
                self.eniPrivateIpAddress = dict["EniPrivateIpAddress"] as! String
            }
            if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
                self.regionNo = dict["RegionNo"] as! String
            }
            if dict.keys.contains("RouterInterfaceId") && dict["RouterInterfaceId"] != nil {
                self.routerInterfaceId = dict["RouterInterfaceId"] as! String
            }
            if dict.keys.contains("VpcCidrTableList") && dict["VpcCidrTableList"] != nil {
                var tmp : [DescribeVpcFirewallDetailResponseBody.LocalVpc.VpcCidrTableList] = []
                for v in dict["VpcCidrTableList"] as! [Any] {
                    var model = DescribeVpcFirewallDetailResponseBody.LocalVpc.VpcCidrTableList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.vpcCidrTableList = tmp
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
                self.vpcName = dict["VpcName"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DestinationCidr") && dict["DestinationCidr"] != nil {
                        self.destinationCidr = dict["DestinationCidr"] as! String
                    }
                    if dict.keys.contains("NextHopInstanceId") && dict["NextHopInstanceId"] != nil {
                        self.nextHopInstanceId = dict["NextHopInstanceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RouteEntryList") && dict["RouteEntryList"] != nil {
                    var tmp : [DescribeVpcFirewallDetailResponseBody.PeerVpc.VpcCidrTableList.RouteEntryList] = []
                    for v in dict["RouteEntryList"] as! [Any] {
                        var model = DescribeVpcFirewallDetailResponseBody.PeerVpc.VpcCidrTableList.RouteEntryList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.routeEntryList = tmp
                }
                if dict.keys.contains("RouteTableId") && dict["RouteTableId"] != nil {
                    self.routeTableId = dict["RouteTableId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EniId") && dict["EniId"] != nil {
                self.eniId = dict["EniId"] as! String
            }
            if dict.keys.contains("EniPrivateIpAddress") && dict["EniPrivateIpAddress"] != nil {
                self.eniPrivateIpAddress = dict["EniPrivateIpAddress"] as! String
            }
            if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
                self.regionNo = dict["RegionNo"] as! String
            }
            if dict.keys.contains("RouterInterfaceId") && dict["RouterInterfaceId"] != nil {
                self.routerInterfaceId = dict["RouterInterfaceId"] as! String
            }
            if dict.keys.contains("VpcCidrTableList") && dict["VpcCidrTableList"] != nil {
                var tmp : [DescribeVpcFirewallDetailResponseBody.PeerVpc.VpcCidrTableList] = []
                for v in dict["VpcCidrTableList"] as! [Any] {
                    var model = DescribeVpcFirewallDetailResponseBody.PeerVpc.VpcCidrTableList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.vpcCidrTableList = tmp
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
                self.vpcName = dict["VpcName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("ConnectType") && dict["ConnectType"] != nil {
            self.connectType = dict["ConnectType"] as! String
        }
        if dict.keys.contains("FirewallSwitchStatus") && dict["FirewallSwitchStatus"] != nil {
            self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
        }
        if dict.keys.contains("LocalVpc") && dict["LocalVpc"] != nil {
            var model = DescribeVpcFirewallDetailResponseBody.LocalVpc()
            model.fromMap(dict["LocalVpc"] as! [String: Any])
            self.localVpc = model
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("PeerVpc") && dict["PeerVpc"] != nil {
            var model = DescribeVpcFirewallDetailResponseBody.PeerVpc()
            model.fromMap(dict["PeerVpc"] as! [String: Any])
            self.peerVpc = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
        if dict.keys.contains("VpcFirewallName") && dict["VpcFirewallName"] != nil {
            self.vpcFirewallName = dict["VpcFirewallName"] as! String
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
            var model = DescribeVpcFirewallDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectSubType") && dict["ConnectSubType"] != nil {
            self.connectSubType = dict["ConnectSubType"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("FirewallSwitchStatus") && dict["FirewallSwitchStatus"] != nil {
            self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("PeerUid") && dict["PeerUid"] != nil {
            self.peerUid = dict["PeerUid"] as! String
        }
        if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
        if dict.keys.contains("VpcFirewallName") && dict["VpcFirewallName"] != nil {
            self.vpcFirewallName = dict["VpcFirewallName"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class DescribeVpcFirewallListResponseBody : Tea.TeaModel {
    public class VpcFirewalls : Tea.TeaModel {
        public class IpsConfig : Tea.TeaModel {
            public var basicRules: Int32?

            public var enableAllPatch: Int32?

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
                if self.runMode != nil {
                    map["RunMode"] = self.runMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BasicRules") && dict["BasicRules"] != nil {
                    self.basicRules = dict["BasicRules"] as! Int32
                }
                if dict.keys.contains("EnableAllPatch") && dict["EnableAllPatch"] != nil {
                    self.enableAllPatch = dict["EnableAllPatch"] as! Int32
                }
                if dict.keys.contains("RunMode") && dict["RunMode"] != nil {
                    self.runMode = dict["RunMode"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DestinationCidr") && dict["DestinationCidr"] != nil {
                            self.destinationCidr = dict["DestinationCidr"] as! String
                        }
                        if dict.keys.contains("NextHopInstanceId") && dict["NextHopInstanceId"] != nil {
                            self.nextHopInstanceId = dict["NextHopInstanceId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RouteEntryList") && dict["RouteEntryList"] != nil {
                        var tmp : [DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList.RouteEntryList] = []
                        for v in dict["RouteEntryList"] as! [Any] {
                            var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList.RouteEntryList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.routeEntryList = tmp
                    }
                    if dict.keys.contains("RouteTableId") && dict["RouteTableId"] != nil {
                        self.routeTableId = dict["RouteTableId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthorizationStatus") && dict["AuthorizationStatus"] != nil {
                    self.authorizationStatus = dict["AuthorizationStatus"] as! String
                }
                if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                    self.ownerId = dict["OwnerId"] as! Int64
                }
                if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
                    self.regionNo = dict["RegionNo"] as! String
                }
                if dict.keys.contains("VpcCidrTableList") && dict["VpcCidrTableList"] != nil {
                    var tmp : [DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList] = []
                    for v in dict["VpcCidrTableList"] as! [Any] {
                        var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.vpcCidrTableList = tmp
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
                    self.vpcName = dict["VpcName"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DestinationCidr") && dict["DestinationCidr"] != nil {
                            self.destinationCidr = dict["DestinationCidr"] as! String
                        }
                        if dict.keys.contains("NextHopInstanceId") && dict["NextHopInstanceId"] != nil {
                            self.nextHopInstanceId = dict["NextHopInstanceId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RouteEntryList") && dict["RouteEntryList"] != nil {
                        var tmp : [DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc.VpcCidrTableList.RouteEntryList] = []
                        for v in dict["RouteEntryList"] as! [Any] {
                            var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc.VpcCidrTableList.RouteEntryList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.routeEntryList = tmp
                    }
                    if dict.keys.contains("RouteTableId") && dict["RouteTableId"] != nil {
                        self.routeTableId = dict["RouteTableId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthorizationStatus") && dict["AuthorizationStatus"] != nil {
                    self.authorizationStatus = dict["AuthorizationStatus"] as! String
                }
                if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                    self.ownerId = dict["OwnerId"] as! Int64
                }
                if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
                    self.regionNo = dict["RegionNo"] as! String
                }
                if dict.keys.contains("VpcCidrTableList") && dict["VpcCidrTableList"] != nil {
                    var tmp : [DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc.VpcCidrTableList] = []
                    for v in dict["VpcCidrTableList"] as! [Any] {
                        var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc.VpcCidrTableList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.vpcCidrTableList = tmp
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
                    self.vpcName = dict["VpcName"] as! String
                }
            }
        }
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
            try self.ipsConfig?.validate()
            try self.localVpc?.validate()
            try self.peerVpc?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("ConnectSubType") && dict["ConnectSubType"] != nil {
                self.connectSubType = dict["ConnectSubType"] as! String
            }
            if dict.keys.contains("ConnectType") && dict["ConnectType"] != nil {
                self.connectType = dict["ConnectType"] as! String
            }
            if dict.keys.contains("FirewallSwitchStatus") && dict["FirewallSwitchStatus"] != nil {
                self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
            }
            if dict.keys.contains("IpsConfig") && dict["IpsConfig"] != nil {
                var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.IpsConfig()
                model.fromMap(dict["IpsConfig"] as! [String: Any])
                self.ipsConfig = model
            }
            if dict.keys.contains("LocalVpc") && dict["LocalVpc"] != nil {
                var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc()
                model.fromMap(dict["LocalVpc"] as! [String: Any])
                self.localVpc = model
            }
            if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
                self.memberUid = dict["MemberUid"] as! String
            }
            if dict.keys.contains("PeerVpc") && dict["PeerVpc"] != nil {
                var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc()
                model.fromMap(dict["PeerVpc"] as! [String: Any])
                self.peerVpc = model
            }
            if dict.keys.contains("RegionStatus") && dict["RegionStatus"] != nil {
                self.regionStatus = dict["RegionStatus"] as! String
            }
            if dict.keys.contains("ResultCode") && dict["ResultCode"] != nil {
                self.resultCode = dict["ResultCode"] as! String
            }
            if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
                self.vpcFirewallId = dict["VpcFirewallId"] as! String
            }
            if dict.keys.contains("VpcFirewallName") && dict["VpcFirewallName"] != nil {
                self.vpcFirewallName = dict["VpcFirewallName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("VpcFirewalls") && dict["VpcFirewalls"] != nil {
            var tmp : [DescribeVpcFirewallListResponseBody.VpcFirewalls] = []
            for v in dict["VpcFirewalls"] as! [Any] {
                var model = DescribeVpcFirewallListResponseBody.VpcFirewalls()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = DescribeVpcFirewallListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("End") && dict["End"] != nil {
            self.end = dict["End"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Start") && dict["Start"] != nil {
            self.start = dict["Start"] as! Int32
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
            var model = DescribeVpcFirewallPolicyPriorUsedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttackType") && dict["AttackType"] != nil {
            self.attackType = dict["AttackType"] as! String
        }
        if dict.keys.contains("BuyVersion") && dict["BuyVersion"] != nil {
            self.buyVersion = dict["BuyVersion"] as! Int64
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SortKey") && dict["SortKey"] != nil {
            self.sortKey = dict["SortKey"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("UserType") && dict["UserType"] != nil {
            self.userType = dict["UserType"] as! String
        }
        if dict.keys.contains("VulnCveName") && dict["VulnCveName"] != nil {
            self.vulnCveName = dict["VulnCveName"] as! String
        }
        if dict.keys.contains("VulnLevel") && dict["VulnLevel"] != nil {
            self.vulnLevel = dict["VulnLevel"] as! String
        }
        if dict.keys.contains("VulnResource") && dict["VulnResource"] != nil {
            self.vulnResource = dict["VulnResource"] as! String
        }
        if dict.keys.contains("VulnStatus") && dict["VulnStatus"] != nil {
            self.vulnStatus = dict["VulnStatus"] as! String
        }
        if dict.keys.contains("VulnType") && dict["VulnType"] != nil {
            self.vulnType = dict["VulnType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Eip") && dict["Eip"] != nil {
                    self.eip = dict["Eip"] as! String
                }
                if dict.keys.contains("InternetIp") && dict["InternetIp"] != nil {
                    self.internetIp = dict["InternetIp"] as! String
                }
                if dict.keys.contains("IntranetIp") && dict["IntranetIp"] != nil {
                    self.intranetIp = dict["IntranetIp"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("VulnStatus") && dict["VulnStatus"] != nil {
                    self.vulnStatus = dict["VulnStatus"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttackCnt") && dict["AttackCnt"] != nil {
                self.attackCnt = dict["AttackCnt"] as! Int32
            }
            if dict.keys.contains("AttackType") && dict["AttackType"] != nil {
                self.attackType = dict["AttackType"] as! Int32
            }
            if dict.keys.contains("BasicRuleIds") && dict["BasicRuleIds"] != nil {
                self.basicRuleIds = dict["BasicRuleIds"] as! String
            }
            if dict.keys.contains("CveId") && dict["CveId"] != nil {
                self.cveId = dict["CveId"] as! String
            }
            if dict.keys.contains("FirstTime") && dict["FirstTime"] != nil {
                self.firstTime = dict["FirstTime"] as! Int64
            }
            if dict.keys.contains("HighlightTag") && dict["HighlightTag"] != nil {
                self.highlightTag = dict["HighlightTag"] as! Int32
            }
            if dict.keys.contains("LastTime") && dict["LastTime"] != nil {
                self.lastTime = dict["LastTime"] as! Int64
            }
            if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
                self.memberUid = dict["MemberUid"] as! String
            }
            if dict.keys.contains("NeedOpenBasicRule") && dict["NeedOpenBasicRule"] != nil {
                self.needOpenBasicRule = dict["NeedOpenBasicRule"] as! Bool
            }
            if dict.keys.contains("NeedOpenBasicRuleUuids") && dict["NeedOpenBasicRuleUuids"] != nil {
                self.needOpenBasicRuleUuids = dict["NeedOpenBasicRuleUuids"] as! String
            }
            if dict.keys.contains("NeedOpenRunMode") && dict["NeedOpenRunMode"] != nil {
                self.needOpenRunMode = dict["NeedOpenRunMode"] as! Bool
            }
            if dict.keys.contains("NeedOpenVirtualPatche") && dict["NeedOpenVirtualPatche"] != nil {
                self.needOpenVirtualPatche = dict["NeedOpenVirtualPatche"] as! Bool
            }
            if dict.keys.contains("NeedOpenVirtualPatcheUuids") && dict["NeedOpenVirtualPatcheUuids"] != nil {
                self.needOpenVirtualPatcheUuids = dict["NeedOpenVirtualPatcheUuids"] as! String
            }
            if dict.keys.contains("NeedRuleClass") && dict["NeedRuleClass"] != nil {
                self.needRuleClass = dict["NeedRuleClass"] as! Int32
            }
            if dict.keys.contains("ResourceCnt") && dict["ResourceCnt"] != nil {
                self.resourceCnt = dict["ResourceCnt"] as! Int32
            }
            if dict.keys.contains("ResourceList") && dict["ResourceList"] != nil {
                var tmp : [DescribeVulnerabilityProtectedListResponseBody.VulnList.ResourceList] = []
                for v in dict["ResourceList"] as! [Any] {
                    var model = DescribeVulnerabilityProtectedListResponseBody.VulnList.ResourceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resourceList = tmp
            }
            if dict.keys.contains("VirtualPatcheIds") && dict["VirtualPatcheIds"] != nil {
                self.virtualPatcheIds = dict["VirtualPatcheIds"] as! String
            }
            if dict.keys.contains("VulnKey") && dict["VulnKey"] != nil {
                self.vulnKey = dict["VulnKey"] as! String
            }
            if dict.keys.contains("VulnLevel") && dict["VulnLevel"] != nil {
                self.vulnLevel = dict["VulnLevel"] as! String
            }
            if dict.keys.contains("VulnName") && dict["VulnName"] != nil {
                self.vulnName = dict["VulnName"] as! String
            }
            if dict.keys.contains("VulnStatus") && dict["VulnStatus"] != nil {
                self.vulnStatus = dict["VulnStatus"] as! String
            }
            if dict.keys.contains("VulnType") && dict["VulnType"] != nil {
                self.vulnType = dict["VulnType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("VulnList") && dict["VulnList"] != nil {
            var tmp : [DescribeVulnerabilityProtectedListResponseBody.VulnList] = []
            for v in dict["VulnList"] as! [Any] {
                var model = DescribeVulnerabilityProtectedListResponseBody.VulnList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.vulnList = tmp
        }
        if dict.keys.contains("ZeroResourceCount") && dict["ZeroResourceCount"] != nil {
            self.zeroResourceCount = dict["ZeroResourceCount"] as! Int32
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
            var model = DescribeVulnerabilityProtectedListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                self.tagValue = dict["TagValue"] as! String
            }
        }
    }
    public var addressList: String?

    public var autoAddTagEcs: String?

    public var description_: String?

    public var groupName: String?

    public var groupUuid: String?

    public var lang: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressList") && dict["AddressList"] != nil {
            self.addressList = dict["AddressList"] as! String
        }
        if dict.keys.contains("AutoAddTagEcs") && dict["AutoAddTagEcs"] != nil {
            self.autoAddTagEcs = dict["AutoAddTagEcs"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupUuid") && dict["GroupUuid"] != nil {
            self.groupUuid = dict["GroupUuid"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("TagList") && dict["TagList"] != nil {
            var tmp : [ModifyAddressBookRequest.TagList] = []
            for v in dict["TagList"] as! [Any] {
                var model = ModifyAddressBookRequest.TagList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagList = tmp
        }
        if dict.keys.contains("TagRelation") && dict["TagRelation"] != nil {
            self.tagRelation = dict["TagRelation"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyAddressBookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") && dict["AclAction"] != nil {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("ApplicationName") && dict["ApplicationName"] != nil {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("ApplicationNameList") && dict["ApplicationNameList"] != nil {
            self.applicationNameList = dict["ApplicationNameList"] as! [String]
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestPort") && dict["DestPort"] != nil {
            self.destPort = dict["DestPort"] as! String
        }
        if dict.keys.contains("DestPortGroup") && dict["DestPortGroup"] != nil {
            self.destPortGroup = dict["DestPortGroup"] as! String
        }
        if dict.keys.contains("DestPortType") && dict["DestPortType"] != nil {
            self.destPortType = dict["DestPortType"] as! String
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Proto") && dict["Proto"] != nil {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") && dict["Release"] != nil {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("RepeatDays") && dict["RepeatDays"] != nil {
            self.repeatDays = dict["RepeatDays"] as! [Int64]
        }
        if dict.keys.contains("RepeatEndTime") && dict["RepeatEndTime"] != nil {
            self.repeatEndTime = dict["RepeatEndTime"] as! String
        }
        if dict.keys.contains("RepeatStartTime") && dict["RepeatStartTime"] != nil {
            self.repeatStartTime = dict["RepeatStartTime"] as! String
        }
        if dict.keys.contains("RepeatType") && dict["RepeatType"] != nil {
            self.repeatType = dict["RepeatType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NewOrder") && dict["NewOrder"] != nil {
            self.newOrder = dict["NewOrder"] as! String
        }
        if dict.keys.contains("OldOrder") && dict["OldOrder"] != nil {
            self.oldOrder = dict["OldOrder"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyControlPolicyPositionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDefaultIPSConfigRequest : Tea.TeaModel {
    public var aiRules: String?

    public var basicRules: String?

    public var ctiRules: String?

    public var enableAllPatch: String?

    public var enableDefault: String?

    public var lang: String?

    public var patchRules: String?

    public var ruleClass: String?

    public var runMode: String?

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
        if self.aiRules != nil {
            map["AiRules"] = self.aiRules!
        }
        if self.basicRules != nil {
            map["BasicRules"] = self.basicRules!
        }
        if self.ctiRules != nil {
            map["CtiRules"] = self.ctiRules!
        }
        if self.enableAllPatch != nil {
            map["EnableAllPatch"] = self.enableAllPatch!
        }
        if self.enableDefault != nil {
            map["EnableDefault"] = self.enableDefault!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
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
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AiRules") && dict["AiRules"] != nil {
            self.aiRules = dict["AiRules"] as! String
        }
        if dict.keys.contains("BasicRules") && dict["BasicRules"] != nil {
            self.basicRules = dict["BasicRules"] as! String
        }
        if dict.keys.contains("CtiRules") && dict["CtiRules"] != nil {
            self.ctiRules = dict["CtiRules"] as! String
        }
        if dict.keys.contains("EnableAllPatch") && dict["EnableAllPatch"] != nil {
            self.enableAllPatch = dict["EnableAllPatch"] as! String
        }
        if dict.keys.contains("EnableDefault") && dict["EnableDefault"] != nil {
            self.enableDefault = dict["EnableDefault"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PatchRules") && dict["PatchRules"] != nil {
            self.patchRules = dict["PatchRules"] as! String
        }
        if dict.keys.contains("RuleClass") && dict["RuleClass"] != nil {
            self.ruleClass = dict["RuleClass"] as! String
        }
        if dict.keys.contains("RunMode") && dict["RunMode"] != nil {
            self.runMode = dict["RunMode"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyDefaultIPSConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ShouldRecover") && dict["ShouldRecover"] != nil {
            self.shouldRecover = dict["ShouldRecover"] as! String
        }
        if dict.keys.contains("TrFirewallRoutePolicyId") && dict["TrFirewallRoutePolicyId"] != nil {
            self.trFirewallRoutePolicyId = dict["TrFirewallRoutePolicyId"] as! String
        }
        if dict.keys.contains("TrFirewallRoutePolicySwitchStatus") && dict["TrFirewallRoutePolicySwitchStatus"] != nil {
            self.trFirewallRoutePolicySwitchStatus = dict["TrFirewallRoutePolicySwitchStatus"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyFirewallV2RoutePolicySwitchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberDesc") && dict["MemberDesc"] != nil {
                self.memberDesc = dict["MemberDesc"] as! String
            }
            if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
                self.memberUid = dict["MemberUid"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [ModifyInstanceMemberAttributesRequest.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = ModifyInstanceMemberAttributesRequest.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyInstanceMemberAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") && dict["AclAction"] != nil {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("ApplicationNameList") && dict["ApplicationNameList"] != nil {
            self.applicationNameList = dict["ApplicationNameList"] as! [String]
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestPort") && dict["DestPort"] != nil {
            self.destPort = dict["DestPort"] as! String
        }
        if dict.keys.contains("DestPortGroup") && dict["DestPortGroup"] != nil {
            self.destPortGroup = dict["DestPortGroup"] as! String
        }
        if dict.keys.contains("DestPortType") && dict["DestPortType"] != nil {
            self.destPortType = dict["DestPortType"] as! String
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("DomainResolveType") && dict["DomainResolveType"] != nil {
            self.domainResolveType = dict["DomainResolveType"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NatGatewayId") && dict["NatGatewayId"] != nil {
            self.natGatewayId = dict["NatGatewayId"] as! String
        }
        if dict.keys.contains("Proto") && dict["Proto"] != nil {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") && dict["Release"] != nil {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("RepeatDays") && dict["RepeatDays"] != nil {
            self.repeatDays = dict["RepeatDays"] as! [Int64]
        }
        if dict.keys.contains("RepeatEndTime") && dict["RepeatEndTime"] != nil {
            self.repeatEndTime = dict["RepeatEndTime"] as! String
        }
        if dict.keys.contains("RepeatStartTime") && dict["RepeatStartTime"] != nil {
            self.repeatStartTime = dict["RepeatStartTime"] as! String
        }
        if dict.keys.contains("RepeatType") && dict["RepeatType"] != nil {
            self.repeatType = dict["RepeatType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyNatFirewallControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NatGatewayId") && dict["NatGatewayId"] != nil {
            self.natGatewayId = dict["NatGatewayId"] as! String
        }
        if dict.keys.contains("NewOrder") && dict["NewOrder"] != nil {
            self.newOrder = dict["NewOrder"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyNatFirewallControlPolicyPositionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPolicyAdvancedConfigRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InternetSwitch") && dict["InternetSwitch"] != nil {
            self.internetSwitch = dict["InternetSwitch"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyPolicyAdvancedConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("FirewallName") && dict["FirewallName"] != nil {
            self.firewallName = dict["FirewallName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyTrFirewallV2ConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CandidateId") && dict["CandidateId"] != nil {
                self.candidateId = dict["CandidateId"] as! String
            }
            if dict.keys.contains("CandidateType") && dict["CandidateType"] != nil {
                self.candidateType = dict["CandidateType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CandidateId") && dict["CandidateId"] != nil {
                self.candidateId = dict["CandidateId"] as! String
            }
            if dict.keys.contains("CandidateType") && dict["CandidateType"] != nil {
                self.candidateType = dict["CandidateType"] as! String
            }
        }
    }
    public var destCandidateList: [ModifyTrFirewallV2RoutePolicyScopeRequest.DestCandidateList]?

    public var firewallId: String?

    public var lang: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestCandidateList") && dict["DestCandidateList"] != nil {
            var tmp : [ModifyTrFirewallV2RoutePolicyScopeRequest.DestCandidateList] = []
            for v in dict["DestCandidateList"] as! [Any] {
                var model = ModifyTrFirewallV2RoutePolicyScopeRequest.DestCandidateList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.destCandidateList = tmp
        }
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SrcCandidateList") && dict["SrcCandidateList"] != nil {
            var tmp : [ModifyTrFirewallV2RoutePolicyScopeRequest.SrcCandidateList] = []
            for v in dict["SrcCandidateList"] as! [Any] {
                var model = ModifyTrFirewallV2RoutePolicyScopeRequest.SrcCandidateList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.srcCandidateList = tmp
        }
        if dict.keys.contains("TrFirewallRoutePolicyId") && dict["TrFirewallRoutePolicyId"] != nil {
            self.trFirewallRoutePolicyId = dict["TrFirewallRoutePolicyId"] as! String
        }
    }
}

public class ModifyTrFirewallV2RoutePolicyScopeShrinkRequest : Tea.TeaModel {
    public var destCandidateListShrink: String?

    public var firewallId: String?

    public var lang: String?

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
        if self.srcCandidateListShrink != nil {
            map["SrcCandidateList"] = self.srcCandidateListShrink!
        }
        if self.trFirewallRoutePolicyId != nil {
            map["TrFirewallRoutePolicyId"] = self.trFirewallRoutePolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestCandidateList") && dict["DestCandidateList"] != nil {
            self.destCandidateListShrink = dict["DestCandidateList"] as! String
        }
        if dict.keys.contains("FirewallId") && dict["FirewallId"] != nil {
            self.firewallId = dict["FirewallId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SrcCandidateList") && dict["SrcCandidateList"] != nil {
            self.srcCandidateListShrink = dict["SrcCandidateList"] as! String
        }
        if dict.keys.contains("TrFirewallRoutePolicyId") && dict["TrFirewallRoutePolicyId"] != nil {
            self.trFirewallRoutePolicyId = dict["TrFirewallRoutePolicyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrFirewallRoutePolicyId") && dict["TrFirewallRoutePolicyId"] != nil {
            self.trFirewallRoutePolicyId = dict["TrFirewallRoutePolicyId"] as! String
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
            var model = ModifyTrFirewallV2RoutePolicyScopeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! Int64
        }
        if dict.keys.contains("IpVersion") && dict["IpVersion"] != nil {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ListType") && dict["ListType"] != nil {
            self.listType = dict["ListType"] as! Int64
        }
        if dict.keys.contains("ListValue") && dict["ListValue"] != nil {
            self.listValue = dict["ListValue"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("WhiteType") && dict["WhiteType"] != nil {
            self.whiteType = dict["WhiteType"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyUserIPSWhitelistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
        if dict.keys.contains("VpcFirewallName") && dict["VpcFirewallName"] != nil {
            self.vpcFirewallName = dict["VpcFirewallName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyVpcFirewallCenConfigureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FirewallSwitch") && dict["FirewallSwitch"] != nil {
            self.firewallSwitch = dict["FirewallSwitch"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyVpcFirewallCenSwitchStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("LocalVpcCidrTableList") && dict["LocalVpcCidrTableList"] != nil {
            self.localVpcCidrTableList = dict["LocalVpcCidrTableList"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("PeerVpcCidrTableList") && dict["PeerVpcCidrTableList"] != nil {
            self.peerVpcCidrTableList = dict["PeerVpcCidrTableList"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
        if dict.keys.contains("VpcFirewallName") && dict["VpcFirewallName"] != nil {
            self.vpcFirewallName = dict["VpcFirewallName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyVpcFirewallConfigureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") && dict["AclAction"] != nil {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("ApplicationName") && dict["ApplicationName"] != nil {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("ApplicationNameList") && dict["ApplicationNameList"] != nil {
            self.applicationNameList = dict["ApplicationNameList"] as! [String]
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestPort") && dict["DestPort"] != nil {
            self.destPort = dict["DestPort"] as! String
        }
        if dict.keys.contains("DestPortGroup") && dict["DestPortGroup"] != nil {
            self.destPortGroup = dict["DestPortGroup"] as! String
        }
        if dict.keys.contains("DestPortType") && dict["DestPortType"] != nil {
            self.destPortType = dict["DestPortType"] as! String
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Proto") && dict["Proto"] != nil {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") && dict["Release"] != nil {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("RepeatDays") && dict["RepeatDays"] != nil {
            self.repeatDays = dict["RepeatDays"] as! [Int64]
        }
        if dict.keys.contains("RepeatEndTime") && dict["RepeatEndTime"] != nil {
            self.repeatEndTime = dict["RepeatEndTime"] as! String
        }
        if dict.keys.contains("RepeatStartTime") && dict["RepeatStartTime"] != nil {
            self.repeatStartTime = dict["RepeatStartTime"] as! String
        }
        if dict.keys.contains("RepeatType") && dict["RepeatType"] != nil {
            self.repeatType = dict["RepeatType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyVpcFirewallControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NewOrder") && dict["NewOrder"] != nil {
            self.newOrder = dict["NewOrder"] as! String
        }
        if dict.keys.contains("OldOrder") && dict["OldOrder"] != nil {
            self.oldOrder = dict["OldOrder"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyVpcFirewallControlPolicyPositionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyVpcFirewallDefaultIPSConfigRequest : Tea.TeaModel {
    public var basicRules: String?

    public var enableAllPatch: String?

    public var lang: String?

    public var memberUid: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BasicRules") && dict["BasicRules"] != nil {
            self.basicRules = dict["BasicRules"] as! String
        }
        if dict.keys.contains("EnableAllPatch") && dict["EnableAllPatch"] != nil {
            self.enableAllPatch = dict["EnableAllPatch"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("RunMode") && dict["RunMode"] != nil {
            self.runMode = dict["RunMode"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyVpcFirewallDefaultIPSConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FirewallSwitch") && dict["FirewallSwitch"] != nil {
            self.firewallSwitch = dict["FirewallSwitch"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("VpcFirewallId") && dict["VpcFirewallId"] != nil {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyVpcFirewallSwitchStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = PutDisableAllFwSwitchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpaddrList") && dict["IpaddrList"] != nil {
            self.ipaddrList = dict["IpaddrList"] as! [String]
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegionList") && dict["RegionList"] != nil {
            self.regionList = dict["RegionList"] as! [String]
        }
        if dict.keys.contains("ResourceTypeList") && dict["ResourceTypeList"] != nil {
            self.resourceTypeList = dict["ResourceTypeList"] as! [String]
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = PutDisableFwSwitchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = PutEnableAllFwSwitchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpaddrList") && dict["IpaddrList"] != nil {
            self.ipaddrList = dict["IpaddrList"] as! [String]
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegionList") && dict["RegionList"] != nil {
            self.regionList = dict["RegionList"] as! [String]
        }
        if dict.keys.contains("ResourceTypeList") && dict["ResourceTypeList"] != nil {
            self.resourceTypeList = dict["ResourceTypeList"] as! [String]
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Msg") && dict["Msg"] != nil {
                self.msg = dict["Msg"] as! String
            }
            if dict.keys.contains("Resource") && dict["Resource"] != nil {
                self.resource = dict["Resource"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AbnormalResourceStatusList") && dict["AbnormalResourceStatusList"] != nil {
            var tmp : [PutEnableFwSwitchResponseBody.AbnormalResourceStatusList] = []
            for v in dict["AbnormalResourceStatusList"] as! [Any] {
                var model = PutEnableFwSwitchResponseBody.AbnormalResourceStatusList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.abnormalResourceStatusList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = PutEnableFwSwitchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("ReleaseStatus") && dict["ReleaseStatus"] != nil {
            self.releaseStatus = dict["ReleaseStatus"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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
            var model = ReleasePostInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclUuid") && dict["AclUuid"] != nil {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ResetVpcFirewallRuleHitCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
