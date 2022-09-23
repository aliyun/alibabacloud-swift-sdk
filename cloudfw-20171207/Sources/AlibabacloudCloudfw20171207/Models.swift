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
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") {
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
        if dict.keys.contains("AddressList") {
            self.addressList = dict["AddressList"] as! String
        }
        if dict.keys.contains("AutoAddTagEcs") {
            self.autoAddTagEcs = dict["AutoAddTagEcs"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupType") {
            self.groupType = dict["GroupType"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("TagList") {
            self.tagList = dict["TagList"] as! [AddAddressBookRequest.TagList]
        }
        if dict.keys.contains("TagRelation") {
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
        if dict.keys.contains("GroupUuid") {
            self.groupUuid = dict["GroupUuid"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public var ipVersion: String?

    public var lang: String?

    public var newOrder: String?

    public var proto: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("ApplicationNameList") {
            self.applicationNameList = dict["ApplicationNameList"] as! [String]
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestPort") {
            self.destPort = dict["DestPort"] as! String
        }
        if dict.keys.contains("DestPortGroup") {
            self.destPortGroup = dict["DestPortGroup"] as! String
        }
        if dict.keys.contains("DestPortType") {
            self.destPortType = dict["DestPortType"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationType") {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("IpVersion") {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NewOrder") {
            self.newOrder = dict["NewOrder"] as! String
        }
        if dict.keys.contains("Proto") {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
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
        if dict.keys.contains("AclUuid") {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("MemberDesc") {
                self.memberDesc = dict["MemberDesc"] as! String
            }
            if dict.keys.contains("MemberUid") {
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
        if dict.keys.contains("Members") {
            self.members = dict["Members"] as! [AddInstanceMembersRequest.Members]
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("SourceVpcFirewallId") {
            self.sourceVpcFirewallId = dict["SourceVpcFirewallId"] as! String
        }
        if dict.keys.contains("TargetVpcFirewallId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchCopyVpcFirewallControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVpcFirewallCenConfigureRequest : Tea.TeaModel {
    public var cenId: String?

    public var firewallSwitch: String?

    public var lang: String?

    public var memberUid: String?

    public var networkInstanceId: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.networkInstanceId != nil {
            map["NetworkInstanceId"] = self.networkInstanceId!
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
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("FirewallSwitch") {
            self.firewallSwitch = dict["FirewallSwitch"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("NetworkInstanceId") {
            self.networkInstanceId = dict["NetworkInstanceId"] as! String
        }
        if dict.keys.contains("VpcFirewallName") {
            self.vpcFirewallName = dict["VpcFirewallName"] as! String
        }
        if dict.keys.contains("VpcRegion") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("FirewallSwitch") {
            self.firewallSwitch = dict["FirewallSwitch"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("LocalVpcCidrTableList") {
            self.localVpcCidrTableList = dict["LocalVpcCidrTableList"] as! String
        }
        if dict.keys.contains("LocalVpcId") {
            self.localVpcId = dict["LocalVpcId"] as! String
        }
        if dict.keys.contains("LocalVpcRegion") {
            self.localVpcRegion = dict["LocalVpcRegion"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("PeerVpcCidrTableList") {
            self.peerVpcCidrTableList = dict["PeerVpcCidrTableList"] as! String
        }
        if dict.keys.contains("PeerVpcId") {
            self.peerVpcId = dict["PeerVpcId"] as! String
        }
        if dict.keys.contains("PeerVpcRegion") {
            self.peerVpcRegion = dict["PeerVpcRegion"] as! String
        }
        if dict.keys.contains("VpcFirewallName") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateVpcFirewallConfigureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVpcFirewallControlPolicyRequest : Tea.TeaModel {
    public var aclAction: String?

    public var applicationName: String?

    public var description_: String?

    public var destPort: String?

    public var destPortGroup: String?

    public var destPortType: String?

    public var destination: String?

    public var destinationType: String?

    public var lang: String?

    public var memberUid: String?

    public var newOrder: String?

    public var proto: String?

    public var release: String?

    public var source: String?

    public var sourceType: String?

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
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestPort") {
            self.destPort = dict["DestPort"] as! String
        }
        if dict.keys.contains("DestPortGroup") {
            self.destPortGroup = dict["DestPortGroup"] as! String
        }
        if dict.keys.contains("DestPortType") {
            self.destPortType = dict["DestPortType"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationType") {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("NewOrder") {
            self.newOrder = dict["NewOrder"] as! String
        }
        if dict.keys.contains("Proto") {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
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
        if dict.keys.contains("AclUuid") {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("GroupUuid") {
            self.groupUuid = dict["GroupUuid"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("AclUuid") {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteControlPolicyResponseBody()
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
        if dict.keys.contains("MemberUids") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteInstanceMembersResponseBody()
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("VpcFirewallIdList") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("VpcFirewallIdList") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("AclUuid") {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteVpcFirewallControlPolicyResponseBody()
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
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainPort") {
            self.containPort = dict["ContainPort"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("GroupType") {
            self.groupType = dict["GroupType"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
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
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
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
            if dict.keys.contains("AddressList") {
                self.addressList = dict["AddressList"] as! [String]
            }
            if dict.keys.contains("AddressListCount") {
                self.addressListCount = dict["AddressListCount"] as! Int32
            }
            if dict.keys.contains("AutoAddTagEcs") {
                self.autoAddTagEcs = dict["AutoAddTagEcs"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("GroupType") {
                self.groupType = dict["GroupType"] as! String
            }
            if dict.keys.contains("GroupUuid") {
                self.groupUuid = dict["GroupUuid"] as! String
            }
            if dict.keys.contains("ReferenceCount") {
                self.referenceCount = dict["ReferenceCount"] as! Int32
            }
            if dict.keys.contains("TagList") {
                self.tagList = dict["TagList"] as! [DescribeAddressBookResponseBody.Acls.TagList]
            }
            if dict.keys.contains("TagRelation") {
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
        if dict.keys.contains("Acls") {
            self.acls = dict["Acls"] as! [DescribeAddressBookResponseBody.Acls]
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public var pageSize: String?

    public var regionNo: String?

    public var resourceType: String?

    public var searchItem: String?

    public var sgStatus: String?

    public var sourceIp: String?

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
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
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
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("IpVersion") {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionNo") {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SearchItem") {
            self.searchItem = dict["SearchItem"] as! String
        }
        if dict.keys.contains("SgStatus") {
            self.sgStatus = dict["SgStatus"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UserType") {
            self.userType = dict["UserType"] as! String
        }
    }
}

public class DescribeAssetListResponseBody : Tea.TeaModel {
    public class Assets : Tea.TeaModel {
        public var aliUid: Int64?

        public var bindInstanceId: String?

        public var bindInstanceName: String?

        public var internetAddress: String?

        public var intranetAddress: String?

        public var ipVersion: Int32?

        public var memberUid: Int64?

        public var name: String?

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
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! Int64
            }
            if dict.keys.contains("BindInstanceId") {
                self.bindInstanceId = dict["BindInstanceId"] as! String
            }
            if dict.keys.contains("BindInstanceName") {
                self.bindInstanceName = dict["BindInstanceName"] as! String
            }
            if dict.keys.contains("InternetAddress") {
                self.internetAddress = dict["InternetAddress"] as! String
            }
            if dict.keys.contains("IntranetAddress") {
                self.intranetAddress = dict["IntranetAddress"] as! String
            }
            if dict.keys.contains("IpVersion") {
                self.ipVersion = dict["IpVersion"] as! Int32
            }
            if dict.keys.contains("MemberUid") {
                self.memberUid = dict["MemberUid"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Note") {
                self.note = dict["Note"] as! String
            }
            if dict.keys.contains("ProtectStatus") {
                self.protectStatus = dict["ProtectStatus"] as! String
            }
            if dict.keys.contains("RegionID") {
                self.regionID = dict["RegionID"] as! String
            }
            if dict.keys.contains("RegionStatus") {
                self.regionStatus = dict["RegionStatus"] as! String
            }
            if dict.keys.contains("ResourceInstanceId") {
                self.resourceInstanceId = dict["ResourceInstanceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! String
            }
            if dict.keys.contains("SgStatus") {
                self.sgStatus = dict["SgStatus"] as! String
            }
            if dict.keys.contains("SgStatusTime") {
                self.sgStatusTime = dict["SgStatusTime"] as! Int64
            }
            if dict.keys.contains("SyncStatus") {
                self.syncStatus = dict["SyncStatus"] as! String
            }
            if dict.keys.contains("Type") {
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
        if dict.keys.contains("Assets") {
            self.assets = dict["Assets"] as! [DescribeAssetListResponseBody.Assets]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("AclUuid") {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("IpVersion") {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Proto") {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
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

        public var hitLastTime: Int64?

        public var hitTimes: Int64?

        public var ipVersion: Int32?

        public var modifyTime: Int64?

        public var order: Int32?

        public var proto: String?

        public var release: String?

        public var source: String?

        public var sourceGroupCidrs: [String]?

        public var sourceGroupType: String?

        public var sourceType: String?

        public var spreadCnt: Int32?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclAction") {
                self.aclAction = dict["AclAction"] as! String
            }
            if dict.keys.contains("AclUuid") {
                self.aclUuid = dict["AclUuid"] as! String
            }
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("ApplicationName") {
                self.applicationName = dict["ApplicationName"] as! String
            }
            if dict.keys.contains("ApplicationNameList") {
                self.applicationNameList = dict["ApplicationNameList"] as! [String]
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestPort") {
                self.destPort = dict["DestPort"] as! String
            }
            if dict.keys.contains("DestPortGroup") {
                self.destPortGroup = dict["DestPortGroup"] as! String
            }
            if dict.keys.contains("DestPortGroupPorts") {
                self.destPortGroupPorts = dict["DestPortGroupPorts"] as! [String]
            }
            if dict.keys.contains("DestPortType") {
                self.destPortType = dict["DestPortType"] as! String
            }
            if dict.keys.contains("Destination") {
                self.destination = dict["Destination"] as! String
            }
            if dict.keys.contains("DestinationGroupCidrs") {
                self.destinationGroupCidrs = dict["DestinationGroupCidrs"] as! [String]
            }
            if dict.keys.contains("DestinationGroupType") {
                self.destinationGroupType = dict["DestinationGroupType"] as! String
            }
            if dict.keys.contains("DestinationType") {
                self.destinationType = dict["DestinationType"] as! String
            }
            if dict.keys.contains("Direction") {
                self.direction = dict["Direction"] as! String
            }
            if dict.keys.contains("DnsResult") {
                self.dnsResult = dict["DnsResult"] as! String
            }
            if dict.keys.contains("DnsResultTime") {
                self.dnsResultTime = dict["DnsResultTime"] as! Int64
            }
            if dict.keys.contains("HitLastTime") {
                self.hitLastTime = dict["HitLastTime"] as! Int64
            }
            if dict.keys.contains("HitTimes") {
                self.hitTimes = dict["HitTimes"] as! Int64
            }
            if dict.keys.contains("IpVersion") {
                self.ipVersion = dict["IpVersion"] as! Int32
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! Int64
            }
            if dict.keys.contains("Order") {
                self.order = dict["Order"] as! Int32
            }
            if dict.keys.contains("Proto") {
                self.proto = dict["Proto"] as! String
            }
            if dict.keys.contains("Release") {
                self.release = dict["Release"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceGroupCidrs") {
                self.sourceGroupCidrs = dict["SourceGroupCidrs"] as! [String]
            }
            if dict.keys.contains("SourceGroupType") {
                self.sourceGroupType = dict["SourceGroupType"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("SpreadCnt") {
                self.spreadCnt = dict["SpreadCnt"] as! Int32
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
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Policys") {
            self.policys = dict["Policys"] as! [DescribeControlPolicyResponseBody.Policys]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeControlPolicyResponseBody()
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
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("IpVersion") {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") {
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
            if dict.keys.contains("IpAddrs") {
                self.ipAddrs = dict["IpAddrs"] as! String
            }
            if dict.keys.contains("UpdateTime") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResolveResult") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("MemberDesc") {
            self.memberDesc = dict["MemberDesc"] as! String
        }
        if dict.keys.contains("MemberDisplayName") {
            self.memberDisplayName = dict["MemberDisplayName"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("PageSize") {
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int32
            }
            if dict.keys.contains("MemberDesc") {
                self.memberDesc = dict["MemberDesc"] as! String
            }
            if dict.keys.contains("MemberDisplayName") {
                self.memberDisplayName = dict["MemberDisplayName"] as! String
            }
            if dict.keys.contains("MemberStatus") {
                self.memberStatus = dict["MemberStatus"] as! String
            }
            if dict.keys.contains("MemberUid") {
                self.memberUid = dict["MemberUid"] as! Int64
            }
            if dict.keys.contains("ModifyTime") {
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
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("Members") {
            self.members = dict["Members"] as! [DescribeInstanceMembersResponseBody.Members]
        }
        if dict.keys.contains("PageInfo") {
            var model = DescribeInstanceMembersResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstanceMembersResponseBody()
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
        if dict.keys.contains("AssetsIP") {
            self.assetsIP = dict["AssetsIP"] as! String
        }
        if dict.keys.contains("AssetsInstanceId") {
            self.assetsInstanceId = dict["AssetsInstanceId"] as! String
        }
        if dict.keys.contains("AssetsInstanceName") {
            self.assetsInstanceName = dict["AssetsInstanceName"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EventKey") {
            self.eventKey = dict["EventKey"] as! String
        }
        if dict.keys.contains("EventName") {
            self.eventName = dict["EventName"] as! String
        }
        if dict.keys.contains("EventUuid") {
            self.eventUuid = dict["EventUuid"] as! String
        }
        if dict.keys.contains("IsIgnore") {
            self.isIgnore = dict["IsIgnore"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("ProcessStatusList") {
            self.processStatusList = dict["ProcessStatusList"] as! [Int32]
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! [Int32]
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("StartTime") {
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
            if dict.keys.contains("AssetsInstanceId") {
                self.assetsInstanceId = dict["AssetsInstanceId"] as! String
            }
            if dict.keys.contains("AssetsInstanceName") {
                self.assetsInstanceName = dict["AssetsInstanceName"] as! String
            }
            if dict.keys.contains("AssetsType") {
                self.assetsType = dict["AssetsType"] as! String
            }
            if dict.keys.contains("EventKey") {
                self.eventKey = dict["EventKey"] as! String
            }
            if dict.keys.contains("EventName") {
                self.eventName = dict["EventName"] as! String
            }
            if dict.keys.contains("EventSrc") {
                self.eventSrc = dict["EventSrc"] as! String
            }
            if dict.keys.contains("EventUuid") {
                self.eventUuid = dict["EventUuid"] as! String
            }
            if dict.keys.contains("FirstTime") {
                self.firstTime = dict["FirstTime"] as! Int32
            }
            if dict.keys.contains("IsIgnore") {
                self.isIgnore = dict["IsIgnore"] as! Bool
            }
            if dict.keys.contains("LastTime") {
                self.lastTime = dict["LastTime"] as! Int32
            }
            if dict.keys.contains("MemberUid") {
                self.memberUid = dict["MemberUid"] as! String
            }
            if dict.keys.contains("PrivateIP") {
                self.privateIP = dict["PrivateIP"] as! String
            }
            if dict.keys.contains("ProcessStatus") {
                self.processStatus = dict["ProcessStatus"] as! Int32
            }
            if dict.keys.contains("PublicIP") {
                self.publicIP = dict["PublicIP"] as! String
            }
            if dict.keys.contains("PublicIpType") {
                self.publicIpType = dict["PublicIpType"] as! String
            }
            if dict.keys.contains("RiskLevel") {
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
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("EventList") {
            self.eventList = dict["EventList"] as! [DescribeInvadeEventListResponseBody.EventList]
        }
        if dict.keys.contains("HighLevelPercent") {
            self.highLevelPercent = dict["HighLevelPercent"] as! Int32
        }
        if dict.keys.contains("LowLevelPercent") {
            self.lowLevelPercent = dict["LowLevelPercent"] as! Int32
        }
        if dict.keys.contains("MiddleLevelPercent") {
            self.middleLevelPercent = dict["MiddleLevelPercent"] as! Int32
        }
        if dict.keys.contains("PageInfo") {
            var model = DescribeInvadeEventListResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInvadeEventListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOutgoingDestinationIPRequest : Tea.TeaModel {
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("DstIP") {
            self.dstIP = dict["DstIP"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("PrivateIP") {
            self.privateIP = dict["PrivateIP"] as! String
        }
        if dict.keys.contains("PublicIP") {
            self.publicIP = dict["PublicIP"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeOutgoingDestinationIPResponseBody : Tea.TeaModel {
    public class DstIPList : Tea.TeaModel {
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
                if dict.keys.contains("ApplicationName") {
                    self.applicationName = dict["ApplicationName"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
            }
        }
        public class TagList : Tea.TeaModel {
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
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
                if dict.keys.contains("TagDescribe") {
                    self.tagDescribe = dict["TagDescribe"] as! String
                }
                if dict.keys.contains("TagId") {
                    self.tagId = dict["TagId"] as! String
                }
                if dict.keys.contains("TagName") {
                    self.tagName = dict["TagName"] as! String
                }
            }
        }
        public var aclCoverage: String?

        public var aclRecommendDetail: String?

        public var aclStatus: String?

        public var addressGroupName: String?

        public var addressGroupUUID: String?

        public var applicationPortList: [DescribeOutgoingDestinationIPResponseBody.DstIPList.ApplicationPortList]?

        public var categoryId: String?

        public var categoryName: String?

        public var dstIP: String?

        public var groupName: String?

        public var hasAclRecommend: Bool?

        public var inBytes: Int64?

        public var isMarkNormal: Bool?

        public var outBytes: Int64?

        public var ruleId: String?

        public var ruleName: String?

        public var securitySuggest: String?

        public var sessionCount: Int64?

        public var tagList: [DescribeOutgoingDestinationIPResponseBody.DstIPList.TagList]?

        public override init() {
            super.init()
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
            if self.applicationPortList != nil {
                var tmp : [Any] = []
                for k in self.applicationPortList! {
                    tmp.append(k.toMap())
                }
                map["ApplicationPortList"] = tmp
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclCoverage") {
                self.aclCoverage = dict["AclCoverage"] as! String
            }
            if dict.keys.contains("AclRecommendDetail") {
                self.aclRecommendDetail = dict["AclRecommendDetail"] as! String
            }
            if dict.keys.contains("AclStatus") {
                self.aclStatus = dict["AclStatus"] as! String
            }
            if dict.keys.contains("AddressGroupName") {
                self.addressGroupName = dict["AddressGroupName"] as! String
            }
            if dict.keys.contains("AddressGroupUUID") {
                self.addressGroupUUID = dict["AddressGroupUUID"] as! String
            }
            if dict.keys.contains("ApplicationPortList") {
                self.applicationPortList = dict["ApplicationPortList"] as! [DescribeOutgoingDestinationIPResponseBody.DstIPList.ApplicationPortList]
            }
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! String
            }
            if dict.keys.contains("CategoryName") {
                self.categoryName = dict["CategoryName"] as! String
            }
            if dict.keys.contains("DstIP") {
                self.dstIP = dict["DstIP"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("HasAclRecommend") {
                self.hasAclRecommend = dict["HasAclRecommend"] as! Bool
            }
            if dict.keys.contains("InBytes") {
                self.inBytes = dict["InBytes"] as! Int64
            }
            if dict.keys.contains("IsMarkNormal") {
                self.isMarkNormal = dict["IsMarkNormal"] as! Bool
            }
            if dict.keys.contains("OutBytes") {
                self.outBytes = dict["OutBytes"] as! Int64
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("SecuritySuggest") {
                self.securitySuggest = dict["SecuritySuggest"] as! String
            }
            if dict.keys.contains("SessionCount") {
                self.sessionCount = dict["SessionCount"] as! Int64
            }
            if dict.keys.contains("TagList") {
                self.tagList = dict["TagList"] as! [DescribeOutgoingDestinationIPResponseBody.DstIPList.TagList]
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
        if dict.keys.contains("DstIPList") {
            self.dstIPList = dict["DstIPList"] as! [DescribeOutgoingDestinationIPResponseBody.DstIPList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("PublicIP") {
            self.publicIP = dict["PublicIP"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeOutgoingDomainResponseBody : Tea.TeaModel {
    public class DomainList : Tea.TeaModel {
        public class TagList : Tea.TeaModel {
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
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
                if dict.keys.contains("TagDescribe") {
                    self.tagDescribe = dict["TagDescribe"] as! String
                }
                if dict.keys.contains("TagId") {
                    self.tagId = dict["TagId"] as! String
                }
                if dict.keys.contains("TagName") {
                    self.tagName = dict["TagName"] as! String
                }
            }
        }
        public var aclCoverage: String?

        public var aclRecommendDetail: String?

        public var aclStatus: String?

        public var addressGroupName: String?

        public var addressGroupUUID: String?

        public var categoryId: String?

        public var categoryName: String?

        public var domain: String?

        public var groupName: String?

        public var hasAclRecommend: Bool?

        public var inBytes: Int64?

        public var isMarkNormal: Bool?

        public var outBytes: Int64?

        public var ruleId: String?

        public var ruleName: String?

        public var securitySuggest: String?

        public var sessionCount: Int64?

        public var tagList: [DescribeOutgoingDomainResponseBody.DomainList.TagList]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclCoverage") {
                self.aclCoverage = dict["AclCoverage"] as! String
            }
            if dict.keys.contains("AclRecommendDetail") {
                self.aclRecommendDetail = dict["AclRecommendDetail"] as! String
            }
            if dict.keys.contains("AclStatus") {
                self.aclStatus = dict["AclStatus"] as! String
            }
            if dict.keys.contains("AddressGroupName") {
                self.addressGroupName = dict["AddressGroupName"] as! String
            }
            if dict.keys.contains("AddressGroupUUID") {
                self.addressGroupUUID = dict["AddressGroupUUID"] as! String
            }
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! String
            }
            if dict.keys.contains("CategoryName") {
                self.categoryName = dict["CategoryName"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("HasAclRecommend") {
                self.hasAclRecommend = dict["HasAclRecommend"] as! Bool
            }
            if dict.keys.contains("InBytes") {
                self.inBytes = dict["InBytes"] as! Int64
            }
            if dict.keys.contains("IsMarkNormal") {
                self.isMarkNormal = dict["IsMarkNormal"] as! Bool
            }
            if dict.keys.contains("OutBytes") {
                self.outBytes = dict["OutBytes"] as! Int64
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("SecuritySuggest") {
                self.securitySuggest = dict["SecuritySuggest"] as! String
            }
            if dict.keys.contains("SessionCount") {
                self.sessionCount = dict["SessionCount"] as! Int64
            }
            if dict.keys.contains("TagList") {
                self.tagList = dict["TagList"] as! [DescribeOutgoingDomainResponseBody.DomainList.TagList]
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
        if dict.keys.contains("DomainList") {
            self.domainList = dict["DomainList"] as! [DescribeOutgoingDomainResponseBody.DomainList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") {
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
        if dict.keys.contains("InternetSwitch") {
            self.internetSwitch = dict["InternetSwitch"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("IpVersion") {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") {
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
        if dict.keys.contains("End") {
            self.end = dict["End"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Start") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public var firewallType: String?

    public var lang: String?

    public var noLocation: String?

    public var pageSize: String?

    public var ruleResult: String?

    public var ruleSource: String?

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
        if self.firewallType != nil {
            map["FirewallType"] = self.firewallType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.noLocation != nil {
            map["NoLocation"] = self.noLocation!
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
        if dict.keys.contains("AttackApp") {
            self.attackApp = dict["AttackApp"] as! [String]
        }
        if dict.keys.contains("AttackType") {
            self.attackType = dict["AttackType"] as! String
        }
        if dict.keys.contains("BuyVersion") {
            self.buyVersion = dict["BuyVersion"] as! Int64
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("DataType") {
            self.dataType = dict["DataType"] as! String
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("DstIP") {
            self.dstIP = dict["DstIP"] as! String
        }
        if dict.keys.contains("DstNetworkInstanceId") {
            self.dstNetworkInstanceId = dict["DstNetworkInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FirewallType") {
            self.firewallType = dict["FirewallType"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NoLocation") {
            self.noLocation = dict["NoLocation"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RuleResult") {
            self.ruleResult = dict["RuleResult"] as! String
        }
        if dict.keys.contains("RuleSource") {
            self.ruleSource = dict["RuleSource"] as! String
        }
        if dict.keys.contains("SrcIP") {
            self.srcIP = dict["SrcIP"] as! String
        }
        if dict.keys.contains("SrcNetworkInstanceId") {
            self.srcNetworkInstanceId = dict["SrcNetworkInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("VulLevel") {
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
                if dict.keys.contains("CityId") {
                    self.cityId = dict["CityId"] as! String
                }
                if dict.keys.contains("CityName") {
                    self.cityName = dict["CityName"] as! String
                }
                if dict.keys.contains("CountryId") {
                    self.countryId = dict["CountryId"] as! String
                }
                if dict.keys.contains("CountryName") {
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
                if dict.keys.contains("RegionNo") {
                    self.regionNo = dict["RegionNo"] as! String
                }
                if dict.keys.contains("ResourceInstanceId") {
                    self.resourceInstanceId = dict["ResourceInstanceId"] as! String
                }
                if dict.keys.contains("ResourceInstanceName") {
                    self.resourceInstanceName = dict["ResourceInstanceName"] as! String
                }
                if dict.keys.contains("ResourcePrivateIP") {
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
                if dict.keys.contains("EcsInstanceId") {
                    self.ecsInstanceId = dict["EcsInstanceId"] as! String
                }
                if dict.keys.contains("EcsInstanceName") {
                    self.ecsInstanceName = dict["EcsInstanceName"] as! String
                }
                if dict.keys.contains("NetworkInstanceId") {
                    self.networkInstanceId = dict["NetworkInstanceId"] as! String
                }
                if dict.keys.contains("NetworkInstanceName") {
                    self.networkInstanceName = dict["NetworkInstanceName"] as! String
                }
                if dict.keys.contains("RegionNo") {
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
                if dict.keys.contains("EcsInstanceId") {
                    self.ecsInstanceId = dict["EcsInstanceId"] as! String
                }
                if dict.keys.contains("EcsInstanceName") {
                    self.ecsInstanceName = dict["EcsInstanceName"] as! String
                }
                if dict.keys.contains("NetworkInstanceId") {
                    self.networkInstanceId = dict["NetworkInstanceId"] as! String
                }
                if dict.keys.contains("NetworkInstanceName") {
                    self.networkInstanceName = dict["NetworkInstanceName"] as! String
                }
                if dict.keys.contains("RegionNo") {
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
            if dict.keys.contains("AttackApp") {
                self.attackApp = dict["AttackApp"] as! String
            }
            if dict.keys.contains("AttackType") {
                self.attackType = dict["AttackType"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Direction") {
                self.direction = dict["Direction"] as! String
            }
            if dict.keys.contains("DstIP") {
                self.dstIP = dict["DstIP"] as! String
            }
            if dict.keys.contains("EventCount") {
                self.eventCount = dict["EventCount"] as! Int32
            }
            if dict.keys.contains("EventId") {
                self.eventId = dict["EventId"] as! String
            }
            if dict.keys.contains("EventName") {
                self.eventName = dict["EventName"] as! String
            }
            if dict.keys.contains("FirstEventTime") {
                self.firstEventTime = dict["FirstEventTime"] as! Int32
            }
            if dict.keys.contains("IPLocationInfo") {
                var model = DescribeRiskEventGroupResponseBody.DataList.IPLocationInfo()
                model.fromMap(dict["IPLocationInfo"] as! [String: Any])
                self.IPLocationInfo = model
            }
            if dict.keys.contains("LastEventTime") {
                self.lastEventTime = dict["LastEventTime"] as! Int32
            }
            if dict.keys.contains("ResourcePrivateIPList") {
                self.resourcePrivateIPList = dict["ResourcePrivateIPList"] as! [DescribeRiskEventGroupResponseBody.DataList.ResourcePrivateIPList]
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleResult") {
                self.ruleResult = dict["RuleResult"] as! Int32
            }
            if dict.keys.contains("RuleSource") {
                self.ruleSource = dict["RuleSource"] as! Int32
            }
            if dict.keys.contains("SrcIP") {
                self.srcIP = dict["SrcIP"] as! String
            }
            if dict.keys.contains("SrcPrivateIPList") {
                self.srcPrivateIPList = dict["SrcPrivateIPList"] as! [String]
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("VpcDstInfo") {
                var model = DescribeRiskEventGroupResponseBody.DataList.VpcDstInfo()
                model.fromMap(dict["VpcDstInfo"] as! [String: Any])
                self.vpcDstInfo = model
            }
            if dict.keys.contains("VpcSrcInfo") {
                var model = DescribeRiskEventGroupResponseBody.DataList.VpcSrcInfo()
                model.fromMap(dict["VpcSrcInfo"] as! [String: Any])
                self.vpcSrcInfo = model
            }
            if dict.keys.contains("VulLevel") {
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
        if dict.keys.contains("DataList") {
            self.dataList = dict["DataList"] as! [DescribeRiskEventGroupResponseBody.DataList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRiskEventGroupResponseBody()
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
        if dict.keys.contains("AssetIP") {
            self.assetIP = dict["AssetIP"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TrafficTime") {
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
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InBps") {
            self.inBps = dict["InBps"] as! Int64
        }
        if dict.keys.contains("InPps") {
            self.inPps = dict["InPps"] as! Int64
        }
        if dict.keys.contains("NewConn") {
            self.newConn = dict["NewConn"] as! Int64
        }
        if dict.keys.contains("OutBps") {
            self.outBps = dict["OutBps"] as! Int64
        }
        if dict.keys.contains("OutPps") {
            self.outPps = dict["OutPps"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SessionCount") {
            self.sessionCount = dict["SessionCount"] as! Int64
        }
        if dict.keys.contains("StartTime") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeUserAssetIPTrafficInfoResponseBody()
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
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("FirewallConfigureStatus") {
            self.firewallConfigureStatus = dict["FirewallConfigureStatus"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
    }
}

public class DescribeVpcFirewallAclGroupListResponseBody : Tea.TeaModel {
    public class AclGroupList : Tea.TeaModel {
        public var aclGroupId: String?

        public var aclGroupName: String?

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
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclGroupId") {
                self.aclGroupId = dict["AclGroupId"] as! String
            }
            if dict.keys.contains("AclGroupName") {
                self.aclGroupName = dict["AclGroupName"] as! String
            }
            if dict.keys.contains("MemberUid") {
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
        if dict.keys.contains("AclGroupList") {
            self.aclGroupList = dict["AclGroupList"] as! [DescribeVpcFirewallAclGroupListResponseBody.AclGroupList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NetworkInstanceId") {
            self.networkInstanceId = dict["NetworkInstanceId"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
    }
}

public class DescribeVpcFirewallCenDetailResponseBody : Tea.TeaModel {
    public class LocalVpc : Tea.TeaModel {
        public class EniList : Tea.TeaModel {
            public var eniId: String?

            public var eniPrivateIpAddress: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EniId") {
                    self.eniId = dict["EniId"] as! String
                }
                if dict.keys.contains("EniPrivateIpAddress") {
                    self.eniPrivateIpAddress = dict["EniPrivateIpAddress"] as! String
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
                    if dict.keys.contains("DestinationCidr") {
                        self.destinationCidr = dict["DestinationCidr"] as! String
                    }
                    if dict.keys.contains("NextHopInstanceId") {
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
                if dict.keys.contains("RouteEntryList") {
                    self.routeEntryList = dict["RouteEntryList"] as! [DescribeVpcFirewallCenDetailResponseBody.LocalVpc.VpcCidrTableList.RouteEntryList]
                }
                if dict.keys.contains("RouteTableId") {
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
            if dict.keys.contains("AttachmentId") {
                self.attachmentId = dict["AttachmentId"] as! String
            }
            if dict.keys.contains("AttachmentName") {
                self.attachmentName = dict["AttachmentName"] as! String
            }
            if dict.keys.contains("DefendCidrList") {
                self.defendCidrList = dict["DefendCidrList"] as! [String]
            }
            if dict.keys.contains("EniList") {
                self.eniList = dict["EniList"] as! [DescribeVpcFirewallCenDetailResponseBody.LocalVpc.EniList]
            }
            if dict.keys.contains("ManualVSwitchId") {
                self.manualVSwitchId = dict["ManualVSwitchId"] as! String
            }
            if dict.keys.contains("NetworkInstanceId") {
                self.networkInstanceId = dict["NetworkInstanceId"] as! String
            }
            if dict.keys.contains("NetworkInstanceName") {
                self.networkInstanceName = dict["NetworkInstanceName"] as! String
            }
            if dict.keys.contains("NetworkInstanceType") {
                self.networkInstanceType = dict["NetworkInstanceType"] as! String
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("RegionNo") {
                self.regionNo = dict["RegionNo"] as! String
            }
            if dict.keys.contains("RouteMode") {
                self.routeMode = dict["RouteMode"] as! String
            }
            if dict.keys.contains("SupportManualMode") {
                self.supportManualMode = dict["SupportManualMode"] as! String
            }
            if dict.keys.contains("TransitRouterId") {
                self.transitRouterId = dict["TransitRouterId"] as! String
            }
            if dict.keys.contains("TransitRouterType") {
                self.transitRouterType = dict["TransitRouterType"] as! String
            }
            if dict.keys.contains("VpcCidrTableList") {
                self.vpcCidrTableList = dict["VpcCidrTableList"] as! [DescribeVpcFirewallCenDetailResponseBody.LocalVpc.VpcCidrTableList]
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcName") {
                self.vpcName = dict["VpcName"] as! String
            }
        }
    }
    public var connectType: String?

    public var firewallSwitchStatus: String?

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
        if dict.keys.contains("ConnectType") {
            self.connectType = dict["ConnectType"] as! String
        }
        if dict.keys.contains("FirewallSwitchStatus") {
            self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
        }
        if dict.keys.contains("LocalVpc") {
            var model = DescribeVpcFirewallCenDetailResponseBody.LocalVpc()
            model.fromMap(dict["LocalVpc"] as! [String: Any])
            self.localVpc = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
        if dict.keys.contains("VpcFirewallName") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("FirewallSwitchStatus") {
            self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("NetworkInstanceId") {
            self.networkInstanceId = dict["NetworkInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionNo") {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("RouteMode") {
            self.routeMode = dict["RouteMode"] as! String
        }
        if dict.keys.contains("TransitRouterType") {
            self.transitRouterType = dict["TransitRouterType"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
        if dict.keys.contains("VpcFirewallName") {
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
                if dict.keys.contains("BasicRules") {
                    self.basicRules = dict["BasicRules"] as! Int32
                }
                if dict.keys.contains("EnableAllPatch") {
                    self.enableAllPatch = dict["EnableAllPatch"] as! Int32
                }
                if dict.keys.contains("RunMode") {
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
                        if dict.keys.contains("DestinationCidr") {
                            self.destinationCidr = dict["DestinationCidr"] as! String
                        }
                        if dict.keys.contains("NextHopInstanceId") {
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
                    if dict.keys.contains("RouteEntryList") {
                        self.routeEntryList = dict["RouteEntryList"] as! [DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList.RouteEntryList]
                    }
                    if dict.keys.contains("RouteTableId") {
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
                if dict.keys.contains("AuthorizationStatus") {
                    self.authorizationStatus = dict["AuthorizationStatus"] as! String
                }
                if dict.keys.contains("DefendCidrList") {
                    self.defendCidrList = dict["DefendCidrList"] as! [String]
                }
                if dict.keys.contains("ManualVSwitchId") {
                    self.manualVSwitchId = dict["ManualVSwitchId"] as! String
                }
                if dict.keys.contains("NetworkInstanceId") {
                    self.networkInstanceId = dict["NetworkInstanceId"] as! String
                }
                if dict.keys.contains("NetworkInstanceName") {
                    self.networkInstanceName = dict["NetworkInstanceName"] as! String
                }
                if dict.keys.contains("NetworkInstanceType") {
                    self.networkInstanceType = dict["NetworkInstanceType"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! Int64
                }
                if dict.keys.contains("RegionNo") {
                    self.regionNo = dict["RegionNo"] as! String
                }
                if dict.keys.contains("RouteMode") {
                    self.routeMode = dict["RouteMode"] as! String
                }
                if dict.keys.contains("SupportManualMode") {
                    self.supportManualMode = dict["SupportManualMode"] as! String
                }
                if dict.keys.contains("TransitRouterType") {
                    self.transitRouterType = dict["TransitRouterType"] as! String
                }
                if dict.keys.contains("VpcCidrTableList") {
                    self.vpcCidrTableList = dict["VpcCidrTableList"] as! [DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList]
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcName") {
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
            if dict.keys.contains("CenId") {
                self.cenId = dict["CenId"] as! String
            }
            if dict.keys.contains("CenName") {
                self.cenName = dict["CenName"] as! String
            }
            if dict.keys.contains("ConnectType") {
                self.connectType = dict["ConnectType"] as! String
            }
            if dict.keys.contains("FirewallSwitchStatus") {
                self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
            }
            if dict.keys.contains("IpsConfig") {
                var model = DescribeVpcFirewallCenListResponseBody.VpcFirewalls.IpsConfig()
                model.fromMap(dict["IpsConfig"] as! [String: Any])
                self.ipsConfig = model
            }
            if dict.keys.contains("LocalVpc") {
                var model = DescribeVpcFirewallCenListResponseBody.VpcFirewalls.LocalVpc()
                model.fromMap(dict["LocalVpc"] as! [String: Any])
                self.localVpc = model
            }
            if dict.keys.contains("MemberUid") {
                self.memberUid = dict["MemberUid"] as! String
            }
            if dict.keys.contains("PrecheckStatus") {
                self.precheckStatus = dict["PrecheckStatus"] as! String
            }
            if dict.keys.contains("RegionStatus") {
                self.regionStatus = dict["RegionStatus"] as! String
            }
            if dict.keys.contains("ResultCode") {
                self.resultCode = dict["ResultCode"] as! String
            }
            if dict.keys.contains("VpcFirewallId") {
                self.vpcFirewallId = dict["VpcFirewallId"] as! String
            }
            if dict.keys.contains("VpcFirewallName") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("VpcFirewalls") {
            self.vpcFirewalls = dict["VpcFirewalls"] as! [DescribeVpcFirewallCenListResponseBody.VpcFirewalls]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("AclUuid") {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Proto") {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
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

        public var description_: String?

        public var destPort: String?

        public var destPortGroup: String?

        public var destPortGroupPorts: [String]?

        public var destPortType: String?

        public var destination: String?

        public var destinationGroupCidrs: [String]?

        public var destinationType: String?

        public var hitTimes: Int32?

        public var memberUid: String?

        public var order: Int32?

        public var proto: String?

        public var release: String?

        public var source: String?

        public var sourceGroupCidrs: [String]?

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
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
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
            if self.destinationType != nil {
                map["DestinationType"] = self.destinationType!
            }
            if self.hitTimes != nil {
                map["HitTimes"] = self.hitTimes!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
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
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceGroupCidrs != nil {
                map["SourceGroupCidrs"] = self.sourceGroupCidrs!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclAction") {
                self.aclAction = dict["AclAction"] as! String
            }
            if dict.keys.contains("AclUuid") {
                self.aclUuid = dict["AclUuid"] as! String
            }
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("ApplicationName") {
                self.applicationName = dict["ApplicationName"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestPort") {
                self.destPort = dict["DestPort"] as! String
            }
            if dict.keys.contains("DestPortGroup") {
                self.destPortGroup = dict["DestPortGroup"] as! String
            }
            if dict.keys.contains("DestPortGroupPorts") {
                self.destPortGroupPorts = dict["DestPortGroupPorts"] as! [String]
            }
            if dict.keys.contains("DestPortType") {
                self.destPortType = dict["DestPortType"] as! String
            }
            if dict.keys.contains("Destination") {
                self.destination = dict["Destination"] as! String
            }
            if dict.keys.contains("DestinationGroupCidrs") {
                self.destinationGroupCidrs = dict["DestinationGroupCidrs"] as! [String]
            }
            if dict.keys.contains("DestinationType") {
                self.destinationType = dict["DestinationType"] as! String
            }
            if dict.keys.contains("HitTimes") {
                self.hitTimes = dict["HitTimes"] as! Int32
            }
            if dict.keys.contains("MemberUid") {
                self.memberUid = dict["MemberUid"] as! String
            }
            if dict.keys.contains("Order") {
                self.order = dict["Order"] as! Int32
            }
            if dict.keys.contains("Proto") {
                self.proto = dict["Proto"] as! String
            }
            if dict.keys.contains("Release") {
                self.release = dict["Release"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceGroupCidrs") {
                self.sourceGroupCidrs = dict["SourceGroupCidrs"] as! [String]
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
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
        if dict.keys.contains("Policys") {
            self.policys = dict["Policys"] as! [DescribeVpcFirewallControlPolicyResponseBody.Policys]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
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
        if dict.keys.contains("BasicRules") {
            self.basicRules = dict["BasicRules"] as! Int32
        }
        if dict.keys.contains("EnableAllPatch") {
            self.enableAllPatch = dict["EnableAllPatch"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RunMode") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("LocalVpcId") {
            self.localVpcId = dict["LocalVpcId"] as! String
        }
        if dict.keys.contains("PeerVpcId") {
            self.peerVpcId = dict["PeerVpcId"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
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
                    if dict.keys.contains("DestinationCidr") {
                        self.destinationCidr = dict["DestinationCidr"] as! String
                    }
                    if dict.keys.contains("NextHopInstanceId") {
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
                if dict.keys.contains("RouteEntryList") {
                    self.routeEntryList = dict["RouteEntryList"] as! [DescribeVpcFirewallDetailResponseBody.LocalVpc.VpcCidrTableList.RouteEntryList]
                }
                if dict.keys.contains("RouteTableId") {
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
            if dict.keys.contains("EniId") {
                self.eniId = dict["EniId"] as! String
            }
            if dict.keys.contains("EniPrivateIpAddress") {
                self.eniPrivateIpAddress = dict["EniPrivateIpAddress"] as! String
            }
            if dict.keys.contains("RegionNo") {
                self.regionNo = dict["RegionNo"] as! String
            }
            if dict.keys.contains("RouterInterfaceId") {
                self.routerInterfaceId = dict["RouterInterfaceId"] as! String
            }
            if dict.keys.contains("VpcCidrTableList") {
                self.vpcCidrTableList = dict["VpcCidrTableList"] as! [DescribeVpcFirewallDetailResponseBody.LocalVpc.VpcCidrTableList]
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcName") {
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
                    if dict.keys.contains("DestinationCidr") {
                        self.destinationCidr = dict["DestinationCidr"] as! String
                    }
                    if dict.keys.contains("NextHopInstanceId") {
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
                if dict.keys.contains("RouteEntryList") {
                    self.routeEntryList = dict["RouteEntryList"] as! [DescribeVpcFirewallDetailResponseBody.PeerVpc.VpcCidrTableList.RouteEntryList]
                }
                if dict.keys.contains("RouteTableId") {
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
            if dict.keys.contains("EniId") {
                self.eniId = dict["EniId"] as! String
            }
            if dict.keys.contains("EniPrivateIpAddress") {
                self.eniPrivateIpAddress = dict["EniPrivateIpAddress"] as! String
            }
            if dict.keys.contains("RegionNo") {
                self.regionNo = dict["RegionNo"] as! String
            }
            if dict.keys.contains("RouterInterfaceId") {
                self.routerInterfaceId = dict["RouterInterfaceId"] as! String
            }
            if dict.keys.contains("VpcCidrTableList") {
                self.vpcCidrTableList = dict["VpcCidrTableList"] as! [DescribeVpcFirewallDetailResponseBody.PeerVpc.VpcCidrTableList]
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcName") {
                self.vpcName = dict["VpcName"] as! String
            }
        }
    }
    public var bandwidth: Int32?

    public var connectType: String?

    public var firewallSwitchStatus: String?

    public var localVpc: DescribeVpcFirewallDetailResponseBody.LocalVpc?

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
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("ConnectType") {
            self.connectType = dict["ConnectType"] as! String
        }
        if dict.keys.contains("FirewallSwitchStatus") {
            self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
        }
        if dict.keys.contains("LocalVpc") {
            var model = DescribeVpcFirewallDetailResponseBody.LocalVpc()
            model.fromMap(dict["LocalVpc"] as! [String: Any])
            self.localVpc = model
        }
        if dict.keys.contains("PeerVpc") {
            var model = DescribeVpcFirewallDetailResponseBody.PeerVpc()
            model.fromMap(dict["PeerVpc"] as! [String: Any])
            self.peerVpc = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
        if dict.keys.contains("VpcFirewallName") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVpcFirewallDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVpcFirewallListRequest : Tea.TeaModel {
    public var currentPage: String?

    public var firewallSwitchStatus: String?

    public var lang: String?

    public var memberUid: String?

    public var pageSize: String?

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
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("FirewallSwitchStatus") {
            self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionNo") {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
        if dict.keys.contains("VpcFirewallName") {
            self.vpcFirewallName = dict["VpcFirewallName"] as! String
        }
        if dict.keys.contains("VpcId") {
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
                if dict.keys.contains("BasicRules") {
                    self.basicRules = dict["BasicRules"] as! Int32
                }
                if dict.keys.contains("EnableAllPatch") {
                    self.enableAllPatch = dict["EnableAllPatch"] as! Int32
                }
                if dict.keys.contains("RunMode") {
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
                        if dict.keys.contains("DestinationCidr") {
                            self.destinationCidr = dict["DestinationCidr"] as! String
                        }
                        if dict.keys.contains("NextHopInstanceId") {
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
                    if dict.keys.contains("RouteEntryList") {
                        self.routeEntryList = dict["RouteEntryList"] as! [DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList.RouteEntryList]
                    }
                    if dict.keys.contains("RouteTableId") {
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
                if dict.keys.contains("AuthorizationStatus") {
                    self.authorizationStatus = dict["AuthorizationStatus"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! Int64
                }
                if dict.keys.contains("RegionNo") {
                    self.regionNo = dict["RegionNo"] as! String
                }
                if dict.keys.contains("VpcCidrTableList") {
                    self.vpcCidrTableList = dict["VpcCidrTableList"] as! [DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc.VpcCidrTableList]
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcName") {
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
                        if dict.keys.contains("DestinationCidr") {
                            self.destinationCidr = dict["DestinationCidr"] as! String
                        }
                        if dict.keys.contains("NextHopInstanceId") {
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
                    if dict.keys.contains("RouteEntryList") {
                        self.routeEntryList = dict["RouteEntryList"] as! [DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc.VpcCidrTableList.RouteEntryList]
                    }
                    if dict.keys.contains("RouteTableId") {
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
                if dict.keys.contains("AuthorizationStatus") {
                    self.authorizationStatus = dict["AuthorizationStatus"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! Int64
                }
                if dict.keys.contains("RegionNo") {
                    self.regionNo = dict["RegionNo"] as! String
                }
                if dict.keys.contains("VpcCidrTableList") {
                    self.vpcCidrTableList = dict["VpcCidrTableList"] as! [DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc.VpcCidrTableList]
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcName") {
                    self.vpcName = dict["VpcName"] as! String
                }
            }
        }
        public var bandwidth: Int32?

        public var connectType: String?

        public var firewallSwitchStatus: String?

        public var ipsConfig: DescribeVpcFirewallListResponseBody.VpcFirewalls.IpsConfig?

        public var localVpc: DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc?

        public var memberUid: String?

        public var peerVpc: DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc?

        public var regionStatus: String?

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
            if self.vpcFirewallId != nil {
                map["VpcFirewallId"] = self.vpcFirewallId!
            }
            if self.vpcFirewallName != nil {
                map["VpcFirewallName"] = self.vpcFirewallName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("ConnectType") {
                self.connectType = dict["ConnectType"] as! String
            }
            if dict.keys.contains("FirewallSwitchStatus") {
                self.firewallSwitchStatus = dict["FirewallSwitchStatus"] as! String
            }
            if dict.keys.contains("IpsConfig") {
                var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.IpsConfig()
                model.fromMap(dict["IpsConfig"] as! [String: Any])
                self.ipsConfig = model
            }
            if dict.keys.contains("LocalVpc") {
                var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.LocalVpc()
                model.fromMap(dict["LocalVpc"] as! [String: Any])
                self.localVpc = model
            }
            if dict.keys.contains("MemberUid") {
                self.memberUid = dict["MemberUid"] as! String
            }
            if dict.keys.contains("PeerVpc") {
                var model = DescribeVpcFirewallListResponseBody.VpcFirewalls.PeerVpc()
                model.fromMap(dict["PeerVpc"] as! [String: Any])
                self.peerVpc = model
            }
            if dict.keys.contains("RegionStatus") {
                self.regionStatus = dict["RegionStatus"] as! String
            }
            if dict.keys.contains("VpcFirewallId") {
                self.vpcFirewallId = dict["VpcFirewallId"] as! String
            }
            if dict.keys.contains("VpcFirewallName") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("VpcFirewalls") {
            self.vpcFirewalls = dict["VpcFirewalls"] as! [DescribeVpcFirewallListResponseBody.VpcFirewalls]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
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
        if dict.keys.contains("End") {
            self.end = dict["End"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Start") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVpcFirewallPolicyPriorUsedResponseBody()
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
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") {
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
        if dict.keys.contains("AddressList") {
            self.addressList = dict["AddressList"] as! String
        }
        if dict.keys.contains("AutoAddTagEcs") {
            self.autoAddTagEcs = dict["AutoAddTagEcs"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupUuid") {
            self.groupUuid = dict["GroupUuid"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("TagList") {
            self.tagList = dict["TagList"] as! [ModifyAddressBookRequest.TagList]
        }
        if dict.keys.contains("TagRelation") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public var lang: String?

    public var messageType: String?

    public var proto: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.proto != nil {
            map["Proto"] = self.proto!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("AclUuid") {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("ApplicationNameList") {
            self.applicationNameList = dict["ApplicationNameList"] as! [String]
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestPort") {
            self.destPort = dict["DestPort"] as! String
        }
        if dict.keys.contains("DestPortGroup") {
            self.destPortGroup = dict["DestPortGroup"] as! String
        }
        if dict.keys.contains("DestPortType") {
            self.destPortType = dict["DestPortType"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationType") {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MessageType") {
            self.messageType = dict["MessageType"] as! String
        }
        if dict.keys.contains("Proto") {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NewOrder") {
            self.newOrder = dict["NewOrder"] as! String
        }
        if dict.keys.contains("OldOrder") {
            self.oldOrder = dict["OldOrder"] as! String
        }
        if dict.keys.contains("SourceIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyControlPolicyPositionResponseBody()
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
            if dict.keys.contains("MemberDesc") {
                self.memberDesc = dict["MemberDesc"] as! String
            }
            if dict.keys.contains("MemberUid") {
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
        if dict.keys.contains("Members") {
            self.members = dict["Members"] as! [ModifyInstanceMemberAttributesRequest.Members]
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyInstanceMemberAttributesResponseBody()
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
        if dict.keys.contains("InternetSwitch") {
            self.internetSwitch = dict["InternetSwitch"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyPolicyAdvancedConfigResponseBody()
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
        if dict.keys.contains("VpcFirewallName") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("FirewallSwitch") {
            self.firewallSwitch = dict["FirewallSwitch"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("LocalVpcCidrTableList") {
            self.localVpcCidrTableList = dict["LocalVpcCidrTableList"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("PeerVpcCidrTableList") {
            self.peerVpcCidrTableList = dict["PeerVpcCidrTableList"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
            self.vpcFirewallId = dict["VpcFirewallId"] as! String
        }
        if dict.keys.contains("VpcFirewallName") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public var description_: String?

    public var destPort: String?

    public var destPortGroup: String?

    public var destPortType: String?

    public var destination: String?

    public var destinationType: String?

    public var lang: String?

    public var proto: String?

    public var release: String?

    public var source: String?

    public var sourceType: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.proto != nil {
            map["Proto"] = self.proto!
        }
        if self.release != nil {
            map["Release"] = self.release!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.vpcFirewallId != nil {
            map["VpcFirewallId"] = self.vpcFirewallId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclAction") {
            self.aclAction = dict["AclAction"] as! String
        }
        if dict.keys.contains("AclUuid") {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestPort") {
            self.destPort = dict["DestPort"] as! String
        }
        if dict.keys.contains("DestPortGroup") {
            self.destPortGroup = dict["DestPortGroup"] as! String
        }
        if dict.keys.contains("DestPortType") {
            self.destPortType = dict["DestPortType"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationType") {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Proto") {
            self.proto = dict["Proto"] as! String
        }
        if dict.keys.contains("Release") {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyVpcFirewallControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyVpcFirewallControlPolicyPositionRequest : Tea.TeaModel {
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NewOrder") {
            self.newOrder = dict["NewOrder"] as! String
        }
        if dict.keys.contains("OldOrder") {
            self.oldOrder = dict["OldOrder"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("BasicRules") {
            self.basicRules = dict["BasicRules"] as! String
        }
        if dict.keys.contains("EnableAllPatch") {
            self.enableAllPatch = dict["EnableAllPatch"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("RunMode") {
            self.runMode = dict["RunMode"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("FirewallSwitch") {
            self.firewallSwitch = dict["FirewallSwitch"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("VpcFirewallId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("IpaddrList") {
            self.ipaddrList = dict["IpaddrList"] as! [String]
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegionList") {
            self.regionList = dict["RegionList"] as! [String]
        }
        if dict.keys.contains("ResourceTypeList") {
            self.resourceTypeList = dict["ResourceTypeList"] as! [String]
        }
        if dict.keys.contains("SourceIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("IpaddrList") {
            self.ipaddrList = dict["IpaddrList"] as! [String]
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegionList") {
            self.regionList = dict["RegionList"] as! [String]
        }
        if dict.keys.contains("ResourceTypeList") {
            self.resourceTypeList = dict["ResourceTypeList"] as! [String]
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class PutEnableFwSwitchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PutEnableFwSwitchResponseBody()
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
        if dict.keys.contains("AclUuid") {
            self.aclUuid = dict["AclUuid"] as! String
        }
        if dict.keys.contains("Lang") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResetVpcFirewallRuleHitCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
