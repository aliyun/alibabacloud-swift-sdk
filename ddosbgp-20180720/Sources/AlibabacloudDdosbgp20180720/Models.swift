import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddIpRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ipList: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ipList != nil {
            map["IpList"] = self.ipList!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IpList") {
            self.ipList = dict["IpList"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class AddIpResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AddIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddIpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddRdMemberListRequest : Tea.TeaModel {
    public class MemberList : Tea.TeaModel {
        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Uid") {
                self.uid = dict["Uid"] as! String
            }
        }
    }
    public var memberList: [AddRdMemberListRequest.MemberList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.memberList != nil {
            var tmp : [Any] = []
            for k in self.memberList! {
                tmp.append(k.toMap())
            }
            map["MemberList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberList") {
            var tmp : [AddRdMemberListRequest.MemberList] = []
            for v in dict["MemberList"] as! [Any] {
                var model = AddRdMemberListRequest.MemberList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.memberList = tmp
        }
    }
}

public class AddRdMemberListShrinkRequest : Tea.TeaModel {
    public var memberListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.memberListShrink != nil {
            map["MemberList"] = self.memberListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberList") {
            self.memberListShrink = dict["MemberList"] as! String
        }
    }
}

public class AddRdMemberListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AddRdMemberListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddRdMemberListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddRdMemberListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachAssetGroupToInstanceRequest : Tea.TeaModel {
    public class AssetGroupList : Tea.TeaModel {
        public var memberUid: String?

        public var name: String?

        public var region: String?

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
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberUid") {
                self.memberUid = dict["MemberUid"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var assetGroupList: [AttachAssetGroupToInstanceRequest.AssetGroupList]?

    public var instanceId: String?

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
        if self.assetGroupList != nil {
            var tmp : [Any] = []
            for k in self.assetGroupList! {
                tmp.append(k.toMap())
            }
            map["AssetGroupList"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetGroupList") {
            var tmp : [AttachAssetGroupToInstanceRequest.AssetGroupList] = []
            for v in dict["AssetGroupList"] as! [Any] {
                var model = AttachAssetGroupToInstanceRequest.AssetGroupList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.assetGroupList = tmp
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AttachAssetGroupToInstanceShrinkRequest : Tea.TeaModel {
    public var assetGroupListShrink: String?

    public var instanceId: String?

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
        if self.assetGroupListShrink != nil {
            map["AssetGroupList"] = self.assetGroupListShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetGroupList") {
            self.assetGroupListShrink = dict["AssetGroupList"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AttachAssetGroupToInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AttachAssetGroupToInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachAssetGroupToInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachAssetGroupToInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachToPolicyRequest : Tea.TeaModel {
    public class IpPortProtocolList : Tea.TeaModel {
        public var ip: String?

        public var port: Int32?

        public var protocol_: String?

        public override init() {
            super.init()
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
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
        }
    }
    public var ipPortProtocolList: [AttachToPolicyRequest.IpPortProtocolList]?

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
        if self.ipPortProtocolList != nil {
            var tmp : [Any] = []
            for k in self.ipPortProtocolList! {
                tmp.append(k.toMap())
            }
            map["IpPortProtocolList"] = tmp
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpPortProtocolList") {
            var tmp : [AttachToPolicyRequest.IpPortProtocolList] = []
            for v in dict["IpPortProtocolList"] as! [Any] {
                var model = AttachToPolicyRequest.IpPortProtocolList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ipPortProtocolList = tmp
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
    }
}

public class AttachToPolicyShrinkRequest : Tea.TeaModel {
    public var ipPortProtocolListShrink: String?

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
        if self.ipPortProtocolListShrink != nil {
            map["IpPortProtocolList"] = self.ipPortProtocolListShrink!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpPortProtocolList") {
            self.ipPortProtocolListShrink = dict["IpPortProtocolList"] as! String
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
    }
}

public class AttachToPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AttachToPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachToPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachToPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckAccessLogAuthRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class CheckAccessLogAuthResponseBody : Tea.TeaModel {
    public var accessLogAuth: Bool?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessLogAuth != nil {
            map["AccessLogAuth"] = self.accessLogAuth!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessLogAuth") {
            self.accessLogAuth = dict["AccessLogAuth"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckAccessLogAuthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckAccessLogAuthResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CheckAccessLogAuthResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckGrantRequest : Tea.TeaModel {
    public var isSlr: Bool?

    public var regionId: String?

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
        if self.isSlr != nil {
            map["IsSlr"] = self.isSlr!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsSlr") {
            self.isSlr = dict["IsSlr"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class CheckGrantResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class CheckGrantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckGrantResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CheckGrantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfigSchedruleOnDemandRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var ruleAction: String?

    public var ruleConditionCnt: String?

    public var ruleConditionKpps: String?

    public var ruleConditionMbps: String?

    public var ruleName: String?

    public var ruleSwitch: String?

    public var ruleUndoBeginTime: String?

    public var ruleUndoEndTime: String?

    public var ruleUndoMode: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleAction != nil {
            map["RuleAction"] = self.ruleAction!
        }
        if self.ruleConditionCnt != nil {
            map["RuleConditionCnt"] = self.ruleConditionCnt!
        }
        if self.ruleConditionKpps != nil {
            map["RuleConditionKpps"] = self.ruleConditionKpps!
        }
        if self.ruleConditionMbps != nil {
            map["RuleConditionMbps"] = self.ruleConditionMbps!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleSwitch != nil {
            map["RuleSwitch"] = self.ruleSwitch!
        }
        if self.ruleUndoBeginTime != nil {
            map["RuleUndoBeginTime"] = self.ruleUndoBeginTime!
        }
        if self.ruleUndoEndTime != nil {
            map["RuleUndoEndTime"] = self.ruleUndoEndTime!
        }
        if self.ruleUndoMode != nil {
            map["RuleUndoMode"] = self.ruleUndoMode!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleAction") {
            self.ruleAction = dict["RuleAction"] as! String
        }
        if dict.keys.contains("RuleConditionCnt") {
            self.ruleConditionCnt = dict["RuleConditionCnt"] as! String
        }
        if dict.keys.contains("RuleConditionKpps") {
            self.ruleConditionKpps = dict["RuleConditionKpps"] as! String
        }
        if dict.keys.contains("RuleConditionMbps") {
            self.ruleConditionMbps = dict["RuleConditionMbps"] as! String
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("RuleSwitch") {
            self.ruleSwitch = dict["RuleSwitch"] as! String
        }
        if dict.keys.contains("RuleUndoBeginTime") {
            self.ruleUndoBeginTime = dict["RuleUndoBeginTime"] as! String
        }
        if dict.keys.contains("RuleUndoEndTime") {
            self.ruleUndoEndTime = dict["RuleUndoEndTime"] as! String
        }
        if dict.keys.contains("RuleUndoMode") {
            self.ruleUndoMode = dict["RuleUndoMode"] as! String
        }
        if dict.keys.contains("TimeZone") {
            self.timeZone = dict["TimeZone"] as! String
        }
    }
}

public class ConfigSchedruleOnDemandResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ConfigSchedruleOnDemandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigSchedruleOnDemandResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ConfigSchedruleOnDemandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePolicyRequest : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreatePolicyResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreatePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSchedruleOnDemandRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var ruleAction: String?

    public var ruleConditionCnt: String?

    public var ruleConditionKpps: String?

    public var ruleConditionMbps: String?

    public var ruleName: String?

    public var ruleSwitch: String?

    public var ruleUndoBeginTime: String?

    public var ruleUndoEndTime: String?

    public var ruleUndoMode: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleAction != nil {
            map["RuleAction"] = self.ruleAction!
        }
        if self.ruleConditionCnt != nil {
            map["RuleConditionCnt"] = self.ruleConditionCnt!
        }
        if self.ruleConditionKpps != nil {
            map["RuleConditionKpps"] = self.ruleConditionKpps!
        }
        if self.ruleConditionMbps != nil {
            map["RuleConditionMbps"] = self.ruleConditionMbps!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleSwitch != nil {
            map["RuleSwitch"] = self.ruleSwitch!
        }
        if self.ruleUndoBeginTime != nil {
            map["RuleUndoBeginTime"] = self.ruleUndoBeginTime!
        }
        if self.ruleUndoEndTime != nil {
            map["RuleUndoEndTime"] = self.ruleUndoEndTime!
        }
        if self.ruleUndoMode != nil {
            map["RuleUndoMode"] = self.ruleUndoMode!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleAction") {
            self.ruleAction = dict["RuleAction"] as! String
        }
        if dict.keys.contains("RuleConditionCnt") {
            self.ruleConditionCnt = dict["RuleConditionCnt"] as! String
        }
        if dict.keys.contains("RuleConditionKpps") {
            self.ruleConditionKpps = dict["RuleConditionKpps"] as! String
        }
        if dict.keys.contains("RuleConditionMbps") {
            self.ruleConditionMbps = dict["RuleConditionMbps"] as! String
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("RuleSwitch") {
            self.ruleSwitch = dict["RuleSwitch"] as! String
        }
        if dict.keys.contains("RuleUndoBeginTime") {
            self.ruleUndoBeginTime = dict["RuleUndoBeginTime"] as! String
        }
        if dict.keys.contains("RuleUndoEndTime") {
            self.ruleUndoEndTime = dict["RuleUndoEndTime"] as! String
        }
        if dict.keys.contains("RuleUndoMode") {
            self.ruleUndoMode = dict["RuleUndoMode"] as! String
        }
        if dict.keys.contains("TimeZone") {
            self.timeZone = dict["TimeZone"] as! String
        }
    }
}

public class CreateSchedruleOnDemandResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class CreateSchedruleOnDemandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSchedruleOnDemandResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateSchedruleOnDemandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBlackholeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ip: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DeleteBlackholeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteBlackholeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBlackholeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteBlackholeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIpRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ipList: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ipList != nil {
            map["IpList"] = self.ipList!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IpList") {
            self.ipList = dict["IpList"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DeleteIpResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePolicyRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeletePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRdMemberListRequest : Tea.TeaModel {
    public class MemberList : Tea.TeaModel {
        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Uid") {
                self.uid = dict["Uid"] as! String
            }
        }
    }
    public var memberList: [DeleteRdMemberListRequest.MemberList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.memberList != nil {
            var tmp : [Any] = []
            for k in self.memberList! {
                tmp.append(k.toMap())
            }
            map["MemberList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberList") {
            var tmp : [DeleteRdMemberListRequest.MemberList] = []
            for v in dict["MemberList"] as! [Any] {
                var model = DeleteRdMemberListRequest.MemberList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.memberList = tmp
        }
    }
}

public class DeleteRdMemberListShrinkRequest : Tea.TeaModel {
    public var memberListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.memberListShrink != nil {
            map["MemberList"] = self.memberListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberList") {
            self.memberListShrink = dict["MemberList"] as! String
        }
    }
}

public class DeleteRdMemberListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteRdMemberListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRdMemberListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteRdMemberListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSchedruleOnDemandRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
    }
}

public class DeleteSchedruleOnDemandResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteSchedruleOnDemandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSchedruleOnDemandResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteSchedruleOnDemandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAssetGroupRequest : Tea.TeaModel {
    public var name: String?

    public var region: String?

    public var regionId: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeAssetGroupResponseBody : Tea.TeaModel {
    public class AssetGroupList : Tea.TeaModel {
        public var name: String?

        public var region: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var assetGroupList: [DescribeAssetGroupResponseBody.AssetGroupList]?

    public var requestId: String?

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
        if self.assetGroupList != nil {
            var tmp : [Any] = []
            for k in self.assetGroupList! {
                tmp.append(k.toMap())
            }
            map["AssetGroupList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetGroupList") {
            var tmp : [DescribeAssetGroupResponseBody.AssetGroupList] = []
            for v in dict["AssetGroupList"] as! [Any] {
                var model = DescribeAssetGroupResponseBody.AssetGroupList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.assetGroupList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class DescribeAssetGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAssetGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeAssetGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAssetGroupToInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var memberUid: String?

    public var name: String?

    public var region: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeAssetGroupToInstanceResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var instanceId: String?

        public var memberUid: String?

        public var name: String?

        public var region: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("MemberUid") {
                self.memberUid = dict["MemberUid"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var dataList: [DescribeAssetGroupToInstanceResponseBody.DataList]?

    public var requestId: String?

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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataList") {
            var tmp : [DescribeAssetGroupToInstanceResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = DescribeAssetGroupToInstanceResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class DescribeAssetGroupToInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAssetGroupToInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeAssetGroupToInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDdosEventRequest : Tea.TeaModel {
    public var endTime: Int32?

    public var instanceId: String?

    public var ip: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var startTime: Int32?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int32
        }
    }
}

public class DescribeDdosEventResponseBody : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public var endTime: Int32?

        public var ip: String?

        public var mbps: Int32?

        public var pps: Int32?

        public var startTime: Int32?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.mbps != nil {
                map["Mbps"] = self.mbps!
            }
            if self.pps != nil {
                map["Pps"] = self.pps!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int32
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Mbps") {
                self.mbps = dict["Mbps"] as! Int32
            }
            if dict.keys.contains("Pps") {
                self.pps = dict["Pps"] as! Int32
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var events: [DescribeDdosEventResponseBody.Events]?

    public var requestId: String?

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
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["Events"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Events") {
            var tmp : [DescribeDdosEventResponseBody.Events] = []
            for v in dict["Events"] as! [Any] {
                var model = DescribeDdosEventResponseBody.Events()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.events = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class DescribeDdosEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDdosEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDdosEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDdosOriginInstanceBillRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var isShowList: Bool?

    public var startTime: Int64?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.isShowList != nil {
            map["IsShowList"] = self.isShowList!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("IsShowList") {
            self.isShowList = dict["IsShowList"] as! Bool
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeDdosOriginInstanceBillResponseBody : Tea.TeaModel {
    public class FlowList : Tea.TeaModel {
        public var memberFlow: String?

        public var regionFlow: String?

        public var time: Int64?

        public var totalFlow: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memberFlow != nil {
                map["MemberFlow"] = self.memberFlow!
            }
            if self.regionFlow != nil {
                map["RegionFlow"] = self.regionFlow!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            if self.totalFlow != nil {
                map["TotalFlow"] = self.totalFlow!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberFlow") {
                self.memberFlow = dict["MemberFlow"] as! String
            }
            if dict.keys.contains("RegionFlow") {
                self.regionFlow = dict["RegionFlow"] as! String
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! Int64
            }
            if dict.keys.contains("TotalFlow") {
                self.totalFlow = dict["TotalFlow"] as! Int64
            }
        }
    }
    public class IpCountOrFunctionList : Tea.TeaModel {
        public var coverage: String?

        public var ipCntCn: Int64?

        public var ipCntOv: Int64?

        public var memberIpCnt: String?

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
            if self.coverage != nil {
                map["Coverage"] = self.coverage!
            }
            if self.ipCntCn != nil {
                map["IpCntCn"] = self.ipCntCn!
            }
            if self.ipCntOv != nil {
                map["IpCntOv"] = self.ipCntOv!
            }
            if self.memberIpCnt != nil {
                map["MemberIpCnt"] = self.memberIpCnt!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Coverage") {
                self.coverage = dict["Coverage"] as! String
            }
            if dict.keys.contains("IpCntCn") {
                self.ipCntCn = dict["IpCntCn"] as! Int64
            }
            if dict.keys.contains("IpCntOv") {
                self.ipCntOv = dict["IpCntOv"] as! Int64
            }
            if dict.keys.contains("MemberIpCnt") {
                self.memberIpCnt = dict["MemberIpCnt"] as! String
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! Int64
            }
        }
    }
    public class StandardAssetsFlowList : Tea.TeaModel {
        public var memberFlow: String?

        public var regionFlow: String?

        public var time: Int64?

        public var totalFlow: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memberFlow != nil {
                map["MemberFlow"] = self.memberFlow!
            }
            if self.regionFlow != nil {
                map["RegionFlow"] = self.regionFlow!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            if self.totalFlow != nil {
                map["TotalFlow"] = self.totalFlow!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberFlow") {
                self.memberFlow = dict["MemberFlow"] as! String
            }
            if dict.keys.contains("RegionFlow") {
                self.regionFlow = dict["RegionFlow"] as! String
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! Int64
            }
            if dict.keys.contains("TotalFlow") {
                self.totalFlow = dict["TotalFlow"] as! Int64
            }
        }
    }
    public var debtStatus: Int64?

    public var flowList: [DescribeDdosOriginInstanceBillResponseBody.FlowList]?

    public var flowRegion: [String: Any]?

    public var instanceId: String?

    public var ipCount: Int64?

    public var ipCountOrFunctionList: [DescribeDdosOriginInstanceBillResponseBody.IpCountOrFunctionList]?

    public var ipInfo: String?

    public var requestId: String?

    public var standardAssetsFlowList: [DescribeDdosOriginInstanceBillResponseBody.StandardAssetsFlowList]?

    public var standardAssetsFlowRegion: [String: Any]?

    public var standardAssetsTotalFlowCn: Int64?

    public var standardAssetsTotalFlowOv: Int64?

    public var status: Int64?

    public var totalFlowCn: Int64?

    public var totalFlowOv: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.debtStatus != nil {
            map["DebtStatus"] = self.debtStatus!
        }
        if self.flowList != nil {
            var tmp : [Any] = []
            for k in self.flowList! {
                tmp.append(k.toMap())
            }
            map["FlowList"] = tmp
        }
        if self.flowRegion != nil {
            map["FlowRegion"] = self.flowRegion!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ipCount != nil {
            map["IpCount"] = self.ipCount!
        }
        if self.ipCountOrFunctionList != nil {
            var tmp : [Any] = []
            for k in self.ipCountOrFunctionList! {
                tmp.append(k.toMap())
            }
            map["IpCountOrFunctionList"] = tmp
        }
        if self.ipInfo != nil {
            map["IpInfo"] = self.ipInfo!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.standardAssetsFlowList != nil {
            var tmp : [Any] = []
            for k in self.standardAssetsFlowList! {
                tmp.append(k.toMap())
            }
            map["StandardAssetsFlowList"] = tmp
        }
        if self.standardAssetsFlowRegion != nil {
            map["StandardAssetsFlowRegion"] = self.standardAssetsFlowRegion!
        }
        if self.standardAssetsTotalFlowCn != nil {
            map["StandardAssetsTotalFlowCn"] = self.standardAssetsTotalFlowCn!
        }
        if self.standardAssetsTotalFlowOv != nil {
            map["StandardAssetsTotalFlowOv"] = self.standardAssetsTotalFlowOv!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.totalFlowCn != nil {
            map["TotalFlowCn"] = self.totalFlowCn!
        }
        if self.totalFlowOv != nil {
            map["TotalFlowOv"] = self.totalFlowOv!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DebtStatus") {
            self.debtStatus = dict["DebtStatus"] as! Int64
        }
        if dict.keys.contains("FlowList") {
            var tmp : [DescribeDdosOriginInstanceBillResponseBody.FlowList] = []
            for v in dict["FlowList"] as! [Any] {
                var model = DescribeDdosOriginInstanceBillResponseBody.FlowList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.flowList = tmp
        }
        if dict.keys.contains("FlowRegion") {
            self.flowRegion = dict["FlowRegion"] as! [String: Any]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IpCount") {
            self.ipCount = dict["IpCount"] as! Int64
        }
        if dict.keys.contains("IpCountOrFunctionList") {
            var tmp : [DescribeDdosOriginInstanceBillResponseBody.IpCountOrFunctionList] = []
            for v in dict["IpCountOrFunctionList"] as! [Any] {
                var model = DescribeDdosOriginInstanceBillResponseBody.IpCountOrFunctionList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ipCountOrFunctionList = tmp
        }
        if dict.keys.contains("IpInfo") {
            self.ipInfo = dict["IpInfo"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StandardAssetsFlowList") {
            var tmp : [DescribeDdosOriginInstanceBillResponseBody.StandardAssetsFlowList] = []
            for v in dict["StandardAssetsFlowList"] as! [Any] {
                var model = DescribeDdosOriginInstanceBillResponseBody.StandardAssetsFlowList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.standardAssetsFlowList = tmp
        }
        if dict.keys.contains("StandardAssetsFlowRegion") {
            self.standardAssetsFlowRegion = dict["StandardAssetsFlowRegion"] as! [String: Any]
        }
        if dict.keys.contains("StandardAssetsTotalFlowCn") {
            self.standardAssetsTotalFlowCn = dict["StandardAssetsTotalFlowCn"] as! Int64
        }
        if dict.keys.contains("StandardAssetsTotalFlowOv") {
            self.standardAssetsTotalFlowOv = dict["StandardAssetsTotalFlowOv"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int64
        }
        if dict.keys.contains("TotalFlowCn") {
            self.totalFlowCn = dict["TotalFlowCn"] as! Int64
        }
        if dict.keys.contains("TotalFlowOv") {
            self.totalFlowOv = dict["TotalFlowOv"] as! Int64
        }
    }
}

public class DescribeDdosOriginInstanceBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDdosOriginInstanceBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDdosOriginInstanceBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeExcpetionCountRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeExcpetionCountResponseBody : Tea.TeaModel {
    public var exceptionIpCount: Int32?

    public var expireTimeCount: Int32?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exceptionIpCount != nil {
            map["ExceptionIpCount"] = self.exceptionIpCount!
        }
        if self.expireTimeCount != nil {
            map["ExpireTimeCount"] = self.expireTimeCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExceptionIpCount") {
            self.exceptionIpCount = dict["ExceptionIpCount"] as! Int32
        }
        if dict.keys.contains("ExpireTimeCount") {
            self.expireTimeCount = dict["ExpireTimeCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeExcpetionCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeExcpetionCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeExcpetionCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceListRequest : Tea.TeaModel {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var instanceIdList: String?

    public var instanceType: String?

    public var instanceTypeList: [String]?

    public var ip: String?

    public var ipVersion: String?

    public var orderby: String?

    public var orderdire: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var remark: String?

    public var resourceGroupId: String?

    public var tag: [DescribeInstanceListRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIdList != nil {
            map["InstanceIdList"] = self.instanceIdList!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.instanceTypeList != nil {
            map["InstanceTypeList"] = self.instanceTypeList!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.orderby != nil {
            map["Orderby"] = self.orderby!
        }
        if self.orderdire != nil {
            map["Orderdire"] = self.orderdire!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if dict.keys.contains("InstanceIdList") {
            self.instanceIdList = dict["InstanceIdList"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("InstanceTypeList") {
            self.instanceTypeList = dict["InstanceTypeList"] as! [String]
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("IpVersion") {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("Orderby") {
            self.orderby = dict["Orderby"] as! String
        }
        if dict.keys.contains("Orderdire") {
            self.orderdire = dict["Orderdire"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [DescribeInstanceListRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeInstanceListRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeInstanceListResponseBody : Tea.TeaModel {
    public class InstanceList : Tea.TeaModel {
        public class AutoProtectCondition : Tea.TeaModel {
            public var events: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.events != nil {
                    map["Events"] = self.events!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Events") {
                    self.events = dict["Events"] as! [String]
                }
            }
        }
        public var autoProtectCondition: DescribeInstanceListResponseBody.InstanceList.AutoProtectCondition?

        public var autoRenewal: Bool?

        public var blackholdingCount: String?

        public var commodityType: String?

        public var coverageType: Int32?

        public var expireTime: Int64?

        public var gmtCreate: Int64?

        public var instanceId: String?

        public var instanceType: String?

        public var ipType: String?

        public var product: String?

        public var remark: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.autoProtectCondition?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoProtectCondition != nil {
                map["AutoProtectCondition"] = self.autoProtectCondition?.toMap()
            }
            if self.autoRenewal != nil {
                map["AutoRenewal"] = self.autoRenewal!
            }
            if self.blackholdingCount != nil {
                map["BlackholdingCount"] = self.blackholdingCount!
            }
            if self.commodityType != nil {
                map["CommodityType"] = self.commodityType!
            }
            if self.coverageType != nil {
                map["CoverageType"] = self.coverageType!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.ipType != nil {
                map["IpType"] = self.ipType!
            }
            if self.product != nil {
                map["Product"] = self.product!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoProtectCondition") {
                var model = DescribeInstanceListResponseBody.InstanceList.AutoProtectCondition()
                model.fromMap(dict["AutoProtectCondition"] as! [String: Any])
                self.autoProtectCondition = model
            }
            if dict.keys.contains("AutoRenewal") {
                self.autoRenewal = dict["AutoRenewal"] as! Bool
            }
            if dict.keys.contains("BlackholdingCount") {
                self.blackholdingCount = dict["BlackholdingCount"] as! String
            }
            if dict.keys.contains("CommodityType") {
                self.commodityType = dict["CommodityType"] as! String
            }
            if dict.keys.contains("CoverageType") {
                self.coverageType = dict["CoverageType"] as! Int32
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("IpType") {
                self.ipType = dict["IpType"] as! String
            }
            if dict.keys.contains("Product") {
                self.product = dict["Product"] as! String
            }
            if dict.keys.contains("Remark") {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var instanceList: [DescribeInstanceListResponseBody.InstanceList]?

    public var requestId: String?

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
        if self.instanceList != nil {
            var tmp : [Any] = []
            for k in self.instanceList! {
                tmp.append(k.toMap())
            }
            map["InstanceList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceList") {
            var tmp : [DescribeInstanceListResponseBody.InstanceList] = []
            for v in dict["InstanceList"] as! [Any] {
                var model = DescribeInstanceListResponseBody.InstanceList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class DescribeInstanceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeInstanceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceSpecsRequest : Tea.TeaModel {
    public var instanceIdList: String?

    public var regionId: String?

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
        if self.instanceIdList != nil {
            map["InstanceIdList"] = self.instanceIdList!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIdList") {
            self.instanceIdList = dict["InstanceIdList"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeInstanceSpecsResponseBody : Tea.TeaModel {
    public class InstanceSpecs : Tea.TeaModel {
        public class PackConfig : Tea.TeaModel {
            public var bandwidth: Int64?

            public var bindIpCount: Int32?

            public var ipAdvanceThre: Int32?

            public var ipBasicThre: Int32?

            public var ipSpec: Int32?

            public var normalBandwidth: Int32?

            public var packAdvThre: Int32?

            public var packBasicThre: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bandwidth != nil {
                    map["Bandwidth"] = self.bandwidth!
                }
                if self.bindIpCount != nil {
                    map["BindIpCount"] = self.bindIpCount!
                }
                if self.ipAdvanceThre != nil {
                    map["IpAdvanceThre"] = self.ipAdvanceThre!
                }
                if self.ipBasicThre != nil {
                    map["IpBasicThre"] = self.ipBasicThre!
                }
                if self.ipSpec != nil {
                    map["IpSpec"] = self.ipSpec!
                }
                if self.normalBandwidth != nil {
                    map["NormalBandwidth"] = self.normalBandwidth!
                }
                if self.packAdvThre != nil {
                    map["PackAdvThre"] = self.packAdvThre!
                }
                if self.packBasicThre != nil {
                    map["PackBasicThre"] = self.packBasicThre!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bandwidth") {
                    self.bandwidth = dict["Bandwidth"] as! Int64
                }
                if dict.keys.contains("BindIpCount") {
                    self.bindIpCount = dict["BindIpCount"] as! Int32
                }
                if dict.keys.contains("IpAdvanceThre") {
                    self.ipAdvanceThre = dict["IpAdvanceThre"] as! Int32
                }
                if dict.keys.contains("IpBasicThre") {
                    self.ipBasicThre = dict["IpBasicThre"] as! Int32
                }
                if dict.keys.contains("IpSpec") {
                    self.ipSpec = dict["IpSpec"] as! Int32
                }
                if dict.keys.contains("NormalBandwidth") {
                    self.normalBandwidth = dict["NormalBandwidth"] as! Int32
                }
                if dict.keys.contains("PackAdvThre") {
                    self.packAdvThre = dict["PackAdvThre"] as! Int32
                }
                if dict.keys.contains("PackBasicThre") {
                    self.packBasicThre = dict["PackBasicThre"] as! Int32
                }
            }
        }
        public var availableDefenseTimes: Int32?

        public var availableDeleteBlackholeCount: String?

        public var defenseTimesPercent: Int32?

        public var instanceId: String?

        public var isFullDefenseMode: Int32?

        public var packConfig: DescribeInstanceSpecsResponseBody.InstanceSpecs.PackConfig?

        public var region: String?

        public var totalDefenseTimes: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.packConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.availableDefenseTimes != nil {
                map["AvailableDefenseTimes"] = self.availableDefenseTimes!
            }
            if self.availableDeleteBlackholeCount != nil {
                map["AvailableDeleteBlackholeCount"] = self.availableDeleteBlackholeCount!
            }
            if self.defenseTimesPercent != nil {
                map["DefenseTimesPercent"] = self.defenseTimesPercent!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.isFullDefenseMode != nil {
                map["IsFullDefenseMode"] = self.isFullDefenseMode!
            }
            if self.packConfig != nil {
                map["PackConfig"] = self.packConfig?.toMap()
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.totalDefenseTimes != nil {
                map["TotalDefenseTimes"] = self.totalDefenseTimes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvailableDefenseTimes") {
                self.availableDefenseTimes = dict["AvailableDefenseTimes"] as! Int32
            }
            if dict.keys.contains("AvailableDeleteBlackholeCount") {
                self.availableDeleteBlackholeCount = dict["AvailableDeleteBlackholeCount"] as! String
            }
            if dict.keys.contains("DefenseTimesPercent") {
                self.defenseTimesPercent = dict["DefenseTimesPercent"] as! Int32
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("IsFullDefenseMode") {
                self.isFullDefenseMode = dict["IsFullDefenseMode"] as! Int32
            }
            if dict.keys.contains("PackConfig") {
                var model = DescribeInstanceSpecsResponseBody.InstanceSpecs.PackConfig()
                model.fromMap(dict["PackConfig"] as! [String: Any])
                self.packConfig = model
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("TotalDefenseTimes") {
                self.totalDefenseTimes = dict["TotalDefenseTimes"] as! Int32
            }
        }
    }
    public var instanceSpecs: [DescribeInstanceSpecsResponseBody.InstanceSpecs]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceSpecs != nil {
            var tmp : [Any] = []
            for k in self.instanceSpecs! {
                tmp.append(k.toMap())
            }
            map["InstanceSpecs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceSpecs") {
            var tmp : [DescribeInstanceSpecsResponseBody.InstanceSpecs] = []
            for v in dict["InstanceSpecs"] as! [Any] {
                var model = DescribeInstanceSpecsResponseBody.InstanceSpecs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceSpecs = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInstanceSpecsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceSpecsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeInstanceSpecsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOnDemandDdosEventRequest : Tea.TeaModel {
    public var endTime: Int32?

    public var instanceId: String?

    public var ip: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var startTime: Int32?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int32
        }
    }
}

public class DescribeOnDemandDdosEventResponseBody : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public var endTime: Int32?

        public var ip: String?

        public var mbps: Int32?

        public var pps: Int32?

        public var startTime: Int32?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.mbps != nil {
                map["Mbps"] = self.mbps!
            }
            if self.pps != nil {
                map["Pps"] = self.pps!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int32
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Mbps") {
                self.mbps = dict["Mbps"] as! Int32
            }
            if dict.keys.contains("Pps") {
                self.pps = dict["Pps"] as! Int32
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var events: [DescribeOnDemandDdosEventResponseBody.Events]?

    public var requestId: String?

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
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["Events"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Events") {
            var tmp : [DescribeOnDemandDdosEventResponseBody.Events] = []
            for v in dict["Events"] as! [Any] {
                var model = DescribeOnDemandDdosEventResponseBody.Events()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.events = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class DescribeOnDemandDdosEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOnDemandDdosEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeOnDemandDdosEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOnDemandInstanceStatusRequest : Tea.TeaModel {
    public var instanceIdList: [String]?

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
        if self.instanceIdList != nil {
            map["InstanceIdList"] = self.instanceIdList!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIdList") {
            self.instanceIdList = dict["InstanceIdList"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeOnDemandInstanceStatusResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var declared: String?

        public var desc: String?

        public var instanceId: String?

        public var mode: String?

        public var net: String?

        public var registedAs: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.declared != nil {
                map["Declared"] = self.declared!
            }
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.net != nil {
                map["Net"] = self.net!
            }
            if self.registedAs != nil {
                map["RegistedAs"] = self.registedAs!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Declared") {
                self.declared = dict["Declared"] as! String
            }
            if dict.keys.contains("Desc") {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Mode") {
                self.mode = dict["Mode"] as! String
            }
            if dict.keys.contains("Net") {
                self.net = dict["Net"] as! String
            }
            if dict.keys.contains("RegistedAs") {
                self.registedAs = dict["RegistedAs"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var instances: [DescribeOnDemandInstanceStatusResponseBody.Instances]?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") {
            var tmp : [DescribeOnDemandInstanceStatusResponseBody.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = DescribeOnDemandInstanceStatusResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOnDemandInstanceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOnDemandInstanceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeOnDemandInstanceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOpEntitiesRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endTime: Int64?

    public var instanceId: String?

    public var orderBy: String?

    public var orderDir: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.orderDir != nil {
            map["OrderDir"] = self.orderDir!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OrderDir") {
            self.orderDir = dict["OrderDir"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeOpEntitiesResponseBody : Tea.TeaModel {
    public class OpEntities : Tea.TeaModel {
        public var entityObject: String?

        public var entityType: Int32?

        public var gmtCreate: Int64?

        public var opAccount: String?

        public var opAction: Int32?

        public var opDesc: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityObject != nil {
                map["EntityObject"] = self.entityObject!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.opAccount != nil {
                map["OpAccount"] = self.opAccount!
            }
            if self.opAction != nil {
                map["OpAction"] = self.opAction!
            }
            if self.opDesc != nil {
                map["OpDesc"] = self.opDesc!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntityObject") {
                self.entityObject = dict["EntityObject"] as! String
            }
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! Int32
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("OpAccount") {
                self.opAccount = dict["OpAccount"] as! String
            }
            if dict.keys.contains("OpAction") {
                self.opAction = dict["OpAction"] as! Int32
            }
            if dict.keys.contains("OpDesc") {
                self.opDesc = dict["OpDesc"] as! String
            }
        }
    }
    public var opEntities: [DescribeOpEntitiesResponseBody.OpEntities]?

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
        if self.opEntities != nil {
            var tmp : [Any] = []
            for k in self.opEntities! {
                tmp.append(k.toMap())
            }
            map["OpEntities"] = tmp
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
        if dict.keys.contains("OpEntities") {
            var tmp : [DescribeOpEntitiesResponseBody.OpEntities] = []
            for v in dict["OpEntities"] as! [Any] {
                var model = DescribeOpEntitiesResponseBody.OpEntities()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.opEntities = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeOpEntitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOpEntitiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeOpEntitiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePackIpListRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ip: String?

    public var memberUid: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var productName: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
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
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("MemberUid") {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribePackIpListResponseBody : Tea.TeaModel {
    public class IpList : Tea.TeaModel {
        public var ip: String?

        public var memberUid: String?

        public var nsmExpireAt: Int64?

        public var nsmStartAt: Int64?

        public var nsmStatus: Int32?

        public var product: String?

        public var region: String?

        public var remark: String?

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
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.nsmExpireAt != nil {
                map["NsmExpireAt"] = self.nsmExpireAt!
            }
            if self.nsmStartAt != nil {
                map["NsmStartAt"] = self.nsmStartAt!
            }
            if self.nsmStatus != nil {
                map["NsmStatus"] = self.nsmStatus!
            }
            if self.product != nil {
                map["Product"] = self.product!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("MemberUid") {
                self.memberUid = dict["MemberUid"] as! String
            }
            if dict.keys.contains("NsmExpireAt") {
                self.nsmExpireAt = dict["NsmExpireAt"] as! Int64
            }
            if dict.keys.contains("NsmStartAt") {
                self.nsmStartAt = dict["NsmStartAt"] as! Int64
            }
            if dict.keys.contains("NsmStatus") {
                self.nsmStatus = dict["NsmStatus"] as! Int32
            }
            if dict.keys.contains("Product") {
                self.product = dict["Product"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Remark") {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var ipList: [DescribePackIpListResponseBody.IpList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.ipList != nil {
            var tmp : [Any] = []
            for k in self.ipList! {
                tmp.append(k.toMap())
            }
            map["IpList"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IpList") {
            var tmp : [DescribePackIpListResponseBody.IpList] = []
            for v in dict["IpList"] as! [Any] {
                var model = DescribePackIpListResponseBody.IpList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ipList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class DescribePackIpListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePackIpListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribePackIpListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRdMemberListRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceDirectoryId != nil {
            map["ResourceDirectoryId"] = self.resourceDirectoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceDirectoryId") {
            self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
        }
    }
}

public class DescribeRdMemberListResponseBody : Tea.TeaModel {
    public class MemberList : Tea.TeaModel {
        public var gmtCreate: Int64?

        public var name: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Uid") {
                self.uid = dict["Uid"] as! String
            }
        }
    }
    public var memberList: [DescribeRdMemberListResponseBody.MemberList]?

    public var requestId: String?

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
        if self.memberList != nil {
            var tmp : [Any] = []
            for k in self.memberList! {
                tmp.append(k.toMap())
            }
            map["MemberList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberList") {
            var tmp : [DescribeRdMemberListResponseBody.MemberList] = []
            for v in dict["MemberList"] as! [Any] {
                var model = DescribeRdMemberListResponseBody.MemberList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.memberList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class DescribeRdMemberListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRdMemberListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeRdMemberListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRdStatusResponseBody : Tea.TeaModel {
    public var currentUid: String?

    public var currentUidType: String?

    public var enabled: Bool?

    public var localEnable: Bool?

    public var masterUid: String?

    public var remoteEnable: Bool?

    public var requestId: String?

    public var rootUid: String?

    public var servicePrincipalEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentUid != nil {
            map["CurrentUid"] = self.currentUid!
        }
        if self.currentUidType != nil {
            map["CurrentUidType"] = self.currentUidType!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.localEnable != nil {
            map["LocalEnable"] = self.localEnable!
        }
        if self.masterUid != nil {
            map["MasterUid"] = self.masterUid!
        }
        if self.remoteEnable != nil {
            map["RemoteEnable"] = self.remoteEnable!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootUid != nil {
            map["RootUid"] = self.rootUid!
        }
        if self.servicePrincipalEnabled != nil {
            map["ServicePrincipalEnabled"] = self.servicePrincipalEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentUid") {
            self.currentUid = dict["CurrentUid"] as! String
        }
        if dict.keys.contains("CurrentUidType") {
            self.currentUidType = dict["CurrentUidType"] as! String
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("LocalEnable") {
            self.localEnable = dict["LocalEnable"] as! Bool
        }
        if dict.keys.contains("MasterUid") {
            self.masterUid = dict["MasterUid"] as! String
        }
        if dict.keys.contains("RemoteEnable") {
            self.remoteEnable = dict["RemoteEnable"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RootUid") {
            self.rootUid = dict["RootUid"] as! String
        }
        if dict.keys.contains("ServicePrincipalEnabled") {
            self.servicePrincipalEnabled = dict["ServicePrincipalEnabled"] as! Bool
        }
    }
}

public class DescribeRdStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRdStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeRdStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var regionEnName: String?

        public var regionId: String?

        public var regionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regionEnName != nil {
                map["RegionEnName"] = self.regionEnName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionEnName") {
                self.regionEnName = dict["RegionEnName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RegionName") {
                self.regionName = dict["RegionName"] as! String
            }
        }
    }
    public var code: String?

    public var regions: [DescribeRegionsResponseBody.Regions]?

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
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
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
        if dict.keys.contains("Regions") {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = DescribeRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTrafficRequest : Tea.TeaModel {
    public var endTime: Int32?

    public var flowType: String?

    public var instanceId: String?

    public var interval: Int32?

    public var ip: String?

    public var ipnet: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var startTime: Int32?

    public override init() {
        super.init()
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
        if self.flowType != nil {
            map["FlowType"] = self.flowType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.ipnet != nil {
            map["Ipnet"] = self.ipnet!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int32
        }
        if dict.keys.contains("FlowType") {
            self.flowType = dict["FlowType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! Int32
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Ipnet") {
            self.ipnet = dict["Ipnet"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int32
        }
    }
}

public class DescribeTrafficResponseBody : Tea.TeaModel {
    public class FlowList : Tea.TeaModel {
        public var attackBps: Int64?

        public var attackPps: Int64?

        public var flowType: String?

        public var kbps: Int32?

        public var name: String?

        public var pps: Int32?

        public var time: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attackBps != nil {
                map["AttackBps"] = self.attackBps!
            }
            if self.attackPps != nil {
                map["AttackPps"] = self.attackPps!
            }
            if self.flowType != nil {
                map["FlowType"] = self.flowType!
            }
            if self.kbps != nil {
                map["Kbps"] = self.kbps!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.pps != nil {
                map["Pps"] = self.pps!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttackBps") {
                self.attackBps = dict["AttackBps"] as! Int64
            }
            if dict.keys.contains("AttackPps") {
                self.attackPps = dict["AttackPps"] as! Int64
            }
            if dict.keys.contains("FlowType") {
                self.flowType = dict["FlowType"] as! String
            }
            if dict.keys.contains("Kbps") {
                self.kbps = dict["Kbps"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Pps") {
                self.pps = dict["Pps"] as! Int32
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! Int32
            }
        }
    }
    public var flowList: [DescribeTrafficResponseBody.FlowList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowList != nil {
            var tmp : [Any] = []
            for k in self.flowList! {
                tmp.append(k.toMap())
            }
            map["FlowList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FlowList") {
            var tmp : [DescribeTrafficResponseBody.FlowList] = []
            for v in dict["FlowList"] as! [Any] {
                var model = DescribeTrafficResponseBody.FlowList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.flowList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeTrafficResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTrafficResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeTrafficResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachFromPolicyRequest : Tea.TeaModel {
    public class IpPortProtocolList : Tea.TeaModel {
        public var ip: String?

        public var port: Int32?

        public var protocol_: String?

        public override init() {
            super.init()
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
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
        }
    }
    public var ipPortProtocolList: [DetachFromPolicyRequest.IpPortProtocolList]?

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
        if self.ipPortProtocolList != nil {
            var tmp : [Any] = []
            for k in self.ipPortProtocolList! {
                tmp.append(k.toMap())
            }
            map["IpPortProtocolList"] = tmp
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpPortProtocolList") {
            var tmp : [DetachFromPolicyRequest.IpPortProtocolList] = []
            for v in dict["IpPortProtocolList"] as! [Any] {
                var model = DetachFromPolicyRequest.IpPortProtocolList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ipPortProtocolList = tmp
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
    }
}

public class DetachFromPolicyShrinkRequest : Tea.TeaModel {
    public var ipPortProtocolListShrink: String?

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
        if self.ipPortProtocolListShrink != nil {
            map["IpPortProtocolList"] = self.ipPortProtocolListShrink!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpPortProtocolList") {
            self.ipPortProtocolListShrink = dict["IpPortProtocolList"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
    }
}

public class DetachFromPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DetachFromPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachFromPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetachFromPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DettachAssetGroupToInstanceRequest : Tea.TeaModel {
    public class AssetGroupList : Tea.TeaModel {
        public var name: String?

        public var region: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var assetGroupList: [DettachAssetGroupToInstanceRequest.AssetGroupList]?

    public var instanceId: String?

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
        if self.assetGroupList != nil {
            var tmp : [Any] = []
            for k in self.assetGroupList! {
                tmp.append(k.toMap())
            }
            map["AssetGroupList"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetGroupList") {
            var tmp : [DettachAssetGroupToInstanceRequest.AssetGroupList] = []
            for v in dict["AssetGroupList"] as! [Any] {
                var model = DettachAssetGroupToInstanceRequest.AssetGroupList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.assetGroupList = tmp
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DettachAssetGroupToInstanceShrinkRequest : Tea.TeaModel {
    public var assetGroupListShrink: String?

    public var instanceId: String?

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
        if self.assetGroupListShrink != nil {
            map["AssetGroupList"] = self.assetGroupListShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetGroupList") {
            self.assetGroupListShrink = dict["AssetGroupList"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DettachAssetGroupToInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DettachAssetGroupToInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DettachAssetGroupToInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DettachAssetGroupToInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSlsOpenStatusRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class GetSlsOpenStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var slsOpenStatus: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slsOpenStatus != nil {
            map["SlsOpenStatus"] = self.slsOpenStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlsOpenStatus") {
            self.slsOpenStatus = dict["SlsOpenStatus"] as! Bool
        }
    }
}

public class GetSlsOpenStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSlsOpenStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetSlsOpenStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOpenedAccessLogInstancesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class ListOpenedAccessLogInstancesResponseBody : Tea.TeaModel {
    public class SlsConfigStatus : Tea.TeaModel {
        public var enable: Bool?

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
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enable") {
                self.enable = dict["Enable"] as! Bool
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
        }
    }
    public var requestId: String?

    public var slsConfigStatus: [ListOpenedAccessLogInstancesResponseBody.SlsConfigStatus]?

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
        if self.slsConfigStatus != nil {
            var tmp : [Any] = []
            for k in self.slsConfigStatus! {
                tmp.append(k.toMap())
            }
            map["SlsConfigStatus"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlsConfigStatus") {
            var tmp : [ListOpenedAccessLogInstancesResponseBody.SlsConfigStatus] = []
            for v in dict["SlsConfigStatus"] as! [Any] {
                var model = ListOpenedAccessLogInstancesResponseBody.SlsConfigStatus()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.slsConfigStatus = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListOpenedAccessLogInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOpenedAccessLogInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListOpenedAccessLogInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPolicyRequest : Tea.TeaModel {
    public var name: String?

    public var pageNo: Int64?

    public var pageSize: Int64?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListPolicyResponseBody : Tea.TeaModel {
    public class PolicyList : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public class FingerPrintRuleList : Tea.TeaModel {
                public var dstPortEnd: Int32?

                public var dstPortStart: Int32?

                public var id: String?

                public var matchAction: String?

                public var maxPktLen: Int32?

                public var minPktLen: Int32?

                public var offset: Int32?

                public var payloadBytes: String?

                public var protocol_: String?

                public var rateValue: Int32?

                public var seqNo: Int32?

                public var srcPortEnd: Int32?

                public var srcPortStart: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dstPortEnd != nil {
                        map["DstPortEnd"] = self.dstPortEnd!
                    }
                    if self.dstPortStart != nil {
                        map["DstPortStart"] = self.dstPortStart!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.matchAction != nil {
                        map["MatchAction"] = self.matchAction!
                    }
                    if self.maxPktLen != nil {
                        map["MaxPktLen"] = self.maxPktLen!
                    }
                    if self.minPktLen != nil {
                        map["MinPktLen"] = self.minPktLen!
                    }
                    if self.offset != nil {
                        map["Offset"] = self.offset!
                    }
                    if self.payloadBytes != nil {
                        map["PayloadBytes"] = self.payloadBytes!
                    }
                    if self.protocol_ != nil {
                        map["Protocol"] = self.protocol_!
                    }
                    if self.rateValue != nil {
                        map["RateValue"] = self.rateValue!
                    }
                    if self.seqNo != nil {
                        map["SeqNo"] = self.seqNo!
                    }
                    if self.srcPortEnd != nil {
                        map["SrcPortEnd"] = self.srcPortEnd!
                    }
                    if self.srcPortStart != nil {
                        map["SrcPortStart"] = self.srcPortStart!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DstPortEnd") {
                        self.dstPortEnd = dict["DstPortEnd"] as! Int32
                    }
                    if dict.keys.contains("DstPortStart") {
                        self.dstPortStart = dict["DstPortStart"] as! Int32
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("MatchAction") {
                        self.matchAction = dict["MatchAction"] as! String
                    }
                    if dict.keys.contains("MaxPktLen") {
                        self.maxPktLen = dict["MaxPktLen"] as! Int32
                    }
                    if dict.keys.contains("MinPktLen") {
                        self.minPktLen = dict["MinPktLen"] as! Int32
                    }
                    if dict.keys.contains("Offset") {
                        self.offset = dict["Offset"] as! Int32
                    }
                    if dict.keys.contains("PayloadBytes") {
                        self.payloadBytes = dict["PayloadBytes"] as! String
                    }
                    if dict.keys.contains("Protocol") {
                        self.protocol_ = dict["Protocol"] as! String
                    }
                    if dict.keys.contains("RateValue") {
                        self.rateValue = dict["RateValue"] as! Int32
                    }
                    if dict.keys.contains("SeqNo") {
                        self.seqNo = dict["SeqNo"] as! Int32
                    }
                    if dict.keys.contains("SrcPortEnd") {
                        self.srcPortEnd = dict["SrcPortEnd"] as! Int32
                    }
                    if dict.keys.contains("SrcPortStart") {
                        self.srcPortStart = dict["SrcPortStart"] as! Int32
                    }
                }
            }
            public class L4RuleList : Tea.TeaModel {
                public class ConditionList : Tea.TeaModel {
                    public var arg: String?

                    public var depth: Int32?

                    public var position: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.arg != nil {
                            map["Arg"] = self.arg!
                        }
                        if self.depth != nil {
                            map["Depth"] = self.depth!
                        }
                        if self.position != nil {
                            map["Position"] = self.position!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Arg") {
                            self.arg = dict["Arg"] as! String
                        }
                        if dict.keys.contains("Depth") {
                            self.depth = dict["Depth"] as! Int32
                        }
                        if dict.keys.contains("Position") {
                            self.position = dict["Position"] as! Int32
                        }
                    }
                }
                public var action: String?

                public var conditionList: [ListPolicyResponseBody.PolicyList.Content.L4RuleList.ConditionList]?

                public var limited: Int32?

                public var match: String?

                public var method: String?

                public var name: String?

                public var priority: Int32?

                public override init() {
                    super.init()
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
                    if self.conditionList != nil {
                        var tmp : [Any] = []
                        for k in self.conditionList! {
                            tmp.append(k.toMap())
                        }
                        map["ConditionList"] = tmp
                    }
                    if self.limited != nil {
                        map["Limited"] = self.limited!
                    }
                    if self.match != nil {
                        map["Match"] = self.match!
                    }
                    if self.method != nil {
                        map["Method"] = self.method!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.priority != nil {
                        map["Priority"] = self.priority!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Action") {
                        self.action = dict["Action"] as! String
                    }
                    if dict.keys.contains("ConditionList") {
                        var tmp : [ListPolicyResponseBody.PolicyList.Content.L4RuleList.ConditionList] = []
                        for v in dict["ConditionList"] as! [Any] {
                            var model = ListPolicyResponseBody.PolicyList.Content.L4RuleList.ConditionList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.conditionList = tmp
                    }
                    if dict.keys.contains("Limited") {
                        self.limited = dict["Limited"] as! Int32
                    }
                    if dict.keys.contains("Match") {
                        self.match = dict["Match"] as! String
                    }
                    if dict.keys.contains("Method") {
                        self.method = dict["Method"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Priority") {
                        self.priority = dict["Priority"] as! Int32
                    }
                }
            }
            public class PortRuleList : Tea.TeaModel {
                public var dstPortEnd: Int32?

                public var dstPortStart: Int32?

                public var id: String?

                public var matchAction: String?

                public var protocol_: String?

                public var seqNo: Int32?

                public var srcPortEnd: Int32?

                public var srcPortStart: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dstPortEnd != nil {
                        map["DstPortEnd"] = self.dstPortEnd!
                    }
                    if self.dstPortStart != nil {
                        map["DstPortStart"] = self.dstPortStart!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.matchAction != nil {
                        map["MatchAction"] = self.matchAction!
                    }
                    if self.protocol_ != nil {
                        map["Protocol"] = self.protocol_!
                    }
                    if self.seqNo != nil {
                        map["SeqNo"] = self.seqNo!
                    }
                    if self.srcPortEnd != nil {
                        map["SrcPortEnd"] = self.srcPortEnd!
                    }
                    if self.srcPortStart != nil {
                        map["SrcPortStart"] = self.srcPortStart!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DstPortEnd") {
                        self.dstPortEnd = dict["DstPortEnd"] as! Int32
                    }
                    if dict.keys.contains("DstPortStart") {
                        self.dstPortStart = dict["DstPortStart"] as! Int32
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("MatchAction") {
                        self.matchAction = dict["MatchAction"] as! String
                    }
                    if dict.keys.contains("Protocol") {
                        self.protocol_ = dict["Protocol"] as! String
                    }
                    if dict.keys.contains("SeqNo") {
                        self.seqNo = dict["SeqNo"] as! Int32
                    }
                    if dict.keys.contains("SrcPortEnd") {
                        self.srcPortEnd = dict["SrcPortEnd"] as! Int32
                    }
                    if dict.keys.contains("SrcPortStart") {
                        self.srcPortStart = dict["SrcPortStart"] as! Int32
                    }
                }
            }
            public class SourceBlockList : Tea.TeaModel {
                public var blockExpireSeconds: Int32?

                public var everySeconds: Int32?

                public var exceedLimitTimes: Int32?

                public var type: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.blockExpireSeconds != nil {
                        map["BlockExpireSeconds"] = self.blockExpireSeconds!
                    }
                    if self.everySeconds != nil {
                        map["EverySeconds"] = self.everySeconds!
                    }
                    if self.exceedLimitTimes != nil {
                        map["ExceedLimitTimes"] = self.exceedLimitTimes!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BlockExpireSeconds") {
                        self.blockExpireSeconds = dict["BlockExpireSeconds"] as! Int32
                    }
                    if dict.keys.contains("EverySeconds") {
                        self.everySeconds = dict["EverySeconds"] as! Int32
                    }
                    if dict.keys.contains("ExceedLimitTimes") {
                        self.exceedLimitTimes = dict["ExceedLimitTimes"] as! Int32
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! Int32
                    }
                }
            }
            public class SourceLimit : Tea.TeaModel {
                public var bps: Int32?

                public var pps: Int32?

                public var synBps: Int32?

                public var synPps: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bps != nil {
                        map["Bps"] = self.bps!
                    }
                    if self.pps != nil {
                        map["Pps"] = self.pps!
                    }
                    if self.synBps != nil {
                        map["SynBps"] = self.synBps!
                    }
                    if self.synPps != nil {
                        map["SynPps"] = self.synPps!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Bps") {
                        self.bps = dict["Bps"] as! Int32
                    }
                    if dict.keys.contains("Pps") {
                        self.pps = dict["Pps"] as! Int32
                    }
                    if dict.keys.contains("SynBps") {
                        self.synBps = dict["SynBps"] as! Int32
                    }
                    if dict.keys.contains("SynPps") {
                        self.synPps = dict["SynPps"] as! Int32
                    }
                }
            }
            public var blackIpListExpireAt: Int64?

            public var enableDropIcmp: Bool?

            public var enableIntelligence: Bool?

            public var enableL4Defense: Bool?

            public var fingerPrintRuleList: [ListPolicyResponseBody.PolicyList.Content.FingerPrintRuleList]?

            public var intelligenceLevel: String?

            public var l4RuleList: [ListPolicyResponseBody.PolicyList.Content.L4RuleList]?

            public var portRuleList: [ListPolicyResponseBody.PolicyList.Content.PortRuleList]?

            public var reflectBlockUdpPortList: [Int32]?

            public var regionBlockCountryList: [Int32]?

            public var regionBlockProvinceList: [Int32]?

            public var sourceBlockList: [ListPolicyResponseBody.PolicyList.Content.SourceBlockList]?

            public var sourceLimit: ListPolicyResponseBody.PolicyList.Content.SourceLimit?

            public var whitenGfbrNets: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.sourceLimit?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blackIpListExpireAt != nil {
                    map["BlackIpListExpireAt"] = self.blackIpListExpireAt!
                }
                if self.enableDropIcmp != nil {
                    map["EnableDropIcmp"] = self.enableDropIcmp!
                }
                if self.enableIntelligence != nil {
                    map["EnableIntelligence"] = self.enableIntelligence!
                }
                if self.enableL4Defense != nil {
                    map["EnableL4Defense"] = self.enableL4Defense!
                }
                if self.fingerPrintRuleList != nil {
                    var tmp : [Any] = []
                    for k in self.fingerPrintRuleList! {
                        tmp.append(k.toMap())
                    }
                    map["FingerPrintRuleList"] = tmp
                }
                if self.intelligenceLevel != nil {
                    map["IntelligenceLevel"] = self.intelligenceLevel!
                }
                if self.l4RuleList != nil {
                    var tmp : [Any] = []
                    for k in self.l4RuleList! {
                        tmp.append(k.toMap())
                    }
                    map["L4RuleList"] = tmp
                }
                if self.portRuleList != nil {
                    var tmp : [Any] = []
                    for k in self.portRuleList! {
                        tmp.append(k.toMap())
                    }
                    map["PortRuleList"] = tmp
                }
                if self.reflectBlockUdpPortList != nil {
                    map["ReflectBlockUdpPortList"] = self.reflectBlockUdpPortList!
                }
                if self.regionBlockCountryList != nil {
                    map["RegionBlockCountryList"] = self.regionBlockCountryList!
                }
                if self.regionBlockProvinceList != nil {
                    map["RegionBlockProvinceList"] = self.regionBlockProvinceList!
                }
                if self.sourceBlockList != nil {
                    var tmp : [Any] = []
                    for k in self.sourceBlockList! {
                        tmp.append(k.toMap())
                    }
                    map["SourceBlockList"] = tmp
                }
                if self.sourceLimit != nil {
                    map["SourceLimit"] = self.sourceLimit?.toMap()
                }
                if self.whitenGfbrNets != nil {
                    map["WhitenGfbrNets"] = self.whitenGfbrNets!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlackIpListExpireAt") {
                    self.blackIpListExpireAt = dict["BlackIpListExpireAt"] as! Int64
                }
                if dict.keys.contains("EnableDropIcmp") {
                    self.enableDropIcmp = dict["EnableDropIcmp"] as! Bool
                }
                if dict.keys.contains("EnableIntelligence") {
                    self.enableIntelligence = dict["EnableIntelligence"] as! Bool
                }
                if dict.keys.contains("EnableL4Defense") {
                    self.enableL4Defense = dict["EnableL4Defense"] as! Bool
                }
                if dict.keys.contains("FingerPrintRuleList") {
                    var tmp : [ListPolicyResponseBody.PolicyList.Content.FingerPrintRuleList] = []
                    for v in dict["FingerPrintRuleList"] as! [Any] {
                        var model = ListPolicyResponseBody.PolicyList.Content.FingerPrintRuleList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.fingerPrintRuleList = tmp
                }
                if dict.keys.contains("IntelligenceLevel") {
                    self.intelligenceLevel = dict["IntelligenceLevel"] as! String
                }
                if dict.keys.contains("L4RuleList") {
                    var tmp : [ListPolicyResponseBody.PolicyList.Content.L4RuleList] = []
                    for v in dict["L4RuleList"] as! [Any] {
                        var model = ListPolicyResponseBody.PolicyList.Content.L4RuleList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.l4RuleList = tmp
                }
                if dict.keys.contains("PortRuleList") {
                    var tmp : [ListPolicyResponseBody.PolicyList.Content.PortRuleList] = []
                    for v in dict["PortRuleList"] as! [Any] {
                        var model = ListPolicyResponseBody.PolicyList.Content.PortRuleList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.portRuleList = tmp
                }
                if dict.keys.contains("ReflectBlockUdpPortList") {
                    self.reflectBlockUdpPortList = dict["ReflectBlockUdpPortList"] as! [Int32]
                }
                if dict.keys.contains("RegionBlockCountryList") {
                    self.regionBlockCountryList = dict["RegionBlockCountryList"] as! [Int32]
                }
                if dict.keys.contains("RegionBlockProvinceList") {
                    self.regionBlockProvinceList = dict["RegionBlockProvinceList"] as! [Int32]
                }
                if dict.keys.contains("SourceBlockList") {
                    var tmp : [ListPolicyResponseBody.PolicyList.Content.SourceBlockList] = []
                    for v in dict["SourceBlockList"] as! [Any] {
                        var model = ListPolicyResponseBody.PolicyList.Content.SourceBlockList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.sourceBlockList = tmp
                }
                if dict.keys.contains("SourceLimit") {
                    var model = ListPolicyResponseBody.PolicyList.Content.SourceLimit()
                    model.fromMap(dict["SourceLimit"] as! [String: Any])
                    self.sourceLimit = model
                }
                if dict.keys.contains("WhitenGfbrNets") {
                    self.whitenGfbrNets = dict["WhitenGfbrNets"] as! Bool
                }
            }
        }
        public var attachedCount: Int32?

        public var content: ListPolicyResponseBody.PolicyList.Content?

        public var id: String?

        public var name: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.content?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachedCount != nil {
                map["AttachedCount"] = self.attachedCount!
            }
            if self.content != nil {
                map["Content"] = self.content?.toMap()
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttachedCount") {
                self.attachedCount = dict["AttachedCount"] as! Int32
            }
            if dict.keys.contains("Content") {
                var model = ListPolicyResponseBody.PolicyList.Content()
                model.fromMap(dict["Content"] as! [String: Any])
                self.content = model
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var policyList: [ListPolicyResponseBody.PolicyList]?

    public var requestId: String?

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
        if self.policyList != nil {
            var tmp : [Any] = []
            for k in self.policyList! {
                tmp.append(k.toMap())
            }
            map["PolicyList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyList") {
            var tmp : [ListPolicyResponseBody.PolicyList] = []
            for v in dict["PolicyList"] as! [Any] {
                var model = ListPolicyResponseBody.PolicyList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policyList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPolicyAttachmentRequest : Tea.TeaModel {
    public class IpPortProtocolList : Tea.TeaModel {
        public var ip: String?

        public var port: Int32?

        public var protocol_: String?

        public override init() {
            super.init()
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
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
        }
    }
    public var ipPortProtocolList: [ListPolicyAttachmentRequest.IpPortProtocolList]?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var policyId: String?

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
        if self.ipPortProtocolList != nil {
            var tmp : [Any] = []
            for k in self.ipPortProtocolList! {
                tmp.append(k.toMap())
            }
            map["IpPortProtocolList"] = tmp
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpPortProtocolList") {
            var tmp : [ListPolicyAttachmentRequest.IpPortProtocolList] = []
            for v in dict["IpPortProtocolList"] as! [Any] {
                var model = ListPolicyAttachmentRequest.IpPortProtocolList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ipPortProtocolList = tmp
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
    }
}

public class ListPolicyAttachmentShrinkRequest : Tea.TeaModel {
    public var ipPortProtocolListShrink: String?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var policyId: String?

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
        if self.ipPortProtocolListShrink != nil {
            map["IpPortProtocolList"] = self.ipPortProtocolListShrink!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpPortProtocolList") {
            self.ipPortProtocolListShrink = dict["IpPortProtocolList"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
    }
}

public class ListPolicyAttachmentResponseBody : Tea.TeaModel {
    public class AttachmentList : Tea.TeaModel {
        public var ip: String?

        public var memberUid: String?

        public var policyId: String?

        public var policyName: String?

        public var policyType: String?

        public var port: Int32?

        public var protocol_: String?

        public var region: String?

        public override init() {
            super.init()
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
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
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
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("MemberUid") {
                self.memberUid = dict["MemberUid"] as! String
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("PolicyName") {
                self.policyName = dict["PolicyName"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
        }
    }
    public var attachmentList: [ListPolicyAttachmentResponseBody.AttachmentList]?

    public var requestId: String?

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
        if self.attachmentList != nil {
            var tmp : [Any] = []
            for k in self.attachmentList! {
                tmp.append(k.toMap())
            }
            map["AttachmentList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttachmentList") {
            var tmp : [ListPolicyAttachmentResponseBody.AttachmentList] = []
            for v in dict["AttachmentList"] as! [Any] {
                var model = ListPolicyAttachmentResponseBody.AttachmentList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.attachmentList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListPolicyAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicyAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPolicyAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagKeysRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListTagKeysResponseBody : Tea.TeaModel {
    public class TagKeys : Tea.TeaModel {
        public var tagCount: Int32?

        public var tagKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagCount != nil {
                map["TagCount"] = self.tagCount!
            }
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagCount") {
                self.tagCount = dict["TagCount"] as! Int32
            }
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tagKeys: [ListTagKeysResponseBody.TagKeys]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagKeys != nil {
            var tmp : [Any] = []
            for k in self.tagKeys! {
                tmp.append(k.toMap())
            }
            map["TagKeys"] = tmp
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagKeys") {
            var tmp : [ListTagKeysResponseBody.TagKeys] = []
            for v in dict["TagKeys"] as! [Any] {
                var model = ListTagKeysResponseBody.TagKeys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagKeys = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagKeysResponseBody()
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
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
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
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
            if dict.keys.contains("TagResource") {
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPolicyRequest : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class FingerPrintRuleList : Tea.TeaModel {
            public var dstPortEnd: Int32?

            public var dstPortStart: Int32?

            public var id: String?

            public var matchAction: String?

            public var maxPktLen: Int32?

            public var minPktLen: Int32?

            public var offset: Int32?

            public var payloadBytes: String?

            public var protocol_: String?

            public var rateValue: Int32?

            public var seqNo: Int32?

            public var srcPortEnd: Int32?

            public var srcPortStart: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dstPortEnd != nil {
                    map["DstPortEnd"] = self.dstPortEnd!
                }
                if self.dstPortStart != nil {
                    map["DstPortStart"] = self.dstPortStart!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.matchAction != nil {
                    map["MatchAction"] = self.matchAction!
                }
                if self.maxPktLen != nil {
                    map["MaxPktLen"] = self.maxPktLen!
                }
                if self.minPktLen != nil {
                    map["MinPktLen"] = self.minPktLen!
                }
                if self.offset != nil {
                    map["Offset"] = self.offset!
                }
                if self.payloadBytes != nil {
                    map["PayloadBytes"] = self.payloadBytes!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.rateValue != nil {
                    map["RateValue"] = self.rateValue!
                }
                if self.seqNo != nil {
                    map["SeqNo"] = self.seqNo!
                }
                if self.srcPortEnd != nil {
                    map["SrcPortEnd"] = self.srcPortEnd!
                }
                if self.srcPortStart != nil {
                    map["SrcPortStart"] = self.srcPortStart!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DstPortEnd") {
                    self.dstPortEnd = dict["DstPortEnd"] as! Int32
                }
                if dict.keys.contains("DstPortStart") {
                    self.dstPortStart = dict["DstPortStart"] as! Int32
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("MatchAction") {
                    self.matchAction = dict["MatchAction"] as! String
                }
                if dict.keys.contains("MaxPktLen") {
                    self.maxPktLen = dict["MaxPktLen"] as! Int32
                }
                if dict.keys.contains("MinPktLen") {
                    self.minPktLen = dict["MinPktLen"] as! Int32
                }
                if dict.keys.contains("Offset") {
                    self.offset = dict["Offset"] as! Int32
                }
                if dict.keys.contains("PayloadBytes") {
                    self.payloadBytes = dict["PayloadBytes"] as! String
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("RateValue") {
                    self.rateValue = dict["RateValue"] as! Int32
                }
                if dict.keys.contains("SeqNo") {
                    self.seqNo = dict["SeqNo"] as! Int32
                }
                if dict.keys.contains("SrcPortEnd") {
                    self.srcPortEnd = dict["SrcPortEnd"] as! Int32
                }
                if dict.keys.contains("SrcPortStart") {
                    self.srcPortStart = dict["SrcPortStart"] as! Int32
                }
            }
        }
        public class L4RuleList : Tea.TeaModel {
            public class ConditionList : Tea.TeaModel {
                public var arg: String?

                public var depth: Int32?

                public var position: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.arg != nil {
                        map["Arg"] = self.arg!
                    }
                    if self.depth != nil {
                        map["Depth"] = self.depth!
                    }
                    if self.position != nil {
                        map["Position"] = self.position!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Arg") {
                        self.arg = dict["Arg"] as! String
                    }
                    if dict.keys.contains("Depth") {
                        self.depth = dict["Depth"] as! Int32
                    }
                    if dict.keys.contains("Position") {
                        self.position = dict["Position"] as! Int32
                    }
                }
            }
            public var action: String?

            public var conditionList: [ModifyPolicyRequest.Content.L4RuleList.ConditionList]?

            public var limited: Int32?

            public var match: String?

            public var method: String?

            public var name: String?

            public var priority: Int32?

            public override init() {
                super.init()
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
                if self.conditionList != nil {
                    var tmp : [Any] = []
                    for k in self.conditionList! {
                        tmp.append(k.toMap())
                    }
                    map["ConditionList"] = tmp
                }
                if self.limited != nil {
                    map["Limited"] = self.limited!
                }
                if self.match != nil {
                    map["Match"] = self.match!
                }
                if self.method != nil {
                    map["Method"] = self.method!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("ConditionList") {
                    var tmp : [ModifyPolicyRequest.Content.L4RuleList.ConditionList] = []
                    for v in dict["ConditionList"] as! [Any] {
                        var model = ModifyPolicyRequest.Content.L4RuleList.ConditionList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.conditionList = tmp
                }
                if dict.keys.contains("Limited") {
                    self.limited = dict["Limited"] as! Int32
                }
                if dict.keys.contains("Match") {
                    self.match = dict["Match"] as! String
                }
                if dict.keys.contains("Method") {
                    self.method = dict["Method"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! Int32
                }
            }
        }
        public class PortRuleList : Tea.TeaModel {
            public var dstPortEnd: Int32?

            public var dstPortStart: Int32?

            public var id: String?

            public var matchAction: String?

            public var protocol_: String?

            public var seqNo: Int32?

            public var srcPortEnd: Int32?

            public var srcPortStart: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dstPortEnd != nil {
                    map["DstPortEnd"] = self.dstPortEnd!
                }
                if self.dstPortStart != nil {
                    map["DstPortStart"] = self.dstPortStart!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.matchAction != nil {
                    map["MatchAction"] = self.matchAction!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.seqNo != nil {
                    map["SeqNo"] = self.seqNo!
                }
                if self.srcPortEnd != nil {
                    map["SrcPortEnd"] = self.srcPortEnd!
                }
                if self.srcPortStart != nil {
                    map["SrcPortStart"] = self.srcPortStart!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DstPortEnd") {
                    self.dstPortEnd = dict["DstPortEnd"] as! Int32
                }
                if dict.keys.contains("DstPortStart") {
                    self.dstPortStart = dict["DstPortStart"] as! Int32
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("MatchAction") {
                    self.matchAction = dict["MatchAction"] as! String
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("SeqNo") {
                    self.seqNo = dict["SeqNo"] as! Int32
                }
                if dict.keys.contains("SrcPortEnd") {
                    self.srcPortEnd = dict["SrcPortEnd"] as! Int32
                }
                if dict.keys.contains("SrcPortStart") {
                    self.srcPortStart = dict["SrcPortStart"] as! Int32
                }
            }
        }
        public class SourceBlockList : Tea.TeaModel {
            public var blockExpireSeconds: Int32?

            public var everySeconds: Int32?

            public var exceedLimitTimes: Int32?

            public var type: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockExpireSeconds != nil {
                    map["BlockExpireSeconds"] = self.blockExpireSeconds!
                }
                if self.everySeconds != nil {
                    map["EverySeconds"] = self.everySeconds!
                }
                if self.exceedLimitTimes != nil {
                    map["ExceedLimitTimes"] = self.exceedLimitTimes!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlockExpireSeconds") {
                    self.blockExpireSeconds = dict["BlockExpireSeconds"] as! Int32
                }
                if dict.keys.contains("EverySeconds") {
                    self.everySeconds = dict["EverySeconds"] as! Int32
                }
                if dict.keys.contains("ExceedLimitTimes") {
                    self.exceedLimitTimes = dict["ExceedLimitTimes"] as! Int32
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! Int32
                }
            }
        }
        public class SourceLimit : Tea.TeaModel {
            public var bps: Int32?

            public var pps: Int32?

            public var synBps: Int32?

            public var synPps: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bps != nil {
                    map["Bps"] = self.bps!
                }
                if self.pps != nil {
                    map["Pps"] = self.pps!
                }
                if self.synBps != nil {
                    map["SynBps"] = self.synBps!
                }
                if self.synPps != nil {
                    map["SynPps"] = self.synPps!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bps") {
                    self.bps = dict["Bps"] as! Int32
                }
                if dict.keys.contains("Pps") {
                    self.pps = dict["Pps"] as! Int32
                }
                if dict.keys.contains("SynBps") {
                    self.synBps = dict["SynBps"] as! Int32
                }
                if dict.keys.contains("SynPps") {
                    self.synPps = dict["SynPps"] as! Int32
                }
            }
        }
        public var blackIpList: [String]?

        public var blackIpListExpireAt: Int64?

        public var enableDropIcmp: Bool?

        public var enableIntelligence: Bool?

        public var enableL4Defense: Bool?

        public var fingerPrintRuleList: [ModifyPolicyRequest.Content.FingerPrintRuleList]?

        public var intelligenceLevel: String?

        public var l4RuleList: [ModifyPolicyRequest.Content.L4RuleList]?

        public var portRuleList: [ModifyPolicyRequest.Content.PortRuleList]?

        public var reflectBlockUdpPortList: [Int32]?

        public var regionBlockCountryList: [Int32]?

        public var regionBlockProvinceList: [Int32]?

        public var sourceBlockList: [ModifyPolicyRequest.Content.SourceBlockList]?

        public var sourceLimit: ModifyPolicyRequest.Content.SourceLimit?

        public var whiteIpList: [String]?

        public var whitenGfbrNets: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sourceLimit?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blackIpList != nil {
                map["BlackIpList"] = self.blackIpList!
            }
            if self.blackIpListExpireAt != nil {
                map["BlackIpListExpireAt"] = self.blackIpListExpireAt!
            }
            if self.enableDropIcmp != nil {
                map["EnableDropIcmp"] = self.enableDropIcmp!
            }
            if self.enableIntelligence != nil {
                map["EnableIntelligence"] = self.enableIntelligence!
            }
            if self.enableL4Defense != nil {
                map["EnableL4Defense"] = self.enableL4Defense!
            }
            if self.fingerPrintRuleList != nil {
                var tmp : [Any] = []
                for k in self.fingerPrintRuleList! {
                    tmp.append(k.toMap())
                }
                map["FingerPrintRuleList"] = tmp
            }
            if self.intelligenceLevel != nil {
                map["IntelligenceLevel"] = self.intelligenceLevel!
            }
            if self.l4RuleList != nil {
                var tmp : [Any] = []
                for k in self.l4RuleList! {
                    tmp.append(k.toMap())
                }
                map["L4RuleList"] = tmp
            }
            if self.portRuleList != nil {
                var tmp : [Any] = []
                for k in self.portRuleList! {
                    tmp.append(k.toMap())
                }
                map["PortRuleList"] = tmp
            }
            if self.reflectBlockUdpPortList != nil {
                map["ReflectBlockUdpPortList"] = self.reflectBlockUdpPortList!
            }
            if self.regionBlockCountryList != nil {
                map["RegionBlockCountryList"] = self.regionBlockCountryList!
            }
            if self.regionBlockProvinceList != nil {
                map["RegionBlockProvinceList"] = self.regionBlockProvinceList!
            }
            if self.sourceBlockList != nil {
                var tmp : [Any] = []
                for k in self.sourceBlockList! {
                    tmp.append(k.toMap())
                }
                map["SourceBlockList"] = tmp
            }
            if self.sourceLimit != nil {
                map["SourceLimit"] = self.sourceLimit?.toMap()
            }
            if self.whiteIpList != nil {
                map["WhiteIpList"] = self.whiteIpList!
            }
            if self.whitenGfbrNets != nil {
                map["WhitenGfbrNets"] = self.whitenGfbrNets!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlackIpList") {
                self.blackIpList = dict["BlackIpList"] as! [String]
            }
            if dict.keys.contains("BlackIpListExpireAt") {
                self.blackIpListExpireAt = dict["BlackIpListExpireAt"] as! Int64
            }
            if dict.keys.contains("EnableDropIcmp") {
                self.enableDropIcmp = dict["EnableDropIcmp"] as! Bool
            }
            if dict.keys.contains("EnableIntelligence") {
                self.enableIntelligence = dict["EnableIntelligence"] as! Bool
            }
            if dict.keys.contains("EnableL4Defense") {
                self.enableL4Defense = dict["EnableL4Defense"] as! Bool
            }
            if dict.keys.contains("FingerPrintRuleList") {
                var tmp : [ModifyPolicyRequest.Content.FingerPrintRuleList] = []
                for v in dict["FingerPrintRuleList"] as! [Any] {
                    var model = ModifyPolicyRequest.Content.FingerPrintRuleList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.fingerPrintRuleList = tmp
            }
            if dict.keys.contains("IntelligenceLevel") {
                self.intelligenceLevel = dict["IntelligenceLevel"] as! String
            }
            if dict.keys.contains("L4RuleList") {
                var tmp : [ModifyPolicyRequest.Content.L4RuleList] = []
                for v in dict["L4RuleList"] as! [Any] {
                    var model = ModifyPolicyRequest.Content.L4RuleList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.l4RuleList = tmp
            }
            if dict.keys.contains("PortRuleList") {
                var tmp : [ModifyPolicyRequest.Content.PortRuleList] = []
                for v in dict["PortRuleList"] as! [Any] {
                    var model = ModifyPolicyRequest.Content.PortRuleList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.portRuleList = tmp
            }
            if dict.keys.contains("ReflectBlockUdpPortList") {
                self.reflectBlockUdpPortList = dict["ReflectBlockUdpPortList"] as! [Int32]
            }
            if dict.keys.contains("RegionBlockCountryList") {
                self.regionBlockCountryList = dict["RegionBlockCountryList"] as! [Int32]
            }
            if dict.keys.contains("RegionBlockProvinceList") {
                self.regionBlockProvinceList = dict["RegionBlockProvinceList"] as! [Int32]
            }
            if dict.keys.contains("SourceBlockList") {
                var tmp : [ModifyPolicyRequest.Content.SourceBlockList] = []
                for v in dict["SourceBlockList"] as! [Any] {
                    var model = ModifyPolicyRequest.Content.SourceBlockList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sourceBlockList = tmp
            }
            if dict.keys.contains("SourceLimit") {
                var model = ModifyPolicyRequest.Content.SourceLimit()
                model.fromMap(dict["SourceLimit"] as! [String: Any])
                self.sourceLimit = model
            }
            if dict.keys.contains("WhiteIpList") {
                self.whiteIpList = dict["WhiteIpList"] as! [String]
            }
            if dict.keys.contains("WhitenGfbrNets") {
                self.whitenGfbrNets = dict["WhitenGfbrNets"] as! Bool
            }
        }
    }
    public var actionType: Int32?

    public var content: ModifyPolicyRequest.Content?

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
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionType") {
            self.actionType = dict["ActionType"] as! Int32
        }
        if dict.keys.contains("Content") {
            var model = ModifyPolicyRequest.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class ModifyPolicyShrinkRequest : Tea.TeaModel {
    public var actionType: Int32?

    public var contentShrink: String?

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
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.contentShrink != nil {
            map["Content"] = self.contentShrink!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionType") {
            self.actionType = dict["ActionType"] as! Int32
        }
        if dict.keys.contains("Content") {
            self.contentShrink = dict["Content"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class ModifyPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPolicyContentRequest : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class FingerPrintRuleList : Tea.TeaModel {
            public var dstPortEnd: Int32?

            public var dstPortStart: Int32?

            public var id: String?

            public var matchAction: String?

            public var maxPktLen: Int32?

            public var minPktLen: Int32?

            public var offset: Int32?

            public var payloadBytes: String?

            public var protocol_: String?

            public var rateValue: Int32?

            public var seqNo: Int32?

            public var srcPortEnd: Int32?

            public var srcPortStart: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dstPortEnd != nil {
                    map["DstPortEnd"] = self.dstPortEnd!
                }
                if self.dstPortStart != nil {
                    map["DstPortStart"] = self.dstPortStart!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.matchAction != nil {
                    map["MatchAction"] = self.matchAction!
                }
                if self.maxPktLen != nil {
                    map["MaxPktLen"] = self.maxPktLen!
                }
                if self.minPktLen != nil {
                    map["MinPktLen"] = self.minPktLen!
                }
                if self.offset != nil {
                    map["Offset"] = self.offset!
                }
                if self.payloadBytes != nil {
                    map["PayloadBytes"] = self.payloadBytes!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.rateValue != nil {
                    map["RateValue"] = self.rateValue!
                }
                if self.seqNo != nil {
                    map["SeqNo"] = self.seqNo!
                }
                if self.srcPortEnd != nil {
                    map["SrcPortEnd"] = self.srcPortEnd!
                }
                if self.srcPortStart != nil {
                    map["SrcPortStart"] = self.srcPortStart!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DstPortEnd") {
                    self.dstPortEnd = dict["DstPortEnd"] as! Int32
                }
                if dict.keys.contains("DstPortStart") {
                    self.dstPortStart = dict["DstPortStart"] as! Int32
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("MatchAction") {
                    self.matchAction = dict["MatchAction"] as! String
                }
                if dict.keys.contains("MaxPktLen") {
                    self.maxPktLen = dict["MaxPktLen"] as! Int32
                }
                if dict.keys.contains("MinPktLen") {
                    self.minPktLen = dict["MinPktLen"] as! Int32
                }
                if dict.keys.contains("Offset") {
                    self.offset = dict["Offset"] as! Int32
                }
                if dict.keys.contains("PayloadBytes") {
                    self.payloadBytes = dict["PayloadBytes"] as! String
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("RateValue") {
                    self.rateValue = dict["RateValue"] as! Int32
                }
                if dict.keys.contains("SeqNo") {
                    self.seqNo = dict["SeqNo"] as! Int32
                }
                if dict.keys.contains("SrcPortEnd") {
                    self.srcPortEnd = dict["SrcPortEnd"] as! Int32
                }
                if dict.keys.contains("SrcPortStart") {
                    self.srcPortStart = dict["SrcPortStart"] as! Int32
                }
            }
        }
        public class L4RuleList : Tea.TeaModel {
            public class ConditionList : Tea.TeaModel {
                public var arg: String?

                public var depth: Int32?

                public var position: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.arg != nil {
                        map["Arg"] = self.arg!
                    }
                    if self.depth != nil {
                        map["Depth"] = self.depth!
                    }
                    if self.position != nil {
                        map["Position"] = self.position!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Arg") {
                        self.arg = dict["Arg"] as! String
                    }
                    if dict.keys.contains("Depth") {
                        self.depth = dict["Depth"] as! Int32
                    }
                    if dict.keys.contains("Position") {
                        self.position = dict["Position"] as! Int32
                    }
                }
            }
            public var action: String?

            public var conditionList: [ModifyPolicyContentRequest.Content.L4RuleList.ConditionList]?

            public var limited: Int32?

            public var match: String?

            public var method: String?

            public var name: String?

            public var priority: Int32?

            public override init() {
                super.init()
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
                if self.conditionList != nil {
                    var tmp : [Any] = []
                    for k in self.conditionList! {
                        tmp.append(k.toMap())
                    }
                    map["ConditionList"] = tmp
                }
                if self.limited != nil {
                    map["Limited"] = self.limited!
                }
                if self.match != nil {
                    map["Match"] = self.match!
                }
                if self.method != nil {
                    map["Method"] = self.method!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("ConditionList") {
                    var tmp : [ModifyPolicyContentRequest.Content.L4RuleList.ConditionList] = []
                    for v in dict["ConditionList"] as! [Any] {
                        var model = ModifyPolicyContentRequest.Content.L4RuleList.ConditionList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.conditionList = tmp
                }
                if dict.keys.contains("Limited") {
                    self.limited = dict["Limited"] as! Int32
                }
                if dict.keys.contains("Match") {
                    self.match = dict["Match"] as! String
                }
                if dict.keys.contains("Method") {
                    self.method = dict["Method"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! Int32
                }
            }
        }
        public class PortRuleList : Tea.TeaModel {
            public var dstPortEnd: Int32?

            public var dstPortStart: Int32?

            public var id: String?

            public var matchAction: String?

            public var protocol_: String?

            public var seqNo: Int32?

            public var srcPortEnd: Int32?

            public var srcPortStart: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dstPortEnd != nil {
                    map["DstPortEnd"] = self.dstPortEnd!
                }
                if self.dstPortStart != nil {
                    map["DstPortStart"] = self.dstPortStart!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.matchAction != nil {
                    map["MatchAction"] = self.matchAction!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.seqNo != nil {
                    map["SeqNo"] = self.seqNo!
                }
                if self.srcPortEnd != nil {
                    map["SrcPortEnd"] = self.srcPortEnd!
                }
                if self.srcPortStart != nil {
                    map["SrcPortStart"] = self.srcPortStart!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DstPortEnd") {
                    self.dstPortEnd = dict["DstPortEnd"] as! Int32
                }
                if dict.keys.contains("DstPortStart") {
                    self.dstPortStart = dict["DstPortStart"] as! Int32
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("MatchAction") {
                    self.matchAction = dict["MatchAction"] as! String
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("SeqNo") {
                    self.seqNo = dict["SeqNo"] as! Int32
                }
                if dict.keys.contains("SrcPortEnd") {
                    self.srcPortEnd = dict["SrcPortEnd"] as! Int32
                }
                if dict.keys.contains("SrcPortStart") {
                    self.srcPortStart = dict["SrcPortStart"] as! Int32
                }
            }
        }
        public class SourceBlockList : Tea.TeaModel {
            public var blockExpireSeconds: Int32?

            public var everySeconds: Int32?

            public var exceedLimitTimes: Int32?

            public var type: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockExpireSeconds != nil {
                    map["BlockExpireSeconds"] = self.blockExpireSeconds!
                }
                if self.everySeconds != nil {
                    map["EverySeconds"] = self.everySeconds!
                }
                if self.exceedLimitTimes != nil {
                    map["ExceedLimitTimes"] = self.exceedLimitTimes!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlockExpireSeconds") {
                    self.blockExpireSeconds = dict["BlockExpireSeconds"] as! Int32
                }
                if dict.keys.contains("EverySeconds") {
                    self.everySeconds = dict["EverySeconds"] as! Int32
                }
                if dict.keys.contains("ExceedLimitTimes") {
                    self.exceedLimitTimes = dict["ExceedLimitTimes"] as! Int32
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! Int32
                }
            }
        }
        public class SourceLimit : Tea.TeaModel {
            public var bps: Int32?

            public var pps: Int32?

            public var synBps: Int32?

            public var synPps: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bps != nil {
                    map["Bps"] = self.bps!
                }
                if self.pps != nil {
                    map["Pps"] = self.pps!
                }
                if self.synBps != nil {
                    map["SynBps"] = self.synBps!
                }
                if self.synPps != nil {
                    map["SynPps"] = self.synPps!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bps") {
                    self.bps = dict["Bps"] as! Int32
                }
                if dict.keys.contains("Pps") {
                    self.pps = dict["Pps"] as! Int32
                }
                if dict.keys.contains("SynBps") {
                    self.synBps = dict["SynBps"] as! Int32
                }
                if dict.keys.contains("SynPps") {
                    self.synPps = dict["SynPps"] as! Int32
                }
            }
        }
        public var blackIpListExpireAt: Int64?

        public var enableDropIcmp: Bool?

        public var enableIntelligence: Bool?

        public var enableL4Defense: Bool?

        public var fingerPrintRuleList: [ModifyPolicyContentRequest.Content.FingerPrintRuleList]?

        public var intelligenceLevel: String?

        public var l4RuleList: [ModifyPolicyContentRequest.Content.L4RuleList]?

        public var portRuleList: [ModifyPolicyContentRequest.Content.PortRuleList]?

        public var reflectBlockUdpPortList: [Int32]?

        public var regionBlockCountryList: [Int32]?

        public var regionBlockProvinceList: [Int32]?

        public var sourceBlockList: [ModifyPolicyContentRequest.Content.SourceBlockList]?

        public var sourceLimit: ModifyPolicyContentRequest.Content.SourceLimit?

        public var whitenGfbrNets: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sourceLimit?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blackIpListExpireAt != nil {
                map["BlackIpListExpireAt"] = self.blackIpListExpireAt!
            }
            if self.enableDropIcmp != nil {
                map["EnableDropIcmp"] = self.enableDropIcmp!
            }
            if self.enableIntelligence != nil {
                map["EnableIntelligence"] = self.enableIntelligence!
            }
            if self.enableL4Defense != nil {
                map["EnableL4Defense"] = self.enableL4Defense!
            }
            if self.fingerPrintRuleList != nil {
                var tmp : [Any] = []
                for k in self.fingerPrintRuleList! {
                    tmp.append(k.toMap())
                }
                map["FingerPrintRuleList"] = tmp
            }
            if self.intelligenceLevel != nil {
                map["IntelligenceLevel"] = self.intelligenceLevel!
            }
            if self.l4RuleList != nil {
                var tmp : [Any] = []
                for k in self.l4RuleList! {
                    tmp.append(k.toMap())
                }
                map["L4RuleList"] = tmp
            }
            if self.portRuleList != nil {
                var tmp : [Any] = []
                for k in self.portRuleList! {
                    tmp.append(k.toMap())
                }
                map["PortRuleList"] = tmp
            }
            if self.reflectBlockUdpPortList != nil {
                map["ReflectBlockUdpPortList"] = self.reflectBlockUdpPortList!
            }
            if self.regionBlockCountryList != nil {
                map["RegionBlockCountryList"] = self.regionBlockCountryList!
            }
            if self.regionBlockProvinceList != nil {
                map["RegionBlockProvinceList"] = self.regionBlockProvinceList!
            }
            if self.sourceBlockList != nil {
                var tmp : [Any] = []
                for k in self.sourceBlockList! {
                    tmp.append(k.toMap())
                }
                map["SourceBlockList"] = tmp
            }
            if self.sourceLimit != nil {
                map["SourceLimit"] = self.sourceLimit?.toMap()
            }
            if self.whitenGfbrNets != nil {
                map["WhitenGfbrNets"] = self.whitenGfbrNets!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlackIpListExpireAt") {
                self.blackIpListExpireAt = dict["BlackIpListExpireAt"] as! Int64
            }
            if dict.keys.contains("EnableDropIcmp") {
                self.enableDropIcmp = dict["EnableDropIcmp"] as! Bool
            }
            if dict.keys.contains("EnableIntelligence") {
                self.enableIntelligence = dict["EnableIntelligence"] as! Bool
            }
            if dict.keys.contains("EnableL4Defense") {
                self.enableL4Defense = dict["EnableL4Defense"] as! Bool
            }
            if dict.keys.contains("FingerPrintRuleList") {
                var tmp : [ModifyPolicyContentRequest.Content.FingerPrintRuleList] = []
                for v in dict["FingerPrintRuleList"] as! [Any] {
                    var model = ModifyPolicyContentRequest.Content.FingerPrintRuleList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.fingerPrintRuleList = tmp
            }
            if dict.keys.contains("IntelligenceLevel") {
                self.intelligenceLevel = dict["IntelligenceLevel"] as! String
            }
            if dict.keys.contains("L4RuleList") {
                var tmp : [ModifyPolicyContentRequest.Content.L4RuleList] = []
                for v in dict["L4RuleList"] as! [Any] {
                    var model = ModifyPolicyContentRequest.Content.L4RuleList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.l4RuleList = tmp
            }
            if dict.keys.contains("PortRuleList") {
                var tmp : [ModifyPolicyContentRequest.Content.PortRuleList] = []
                for v in dict["PortRuleList"] as! [Any] {
                    var model = ModifyPolicyContentRequest.Content.PortRuleList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.portRuleList = tmp
            }
            if dict.keys.contains("ReflectBlockUdpPortList") {
                self.reflectBlockUdpPortList = dict["ReflectBlockUdpPortList"] as! [Int32]
            }
            if dict.keys.contains("RegionBlockCountryList") {
                self.regionBlockCountryList = dict["RegionBlockCountryList"] as! [Int32]
            }
            if dict.keys.contains("RegionBlockProvinceList") {
                self.regionBlockProvinceList = dict["RegionBlockProvinceList"] as! [Int32]
            }
            if dict.keys.contains("SourceBlockList") {
                var tmp : [ModifyPolicyContentRequest.Content.SourceBlockList] = []
                for v in dict["SourceBlockList"] as! [Any] {
                    var model = ModifyPolicyContentRequest.Content.SourceBlockList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sourceBlockList = tmp
            }
            if dict.keys.contains("SourceLimit") {
                var model = ModifyPolicyContentRequest.Content.SourceLimit()
                model.fromMap(dict["SourceLimit"] as! [String: Any])
                self.sourceLimit = model
            }
            if dict.keys.contains("WhitenGfbrNets") {
                self.whitenGfbrNets = dict["WhitenGfbrNets"] as! Bool
            }
        }
    }
    public var content: ModifyPolicyContentRequest.Content?

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
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            var model = ModifyPolicyContentRequest.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class ModifyPolicyContentShrinkRequest : Tea.TeaModel {
    public var contentShrink: String?

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
        if self.contentShrink != nil {
            map["Content"] = self.contentShrink!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.contentShrink = dict["Content"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class ModifyPolicyContentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyPolicyContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPolicyContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyPolicyContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyRemarkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var remark: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class ModifyRemarkResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyRemarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyRemarkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyRemarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySchedruleOnDemandRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class QuerySchedruleOnDemandResponseBody : Tea.TeaModel {
    public class RuleConfig : Tea.TeaModel {
        public var ruleAction: String?

        public var ruleConditionCnt: String?

        public var ruleConditionKpps: String?

        public var ruleConditionMbps: String?

        public var ruleName: String?

        public var ruleSwitch: String?

        public var ruleUndoBeginTime: String?

        public var ruleUndoEndTime: String?

        public var ruleUndoMode: String?

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
            if self.ruleAction != nil {
                map["RuleAction"] = self.ruleAction!
            }
            if self.ruleConditionCnt != nil {
                map["RuleConditionCnt"] = self.ruleConditionCnt!
            }
            if self.ruleConditionKpps != nil {
                map["RuleConditionKpps"] = self.ruleConditionKpps!
            }
            if self.ruleConditionMbps != nil {
                map["RuleConditionMbps"] = self.ruleConditionMbps!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleSwitch != nil {
                map["RuleSwitch"] = self.ruleSwitch!
            }
            if self.ruleUndoBeginTime != nil {
                map["RuleUndoBeginTime"] = self.ruleUndoBeginTime!
            }
            if self.ruleUndoEndTime != nil {
                map["RuleUndoEndTime"] = self.ruleUndoEndTime!
            }
            if self.ruleUndoMode != nil {
                map["RuleUndoMode"] = self.ruleUndoMode!
            }
            if self.timeZone != nil {
                map["TimeZone"] = self.timeZone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RuleAction") {
                self.ruleAction = dict["RuleAction"] as! String
            }
            if dict.keys.contains("RuleConditionCnt") {
                self.ruleConditionCnt = dict["RuleConditionCnt"] as! String
            }
            if dict.keys.contains("RuleConditionKpps") {
                self.ruleConditionKpps = dict["RuleConditionKpps"] as! String
            }
            if dict.keys.contains("RuleConditionMbps") {
                self.ruleConditionMbps = dict["RuleConditionMbps"] as! String
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("RuleSwitch") {
                self.ruleSwitch = dict["RuleSwitch"] as! String
            }
            if dict.keys.contains("RuleUndoBeginTime") {
                self.ruleUndoBeginTime = dict["RuleUndoBeginTime"] as! String
            }
            if dict.keys.contains("RuleUndoEndTime") {
                self.ruleUndoEndTime = dict["RuleUndoEndTime"] as! String
            }
            if dict.keys.contains("RuleUndoMode") {
                self.ruleUndoMode = dict["RuleUndoMode"] as! String
            }
            if dict.keys.contains("TimeZone") {
                self.timeZone = dict["TimeZone"] as! String
            }
        }
    }
    public class RuleStatus : Tea.TeaModel {
        public var net: String?

        public var ruleSchedStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.net != nil {
                map["Net"] = self.net!
            }
            if self.ruleSchedStatus != nil {
                map["RuleSchedStatus"] = self.ruleSchedStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Net") {
                self.net = dict["Net"] as! String
            }
            if dict.keys.contains("RuleSchedStatus") {
                self.ruleSchedStatus = dict["RuleSchedStatus"] as! String
            }
        }
    }
    public var instanceId: String?

    public var requestId: String?

    public var ruleConfig: [QuerySchedruleOnDemandResponseBody.RuleConfig]?

    public var ruleStatus: [QuerySchedruleOnDemandResponseBody.RuleStatus]?

    public var userId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleConfig != nil {
            var tmp : [Any] = []
            for k in self.ruleConfig! {
                tmp.append(k.toMap())
            }
            map["RuleConfig"] = tmp
        }
        if self.ruleStatus != nil {
            var tmp : [Any] = []
            for k in self.ruleStatus! {
                tmp.append(k.toMap())
            }
            map["RuleStatus"] = tmp
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleConfig") {
            var tmp : [QuerySchedruleOnDemandResponseBody.RuleConfig] = []
            for v in dict["RuleConfig"] as! [Any] {
                var model = QuerySchedruleOnDemandResponseBody.RuleConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleConfig = tmp
        }
        if dict.keys.contains("RuleStatus") {
            var tmp : [QuerySchedruleOnDemandResponseBody.RuleStatus] = []
            for v in dict["RuleStatus"] as! [Any] {
                var model = QuerySchedruleOnDemandResponseBody.RuleStatus()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleStatus = tmp
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class QuerySchedruleOnDemandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySchedruleOnDemandResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QuerySchedruleOnDemandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseDdosOriginInstanceRequest : Tea.TeaModel {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class ReleaseDdosOriginInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ReleaseDdosOriginInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseDdosOriginInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ReleaseDdosOriginInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetInstanceModeOnDemandRequest : Tea.TeaModel {
    public var instanceIdList: [String]?

    public var mode: String?

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
        if self.instanceIdList != nil {
            map["InstanceIdList"] = self.instanceIdList!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIdList") {
            self.instanceIdList = dict["InstanceIdList"] as! [String]
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetInstanceModeOnDemandResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetInstanceModeOnDemandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetInstanceModeOnDemandResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetInstanceModeOnDemandResponseBody()
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
