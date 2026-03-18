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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IpList"] as? String {
            self.ipList = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddIpResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Uid"] as? String {
                self.uid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberList"] as? [Any?] {
            var tmp : [AddRdMemberListRequest.MemberList] = []
            for v in value {
                if v != nil {
                    var model = AddRdMemberListRequest.MemberList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberList"] as? String {
            self.memberListShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddRdMemberListResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MemberUid"] as? String {
                self.memberUid = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetGroupList"] as? [Any?] {
            var tmp : [AttachAssetGroupToInstanceRequest.AssetGroupList] = []
            for v in value {
                if v != nil {
                    var model = AttachAssetGroupToInstanceRequest.AssetGroupList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.assetGroupList = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetGroupList"] as? String {
            self.assetGroupListShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachAssetGroupToInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AttachToPolicyRequest : Tea.TeaModel {
    public class IpPortProtocolList : Tea.TeaModel {
        public var ip: String?

        public var port: Int32?

        public var portRange: String?

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
            if self.portRange != nil {
                map["PortRange"] = self.portRange!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["PortRange"] as? String {
                self.portRange = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public var ipPortProtocolList: [AttachToPolicyRequest.IpPortProtocolList]?

    public var policyId: String?

    public var portVersion: String?

    public override init() {
        super.init()
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
        if self.portVersion != nil {
            map["PortVersion"] = self.portVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpPortProtocolList"] as? [Any?] {
            var tmp : [AttachToPolicyRequest.IpPortProtocolList] = []
            for v in value {
                if v != nil {
                    var model = AttachToPolicyRequest.IpPortProtocolList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipPortProtocolList = tmp
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["PortVersion"] as? String {
            self.portVersion = value
        }
    }
}

public class AttachToPolicyShrinkRequest : Tea.TeaModel {
    public var ipPortProtocolListShrink: String?

    public var policyId: String?

    public var portVersion: String?

    public override init() {
        super.init()
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
        if self.portVersion != nil {
            map["PortVersion"] = self.portVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpPortProtocolList"] as? String {
            self.ipPortProtocolListShrink = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["PortVersion"] as? String {
            self.portVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachToPolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessLogAuth"] as? Bool {
            self.accessLogAuth = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckAccessLogAuthResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsSlr"] as? Bool {
            self.isSlr = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckGrantResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePolicyRequest : Tea.TeaModel {
    public var name: String?

    public var portVersion: String?

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
        if self.portVersion != nil {
            map["PortVersion"] = self.portVersion!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PortVersion"] as? String {
            self.portVersion = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteBlackholeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IpList"] as? String {
            self.ipList = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteIpResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Uid"] as? String {
                self.uid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberList"] as? [Any?] {
            var tmp : [DeleteRdMemberListRequest.MemberList] = []
            for v in value {
                if v != nil {
                    var model = DeleteRdMemberListRequest.MemberList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberList"] as? String {
            self.memberListShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRdMemberListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetGroupList"] as? [Any?] {
            var tmp : [DescribeAssetGroupResponseBody.AssetGroupList] = []
            for v in value {
                if v != nil {
                    var model = DescribeAssetGroupResponseBody.AssetGroupList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.assetGroupList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAssetGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MemberUid"] as? String {
                self.memberUid = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataList"] as? [Any?] {
            var tmp : [DescribeAssetGroupToInstanceResponseBody.DataList] = []
            for v in value {
                if v != nil {
                    var model = DescribeAssetGroupToInstanceResponseBody.DataList()
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
        if let value = dict["Total"] as? Int64 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAssetGroupToInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int32 {
            self.startTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? Int32 {
                self.endTime = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["Mbps"] as? Int32 {
                self.mbps = value
            }
            if let value = dict["Pps"] as? Int32 {
                self.pps = value
            }
            if let value = dict["StartTime"] as? Int32 {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Events"] as? [Any?] {
            var tmp : [DescribeDdosEventResponseBody.Events] = []
            for v in value {
                if v != nil {
                    var model = DescribeDdosEventResponseBody.Events()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.events = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDdosEventResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["IsShowList"] as? Bool {
            self.isShowList = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class DescribeDdosOriginInstanceBillResponseBody : Tea.TeaModel {
    public class FlowList : Tea.TeaModel {
        public var memberFlow: String?

        public var regionFlow: String?

        public var time: Int64?

        public var totalBillFlow: Int64?

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
            if self.totalBillFlow != nil {
                map["TotalBillFlow"] = self.totalBillFlow!
            }
            if self.totalFlow != nil {
                map["TotalFlow"] = self.totalFlow!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MemberFlow"] as? String {
                self.memberFlow = value
            }
            if let value = dict["RegionFlow"] as? String {
                self.regionFlow = value
            }
            if let value = dict["Time"] as? Int64 {
                self.time = value
            }
            if let value = dict["TotalBillFlow"] as? Int64 {
                self.totalBillFlow = value
            }
            if let value = dict["TotalFlow"] as? Int64 {
                self.totalFlow = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Coverage"] as? String {
                self.coverage = value
            }
            if let value = dict["IpCntCn"] as? Int64 {
                self.ipCntCn = value
            }
            if let value = dict["IpCntOv"] as? Int64 {
                self.ipCntOv = value
            }
            if let value = dict["MemberIpCnt"] as? String {
                self.memberIpCnt = value
            }
            if let value = dict["Time"] as? Int64 {
                self.time = value
            }
        }
    }
    public class MonthlySummaryList : Tea.TeaModel {
        public var enableDays: Int32?

        public var flowCn: Int64?

        public var flowIntl: Int64?

        public var ipCountCn: Int32?

        public var ipCountIntl: Int32?

        public var memberUid: String?

        public var standardAssetsFlowCn: Int64?

        public var standardAssetsFlowIntl: Int64?

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
            if self.enableDays != nil {
                map["EnableDays"] = self.enableDays!
            }
            if self.flowCn != nil {
                map["FlowCn"] = self.flowCn!
            }
            if self.flowIntl != nil {
                map["FlowIntl"] = self.flowIntl!
            }
            if self.ipCountCn != nil {
                map["IpCountCn"] = self.ipCountCn!
            }
            if self.ipCountIntl != nil {
                map["IpCountIntl"] = self.ipCountIntl!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.standardAssetsFlowCn != nil {
                map["StandardAssetsFlowCn"] = self.standardAssetsFlowCn!
            }
            if self.standardAssetsFlowIntl != nil {
                map["StandardAssetsFlowIntl"] = self.standardAssetsFlowIntl!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnableDays"] as? Int32 {
                self.enableDays = value
            }
            if let value = dict["FlowCn"] as? Int64 {
                self.flowCn = value
            }
            if let value = dict["FlowIntl"] as? Int64 {
                self.flowIntl = value
            }
            if let value = dict["IpCountCn"] as? Int32 {
                self.ipCountCn = value
            }
            if let value = dict["IpCountIntl"] as? Int32 {
                self.ipCountIntl = value
            }
            if let value = dict["MemberUid"] as? String {
                self.memberUid = value
            }
            if let value = dict["StandardAssetsFlowCn"] as? Int64 {
                self.standardAssetsFlowCn = value
            }
            if let value = dict["StandardAssetsFlowIntl"] as? Int64 {
                self.standardAssetsFlowIntl = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MemberFlow"] as? String {
                self.memberFlow = value
            }
            if let value = dict["RegionFlow"] as? String {
                self.regionFlow = value
            }
            if let value = dict["Time"] as? Int64 {
                self.time = value
            }
            if let value = dict["TotalFlow"] as? Int64 {
                self.totalFlow = value
            }
        }
    }
    public var assetStatus: Int32?

    public var debtStatus: Int64?

    public var flowList: [DescribeDdosOriginInstanceBillResponseBody.FlowList]?

    public var flowRegion: [String: Any]?

    public var instanceId: String?

    public var ipCount: Int64?

    public var ipCountOrFunctionList: [DescribeDdosOriginInstanceBillResponseBody.IpCountOrFunctionList]?

    public var ipInfo: String?

    public var monthlySummaryList: [DescribeDdosOriginInstanceBillResponseBody.MonthlySummaryList]?

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
        if self.assetStatus != nil {
            map["AssetStatus"] = self.assetStatus!
        }
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
        if self.monthlySummaryList != nil {
            var tmp : [Any] = []
            for k in self.monthlySummaryList! {
                tmp.append(k.toMap())
            }
            map["MonthlySummaryList"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetStatus"] as? Int32 {
            self.assetStatus = value
        }
        if let value = dict["DebtStatus"] as? Int64 {
            self.debtStatus = value
        }
        if let value = dict["FlowList"] as? [Any?] {
            var tmp : [DescribeDdosOriginInstanceBillResponseBody.FlowList] = []
            for v in value {
                if v != nil {
                    var model = DescribeDdosOriginInstanceBillResponseBody.FlowList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.flowList = tmp
        }
        if let value = dict["FlowRegion"] as? [String: Any] {
            self.flowRegion = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IpCount"] as? Int64 {
            self.ipCount = value
        }
        if let value = dict["IpCountOrFunctionList"] as? [Any?] {
            var tmp : [DescribeDdosOriginInstanceBillResponseBody.IpCountOrFunctionList] = []
            for v in value {
                if v != nil {
                    var model = DescribeDdosOriginInstanceBillResponseBody.IpCountOrFunctionList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipCountOrFunctionList = tmp
        }
        if let value = dict["IpInfo"] as? String {
            self.ipInfo = value
        }
        if let value = dict["MonthlySummaryList"] as? [Any?] {
            var tmp : [DescribeDdosOriginInstanceBillResponseBody.MonthlySummaryList] = []
            for v in value {
                if v != nil {
                    var model = DescribeDdosOriginInstanceBillResponseBody.MonthlySummaryList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.monthlySummaryList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StandardAssetsFlowList"] as? [Any?] {
            var tmp : [DescribeDdosOriginInstanceBillResponseBody.StandardAssetsFlowList] = []
            for v in value {
                if v != nil {
                    var model = DescribeDdosOriginInstanceBillResponseBody.StandardAssetsFlowList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.standardAssetsFlowList = tmp
        }
        if let value = dict["StandardAssetsFlowRegion"] as? [String: Any] {
            self.standardAssetsFlowRegion = value
        }
        if let value = dict["StandardAssetsTotalFlowCn"] as? Int64 {
            self.standardAssetsTotalFlowCn = value
        }
        if let value = dict["StandardAssetsTotalFlowOv"] as? Int64 {
            self.standardAssetsTotalFlowOv = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
        if let value = dict["TotalFlowCn"] as? Int64 {
            self.totalFlowCn = value
        }
        if let value = dict["TotalFlowOv"] as? Int64 {
            self.totalFlowOv = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDdosOriginInstanceBillResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExceptionIpCount"] as? Int32 {
            self.exceptionIpCount = value
        }
        if let value = dict["ExpireTimeCount"] as? Int32 {
            self.expireTimeCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeExcpetionCountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIdList"] as? String {
            self.instanceIdList = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["InstanceTypeList"] as? [String] {
            self.instanceTypeList = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["IpVersion"] as? String {
            self.ipVersion = value
        }
        if let value = dict["Orderby"] as? String {
            self.orderby = value
        }
        if let value = dict["Orderdire"] as? String {
            self.orderdire = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeInstanceListRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceListRequest.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Events"] as? [String] {
                    self.events = value
                }
            }
        }
        public var autoProtectCondition: DescribeInstanceListResponseBody.InstanceList.AutoProtectCondition?

        public var autoRenewal: Bool?

        public var blackholdingCount: String?

        public var commodityType: String?

        public var coverageType: Int32?

        public var debtStatus: Int64?

        public var expireTime: Int64?

        public var gmtCreate: Int64?

        public var instanceId: String?

        public var instanceType: String?

        public var ipType: String?

        public var product: String?

        public var remark: String?

        public var resourceGroupId: String?

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
            if self.debtStatus != nil {
                map["DebtStatus"] = self.debtStatus!
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
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoProtectCondition"] as? [String: Any?] {
                var model = DescribeInstanceListResponseBody.InstanceList.AutoProtectCondition()
                model.fromMap(value)
                self.autoProtectCondition = model
            }
            if let value = dict["AutoRenewal"] as? Bool {
                self.autoRenewal = value
            }
            if let value = dict["BlackholdingCount"] as? String {
                self.blackholdingCount = value
            }
            if let value = dict["CommodityType"] as? String {
                self.commodityType = value
            }
            if let value = dict["CoverageType"] as? Int32 {
                self.coverageType = value
            }
            if let value = dict["DebtStatus"] as? Int64 {
                self.debtStatus = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["IpType"] as? String {
                self.ipType = value
            }
            if let value = dict["Product"] as? String {
                self.product = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceList"] as? [Any?] {
            var tmp : [DescribeInstanceListResponseBody.InstanceList] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceListResponseBody.InstanceList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInstanceListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIdList"] as? String {
            self.instanceIdList = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeInstanceSpecsResponseBody : Tea.TeaModel {
    public class InstanceSpecs : Tea.TeaModel {
        public class PackConfig : Tea.TeaModel {
            public var bandwidth: Int64?

            public var bindIpCount: Int32?

            public var elasticBwMbps: Int32?

            public var elasticBwMode: String?

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
                if self.elasticBwMbps != nil {
                    map["ElasticBwMbps"] = self.elasticBwMbps!
                }
                if self.elasticBwMode != nil {
                    map["ElasticBwMode"] = self.elasticBwMode!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bandwidth"] as? Int64 {
                    self.bandwidth = value
                }
                if let value = dict["BindIpCount"] as? Int32 {
                    self.bindIpCount = value
                }
                if let value = dict["ElasticBwMbps"] as? Int32 {
                    self.elasticBwMbps = value
                }
                if let value = dict["ElasticBwMode"] as? String {
                    self.elasticBwMode = value
                }
                if let value = dict["IpAdvanceThre"] as? Int32 {
                    self.ipAdvanceThre = value
                }
                if let value = dict["IpBasicThre"] as? Int32 {
                    self.ipBasicThre = value
                }
                if let value = dict["IpSpec"] as? Int32 {
                    self.ipSpec = value
                }
                if let value = dict["NormalBandwidth"] as? Int32 {
                    self.normalBandwidth = value
                }
                if let value = dict["PackAdvThre"] as? Int32 {
                    self.packAdvThre = value
                }
                if let value = dict["PackBasicThre"] as? Int32 {
                    self.packBasicThre = value
                }
            }
        }
        public var availableDefenseTimes: Int32?

        public var availableDeleteBlackholeCount: String?

        public var defenseTimesPercent: Int32?

        public var downgradeStatus: Int32?

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
            if self.downgradeStatus != nil {
                map["DowngradeStatus"] = self.downgradeStatus!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AvailableDefenseTimes"] as? Int32 {
                self.availableDefenseTimes = value
            }
            if let value = dict["AvailableDeleteBlackholeCount"] as? String {
                self.availableDeleteBlackholeCount = value
            }
            if let value = dict["DefenseTimesPercent"] as? Int32 {
                self.defenseTimesPercent = value
            }
            if let value = dict["DowngradeStatus"] as? Int32 {
                self.downgradeStatus = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["IsFullDefenseMode"] as? Int32 {
                self.isFullDefenseMode = value
            }
            if let value = dict["PackConfig"] as? [String: Any?] {
                var model = DescribeInstanceSpecsResponseBody.InstanceSpecs.PackConfig()
                model.fromMap(value)
                self.packConfig = model
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["TotalDefenseTimes"] as? Int32 {
                self.totalDefenseTimes = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceSpecs"] as? [Any?] {
            var tmp : [DescribeInstanceSpecsResponseBody.InstanceSpecs] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceSpecsResponseBody.InstanceSpecs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceSpecs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInstanceSpecsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOpEntitiesRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endTime: Int64?

    public var instanceId: String?

    public var opAction: Int32?

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
        if self.opAction != nil {
            map["OpAction"] = self.opAction!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OpAction"] as? Int32 {
            self.opAction = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OrderDir"] as? String {
            self.orderDir = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EntityObject"] as? String {
                self.entityObject = value
            }
            if let value = dict["EntityType"] as? Int32 {
                self.entityType = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["OpAccount"] as? String {
                self.opAccount = value
            }
            if let value = dict["OpAction"] as? Int32 {
                self.opAction = value
            }
            if let value = dict["OpDesc"] as? String {
                self.opDesc = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OpEntities"] as? [Any?] {
            var tmp : [DescribeOpEntitiesResponseBody.OpEntities] = []
            for v in value {
                if v != nil {
                    var model = DescribeOpEntitiesResponseBody.OpEntities()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.opEntities = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeOpEntitiesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["MemberUid"] as? String {
            self.memberUid = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["MemberUid"] as? String {
                self.memberUid = value
            }
            if let value = dict["NsmExpireAt"] as? Int64 {
                self.nsmExpireAt = value
            }
            if let value = dict["NsmStartAt"] as? Int64 {
                self.nsmStartAt = value
            }
            if let value = dict["NsmStatus"] as? Int32 {
                self.nsmStatus = value
            }
            if let value = dict["Product"] as? String {
                self.product = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IpList"] as? [Any?] {
            var tmp : [DescribePackIpListResponseBody.IpList] = []
            for v in value {
                if v != nil {
                    var model = DescribePackIpListResponseBody.IpList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipList = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePackIpListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceDirectoryId"] as? String {
            self.resourceDirectoryId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberList"] as? [Any?] {
            var tmp : [DescribeRdMemberListResponseBody.MemberList] = []
            for v in value {
                if v != nil {
                    var model = DescribeRdMemberListResponseBody.MemberList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.memberList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRdMemberListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentUid"] as? String {
            self.currentUid = value
        }
        if let value = dict["CurrentUidType"] as? String {
            self.currentUidType = value
        }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["LocalEnable"] as? Bool {
            self.localEnable = value
        }
        if let value = dict["MasterUid"] as? String {
            self.masterUid = value
        }
        if let value = dict["RemoteEnable"] as? Bool {
            self.remoteEnable = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootUid"] as? String {
            self.rootUid = value
        }
        if let value = dict["ServicePrincipalEnabled"] as? Bool {
            self.servicePrincipalEnabled = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRdStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionEnName"] as? String {
                self.regionEnName = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionName"] as? String {
                self.regionName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["FlowType"] as? String {
            self.flowType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Interval"] as? Int32 {
            self.interval = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["Ipnet"] as? String {
            self.ipnet = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int32 {
            self.startTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttackBps"] as? Int64 {
                self.attackBps = value
            }
            if let value = dict["AttackPps"] as? Int64 {
                self.attackPps = value
            }
            if let value = dict["FlowType"] as? String {
                self.flowType = value
            }
            if let value = dict["Kbps"] as? Int32 {
                self.kbps = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Pps"] as? Int32 {
                self.pps = value
            }
            if let value = dict["Time"] as? Int32 {
                self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowList"] as? [Any?] {
            var tmp : [DescribeTrafficResponseBody.FlowList] = []
            for v in value {
                if v != nil {
                    var model = DescribeTrafficResponseBody.FlowList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.flowList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTrafficResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetachFromPolicyRequest : Tea.TeaModel {
    public class IpPortProtocolList : Tea.TeaModel {
        public var ip: String?

        public var port: Int32?

        public var portRange: String?

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
            if self.portRange != nil {
                map["PortRange"] = self.portRange!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["PortRange"] as? String {
                self.portRange = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public var ipPortProtocolList: [DetachFromPolicyRequest.IpPortProtocolList]?

    public var policyType: String?

    public var portVersion: String?

    public override init() {
        super.init()
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
        if self.portVersion != nil {
            map["PortVersion"] = self.portVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpPortProtocolList"] as? [Any?] {
            var tmp : [DetachFromPolicyRequest.IpPortProtocolList] = []
            for v in value {
                if v != nil {
                    var model = DetachFromPolicyRequest.IpPortProtocolList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipPortProtocolList = tmp
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["PortVersion"] as? String {
            self.portVersion = value
        }
    }
}

public class DetachFromPolicyShrinkRequest : Tea.TeaModel {
    public var ipPortProtocolListShrink: String?

    public var policyType: String?

    public var portVersion: String?

    public override init() {
        super.init()
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
        if self.portVersion != nil {
            map["PortVersion"] = self.portVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpPortProtocolList"] as? String {
            self.ipPortProtocolListShrink = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["PortVersion"] as? String {
            self.portVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachFromPolicyResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetGroupList"] as? [Any?] {
            var tmp : [DettachAssetGroupToInstanceRequest.AssetGroupList] = []
            for v in value {
                if v != nil {
                    var model = DettachAssetGroupToInstanceRequest.AssetGroupList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.assetGroupList = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetGroupList"] as? String {
            self.assetGroupListShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DettachAssetGroupToInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlsOpenStatus"] as? Bool {
            self.slsOpenStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSlsOpenStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlsConfigStatus"] as? [Any?] {
            var tmp : [ListOpenedAccessLogInstancesResponseBody.SlsConfigStatus] = []
            for v in value {
                if v != nil {
                    var model = ListOpenedAccessLogInstancesResponseBody.SlsConfigStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.slsConfigStatus = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOpenedAccessLogInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPolicyRequest : Tea.TeaModel {
    public var name: String?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var productType: String?

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
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DstPortEnd"] as? Int32 {
                        self.dstPortEnd = value
                    }
                    if let value = dict["DstPortStart"] as? Int32 {
                        self.dstPortStart = value
                    }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["MatchAction"] as? String {
                        self.matchAction = value
                    }
                    if let value = dict["MaxPktLen"] as? Int32 {
                        self.maxPktLen = value
                    }
                    if let value = dict["MinPktLen"] as? Int32 {
                        self.minPktLen = value
                    }
                    if let value = dict["Offset"] as? Int32 {
                        self.offset = value
                    }
                    if let value = dict["PayloadBytes"] as? String {
                        self.payloadBytes = value
                    }
                    if let value = dict["Protocol"] as? String {
                        self.protocol_ = value
                    }
                    if let value = dict["RateValue"] as? Int32 {
                        self.rateValue = value
                    }
                    if let value = dict["SeqNo"] as? Int32 {
                        self.seqNo = value
                    }
                    if let value = dict["SrcPortEnd"] as? Int32 {
                        self.srcPortEnd = value
                    }
                    if let value = dict["SrcPortStart"] as? Int32 {
                        self.srcPortStart = value
                    }
                }
            }
            public class L4RuleList : Tea.TeaModel {
                public class ConditionList : Tea.TeaModel {
                    public class Offset : Tea.TeaModel {
                        public var end: Int32?

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
                            if let value = dict["Start"] as? Int32 {
                                self.start = value
                            }
                        }
                    }
                    public var arg: String?

                    public var content: String?

                    public var depth: Int32?

                    public var encode: String?

                    public var offset: ListPolicyResponseBody.PolicyList.Content.L4RuleList.ConditionList.Offset?

                    public var pattern: String?

                    public var position: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.offset?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.arg != nil {
                            map["Arg"] = self.arg!
                        }
                        if self.content != nil {
                            map["Content"] = self.content!
                        }
                        if self.depth != nil {
                            map["Depth"] = self.depth!
                        }
                        if self.encode != nil {
                            map["Encode"] = self.encode!
                        }
                        if self.offset != nil {
                            map["Offset"] = self.offset?.toMap()
                        }
                        if self.pattern != nil {
                            map["Pattern"] = self.pattern!
                        }
                        if self.position != nil {
                            map["Position"] = self.position!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Arg"] as? String {
                            self.arg = value
                        }
                        if let value = dict["Content"] as? String {
                            self.content = value
                        }
                        if let value = dict["Depth"] as? Int32 {
                            self.depth = value
                        }
                        if let value = dict["Encode"] as? String {
                            self.encode = value
                        }
                        if let value = dict["Offset"] as? [String: Any?] {
                            var model = ListPolicyResponseBody.PolicyList.Content.L4RuleList.ConditionList.Offset()
                            model.fromMap(value)
                            self.offset = model
                        }
                        if let value = dict["Pattern"] as? String {
                            self.pattern = value
                        }
                        if let value = dict["Position"] as? Int32 {
                            self.position = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Action"] as? String {
                        self.action = value
                    }
                    if let value = dict["ConditionList"] as? [Any?] {
                        var tmp : [ListPolicyResponseBody.PolicyList.Content.L4RuleList.ConditionList] = []
                        for v in value {
                            if v != nil {
                                var model = ListPolicyResponseBody.PolicyList.Content.L4RuleList.ConditionList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.conditionList = tmp
                    }
                    if let value = dict["Limited"] as? Int32 {
                        self.limited = value
                    }
                    if let value = dict["Match"] as? String {
                        self.match = value
                    }
                    if let value = dict["Method"] as? String {
                        self.method = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Priority"] as? Int32 {
                        self.priority = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DstPortEnd"] as? Int32 {
                        self.dstPortEnd = value
                    }
                    if let value = dict["DstPortStart"] as? Int32 {
                        self.dstPortStart = value
                    }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["MatchAction"] as? String {
                        self.matchAction = value
                    }
                    if let value = dict["Protocol"] as? String {
                        self.protocol_ = value
                    }
                    if let value = dict["SeqNo"] as? Int32 {
                        self.seqNo = value
                    }
                    if let value = dict["SrcPortEnd"] as? Int32 {
                        self.srcPortEnd = value
                    }
                    if let value = dict["SrcPortStart"] as? Int32 {
                        self.srcPortStart = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BlockExpireSeconds"] as? Int32 {
                        self.blockExpireSeconds = value
                    }
                    if let value = dict["EverySeconds"] as? Int32 {
                        self.everySeconds = value
                    }
                    if let value = dict["ExceedLimitTimes"] as? Int32 {
                        self.exceedLimitTimes = value
                    }
                    if let value = dict["Type"] as? Int32 {
                        self.type = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bps"] as? Int32 {
                        self.bps = value
                    }
                    if let value = dict["Pps"] as? Int32 {
                        self.pps = value
                    }
                    if let value = dict["SynBps"] as? Int32 {
                        self.synBps = value
                    }
                    if let value = dict["SynPps"] as? Int32 {
                        self.synPps = value
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

            public var portVersion: String?

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
                if self.portVersion != nil {
                    map["PortVersion"] = self.portVersion!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlackIpListExpireAt"] as? Int64 {
                    self.blackIpListExpireAt = value
                }
                if let value = dict["EnableDropIcmp"] as? Bool {
                    self.enableDropIcmp = value
                }
                if let value = dict["EnableIntelligence"] as? Bool {
                    self.enableIntelligence = value
                }
                if let value = dict["EnableL4Defense"] as? Bool {
                    self.enableL4Defense = value
                }
                if let value = dict["FingerPrintRuleList"] as? [Any?] {
                    var tmp : [ListPolicyResponseBody.PolicyList.Content.FingerPrintRuleList] = []
                    for v in value {
                        if v != nil {
                            var model = ListPolicyResponseBody.PolicyList.Content.FingerPrintRuleList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.fingerPrintRuleList = tmp
                }
                if let value = dict["IntelligenceLevel"] as? String {
                    self.intelligenceLevel = value
                }
                if let value = dict["L4RuleList"] as? [Any?] {
                    var tmp : [ListPolicyResponseBody.PolicyList.Content.L4RuleList] = []
                    for v in value {
                        if v != nil {
                            var model = ListPolicyResponseBody.PolicyList.Content.L4RuleList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.l4RuleList = tmp
                }
                if let value = dict["PortRuleList"] as? [Any?] {
                    var tmp : [ListPolicyResponseBody.PolicyList.Content.PortRuleList] = []
                    for v in value {
                        if v != nil {
                            var model = ListPolicyResponseBody.PolicyList.Content.PortRuleList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.portRuleList = tmp
                }
                if let value = dict["PortVersion"] as? String {
                    self.portVersion = value
                }
                if let value = dict["ReflectBlockUdpPortList"] as? [Int32] {
                    self.reflectBlockUdpPortList = value
                }
                if let value = dict["RegionBlockCountryList"] as? [Int32] {
                    self.regionBlockCountryList = value
                }
                if let value = dict["RegionBlockProvinceList"] as? [Int32] {
                    self.regionBlockProvinceList = value
                }
                if let value = dict["SourceBlockList"] as? [Any?] {
                    var tmp : [ListPolicyResponseBody.PolicyList.Content.SourceBlockList] = []
                    for v in value {
                        if v != nil {
                            var model = ListPolicyResponseBody.PolicyList.Content.SourceBlockList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.sourceBlockList = tmp
                }
                if let value = dict["SourceLimit"] as? [String: Any?] {
                    var model = ListPolicyResponseBody.PolicyList.Content.SourceLimit()
                    model.fromMap(value)
                    self.sourceLimit = model
                }
                if let value = dict["WhitenGfbrNets"] as? Bool {
                    self.whitenGfbrNets = value
                }
            }
        }
        public var attachedCount: Int32?

        public var content: ListPolicyResponseBody.PolicyList.Content?

        public var id: String?

        public var name: String?

        public var remark: String?

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
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachedCount"] as? Int32 {
                self.attachedCount = value
            }
            if let value = dict["Content"] as? [String: Any?] {
                var model = ListPolicyResponseBody.PolicyList.Content()
                model.fromMap(value)
                self.content = model
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyList"] as? [Any?] {
            var tmp : [ListPolicyResponseBody.PolicyList] = []
            for v in value {
                if v != nil {
                    var model = ListPolicyResponseBody.PolicyList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policyList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPolicyAttachmentRequest : Tea.TeaModel {
    public class IpPortProtocolList : Tea.TeaModel {
        public var ip: String?

        public var port: Int32?

        public var portRange: String?

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
            if self.portRange != nil {
                map["PortRange"] = self.portRange!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["PortRange"] as? String {
                self.portRange = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public var ipPortProtocolList: [ListPolicyAttachmentRequest.IpPortProtocolList]?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var policyId: String?

    public var policyType: String?

    public var portVersion: String?

    public override init() {
        super.init()
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
        if self.portVersion != nil {
            map["PortVersion"] = self.portVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpPortProtocolList"] as? [Any?] {
            var tmp : [ListPolicyAttachmentRequest.IpPortProtocolList] = []
            for v in value {
                if v != nil {
                    var model = ListPolicyAttachmentRequest.IpPortProtocolList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipPortProtocolList = tmp
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["PortVersion"] as? String {
            self.portVersion = value
        }
    }
}

public class ListPolicyAttachmentShrinkRequest : Tea.TeaModel {
    public var ipPortProtocolListShrink: String?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var policyId: String?

    public var policyType: String?

    public var portVersion: String?

    public override init() {
        super.init()
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
        if self.portVersion != nil {
            map["PortVersion"] = self.portVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpPortProtocolList"] as? String {
            self.ipPortProtocolListShrink = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["PortVersion"] as? String {
            self.portVersion = value
        }
    }
}

public class ListPolicyAttachmentResponseBody : Tea.TeaModel {
    public class AttachmentList : Tea.TeaModel {
        public var ip: String?

        public var memberUid: String?

        public var policyId: String?

        public var policyName: String?

        public var policyRemark: String?

        public var policyType: String?

        public var port: Int32?

        public var portRange: String?

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
            if self.policyRemark != nil {
                map["PolicyRemark"] = self.policyRemark!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.portRange != nil {
                map["PortRange"] = self.portRange!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["MemberUid"] as? String {
                self.memberUid = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicyRemark"] as? String {
                self.policyRemark = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["PortRange"] as? String {
                self.portRange = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttachmentList"] as? [Any?] {
            var tmp : [ListPolicyAttachmentResponseBody.AttachmentList] = []
            for v in value {
                if v != nil {
                    var model = ListPolicyAttachmentResponseBody.AttachmentList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attachmentList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPolicyAttachmentResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagCount"] as? Int32 {
                self.tagCount = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagKeys"] as? [Any?] {
            var tmp : [ListTagKeysResponseBody.TagKeys] = []
            for v in value {
                if v != nil {
                    var model = ListTagKeysResponseBody.TagKeys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagKeys = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagResource"] as? [Any?] {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in value {
                    if v != nil {
                        var model = ListTagResourcesResponseBody.TagResources.TagResource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DstPortEnd"] as? Int32 {
                    self.dstPortEnd = value
                }
                if let value = dict["DstPortStart"] as? Int32 {
                    self.dstPortStart = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["MatchAction"] as? String {
                    self.matchAction = value
                }
                if let value = dict["MaxPktLen"] as? Int32 {
                    self.maxPktLen = value
                }
                if let value = dict["MinPktLen"] as? Int32 {
                    self.minPktLen = value
                }
                if let value = dict["Offset"] as? Int32 {
                    self.offset = value
                }
                if let value = dict["PayloadBytes"] as? String {
                    self.payloadBytes = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["RateValue"] as? Int32 {
                    self.rateValue = value
                }
                if let value = dict["SeqNo"] as? Int32 {
                    self.seqNo = value
                }
                if let value = dict["SrcPortEnd"] as? Int32 {
                    self.srcPortEnd = value
                }
                if let value = dict["SrcPortStart"] as? Int32 {
                    self.srcPortStart = value
                }
            }
        }
        public class L4RuleList : Tea.TeaModel {
            public class ConditionList : Tea.TeaModel {
                public class Offset : Tea.TeaModel {
                    public var end: Int32?

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
                        if let value = dict["Start"] as? Int32 {
                            self.start = value
                        }
                    }
                }
                public var arg: String?

                public var content: String?

                public var depth: Int32?

                public var encode: String?

                public var offset: ModifyPolicyRequest.Content.L4RuleList.ConditionList.Offset?

                public var pattern: String?

                public var position: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.offset?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.arg != nil {
                        map["Arg"] = self.arg!
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.depth != nil {
                        map["Depth"] = self.depth!
                    }
                    if self.encode != nil {
                        map["Encode"] = self.encode!
                    }
                    if self.offset != nil {
                        map["Offset"] = self.offset?.toMap()
                    }
                    if self.pattern != nil {
                        map["Pattern"] = self.pattern!
                    }
                    if self.position != nil {
                        map["Position"] = self.position!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Arg"] as? String {
                        self.arg = value
                    }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["Depth"] as? Int32 {
                        self.depth = value
                    }
                    if let value = dict["Encode"] as? String {
                        self.encode = value
                    }
                    if let value = dict["Offset"] as? [String: Any?] {
                        var model = ModifyPolicyRequest.Content.L4RuleList.ConditionList.Offset()
                        model.fromMap(value)
                        self.offset = model
                    }
                    if let value = dict["Pattern"] as? String {
                        self.pattern = value
                    }
                    if let value = dict["Position"] as? Int32 {
                        self.position = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Action"] as? String {
                    self.action = value
                }
                if let value = dict["ConditionList"] as? [Any?] {
                    var tmp : [ModifyPolicyRequest.Content.L4RuleList.ConditionList] = []
                    for v in value {
                        if v != nil {
                            var model = ModifyPolicyRequest.Content.L4RuleList.ConditionList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.conditionList = tmp
                }
                if let value = dict["Limited"] as? Int32 {
                    self.limited = value
                }
                if let value = dict["Match"] as? String {
                    self.match = value
                }
                if let value = dict["Method"] as? String {
                    self.method = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DstPortEnd"] as? Int32 {
                    self.dstPortEnd = value
                }
                if let value = dict["DstPortStart"] as? Int32 {
                    self.dstPortStart = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["MatchAction"] as? String {
                    self.matchAction = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["SeqNo"] as? Int32 {
                    self.seqNo = value
                }
                if let value = dict["SrcPortEnd"] as? Int32 {
                    self.srcPortEnd = value
                }
                if let value = dict["SrcPortStart"] as? Int32 {
                    self.srcPortStart = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlockExpireSeconds"] as? Int32 {
                    self.blockExpireSeconds = value
                }
                if let value = dict["EverySeconds"] as? Int32 {
                    self.everySeconds = value
                }
                if let value = dict["ExceedLimitTimes"] as? Int32 {
                    self.exceedLimitTimes = value
                }
                if let value = dict["Type"] as? Int32 {
                    self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bps"] as? Int32 {
                    self.bps = value
                }
                if let value = dict["Pps"] as? Int32 {
                    self.pps = value
                }
                if let value = dict["SynBps"] as? Int32 {
                    self.synBps = value
                }
                if let value = dict["SynPps"] as? Int32 {
                    self.synPps = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlackIpList"] as? [String] {
                self.blackIpList = value
            }
            if let value = dict["BlackIpListExpireAt"] as? Int64 {
                self.blackIpListExpireAt = value
            }
            if let value = dict["EnableDropIcmp"] as? Bool {
                self.enableDropIcmp = value
            }
            if let value = dict["EnableIntelligence"] as? Bool {
                self.enableIntelligence = value
            }
            if let value = dict["EnableL4Defense"] as? Bool {
                self.enableL4Defense = value
            }
            if let value = dict["FingerPrintRuleList"] as? [Any?] {
                var tmp : [ModifyPolicyRequest.Content.FingerPrintRuleList] = []
                for v in value {
                    if v != nil {
                        var model = ModifyPolicyRequest.Content.FingerPrintRuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fingerPrintRuleList = tmp
            }
            if let value = dict["IntelligenceLevel"] as? String {
                self.intelligenceLevel = value
            }
            if let value = dict["L4RuleList"] as? [Any?] {
                var tmp : [ModifyPolicyRequest.Content.L4RuleList] = []
                for v in value {
                    if v != nil {
                        var model = ModifyPolicyRequest.Content.L4RuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.l4RuleList = tmp
            }
            if let value = dict["PortRuleList"] as? [Any?] {
                var tmp : [ModifyPolicyRequest.Content.PortRuleList] = []
                for v in value {
                    if v != nil {
                        var model = ModifyPolicyRequest.Content.PortRuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.portRuleList = tmp
            }
            if let value = dict["ReflectBlockUdpPortList"] as? [Int32] {
                self.reflectBlockUdpPortList = value
            }
            if let value = dict["RegionBlockCountryList"] as? [Int32] {
                self.regionBlockCountryList = value
            }
            if let value = dict["RegionBlockProvinceList"] as? [Int32] {
                self.regionBlockProvinceList = value
            }
            if let value = dict["SourceBlockList"] as? [Any?] {
                var tmp : [ModifyPolicyRequest.Content.SourceBlockList] = []
                for v in value {
                    if v != nil {
                        var model = ModifyPolicyRequest.Content.SourceBlockList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sourceBlockList = tmp
            }
            if let value = dict["SourceLimit"] as? [String: Any?] {
                var model = ModifyPolicyRequest.Content.SourceLimit()
                model.fromMap(value)
                self.sourceLimit = model
            }
            if let value = dict["WhiteIpList"] as? [String] {
                self.whiteIpList = value
            }
            if let value = dict["WhitenGfbrNets"] as? Bool {
                self.whitenGfbrNets = value
            }
        }
    }
    public var actionType: Int32?

    public var content: ModifyPolicyRequest.Content?

    public var id: String?

    public var name: String?

    public var portVersion: String?

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
        if self.portVersion != nil {
            map["PortVersion"] = self.portVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? Int32 {
            self.actionType = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ModifyPolicyRequest.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PortVersion"] as? String {
            self.portVersion = value
        }
    }
}

public class ModifyPolicyShrinkRequest : Tea.TeaModel {
    public var actionType: Int32?

    public var contentShrink: String?

    public var id: String?

    public var name: String?

    public var portVersion: String?

    public override init() {
        super.init()
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
        if self.portVersion != nil {
            map["PortVersion"] = self.portVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? Int32 {
            self.actionType = value
        }
        if let value = dict["Content"] as? String {
            self.contentShrink = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PortVersion"] as? String {
            self.portVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPolicyResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DstPortEnd"] as? Int32 {
                    self.dstPortEnd = value
                }
                if let value = dict["DstPortStart"] as? Int32 {
                    self.dstPortStart = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["MatchAction"] as? String {
                    self.matchAction = value
                }
                if let value = dict["MaxPktLen"] as? Int32 {
                    self.maxPktLen = value
                }
                if let value = dict["MinPktLen"] as? Int32 {
                    self.minPktLen = value
                }
                if let value = dict["Offset"] as? Int32 {
                    self.offset = value
                }
                if let value = dict["PayloadBytes"] as? String {
                    self.payloadBytes = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["RateValue"] as? Int32 {
                    self.rateValue = value
                }
                if let value = dict["SeqNo"] as? Int32 {
                    self.seqNo = value
                }
                if let value = dict["SrcPortEnd"] as? Int32 {
                    self.srcPortEnd = value
                }
                if let value = dict["SrcPortStart"] as? Int32 {
                    self.srcPortStart = value
                }
            }
        }
        public class L4RuleList : Tea.TeaModel {
            public class ConditionList : Tea.TeaModel {
                public class Offset : Tea.TeaModel {
                    public var end: Int32?

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
                        if let value = dict["Start"] as? Int32 {
                            self.start = value
                        }
                    }
                }
                public var arg: String?

                public var content: String?

                public var depth: Int32?

                public var encode: String?

                public var offset: ModifyPolicyContentRequest.Content.L4RuleList.ConditionList.Offset?

                public var pattern: String?

                public var position: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.offset?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.arg != nil {
                        map["Arg"] = self.arg!
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.depth != nil {
                        map["Depth"] = self.depth!
                    }
                    if self.encode != nil {
                        map["Encode"] = self.encode!
                    }
                    if self.offset != nil {
                        map["Offset"] = self.offset?.toMap()
                    }
                    if self.pattern != nil {
                        map["Pattern"] = self.pattern!
                    }
                    if self.position != nil {
                        map["Position"] = self.position!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Arg"] as? String {
                        self.arg = value
                    }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["Depth"] as? Int32 {
                        self.depth = value
                    }
                    if let value = dict["Encode"] as? String {
                        self.encode = value
                    }
                    if let value = dict["Offset"] as? [String: Any?] {
                        var model = ModifyPolicyContentRequest.Content.L4RuleList.ConditionList.Offset()
                        model.fromMap(value)
                        self.offset = model
                    }
                    if let value = dict["Pattern"] as? String {
                        self.pattern = value
                    }
                    if let value = dict["Position"] as? Int32 {
                        self.position = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Action"] as? String {
                    self.action = value
                }
                if let value = dict["ConditionList"] as? [Any?] {
                    var tmp : [ModifyPolicyContentRequest.Content.L4RuleList.ConditionList] = []
                    for v in value {
                        if v != nil {
                            var model = ModifyPolicyContentRequest.Content.L4RuleList.ConditionList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.conditionList = tmp
                }
                if let value = dict["Limited"] as? Int32 {
                    self.limited = value
                }
                if let value = dict["Match"] as? String {
                    self.match = value
                }
                if let value = dict["Method"] as? String {
                    self.method = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DstPortEnd"] as? Int32 {
                    self.dstPortEnd = value
                }
                if let value = dict["DstPortStart"] as? Int32 {
                    self.dstPortStart = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["MatchAction"] as? String {
                    self.matchAction = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["SeqNo"] as? Int32 {
                    self.seqNo = value
                }
                if let value = dict["SrcPortEnd"] as? Int32 {
                    self.srcPortEnd = value
                }
                if let value = dict["SrcPortStart"] as? Int32 {
                    self.srcPortStart = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlockExpireSeconds"] as? Int32 {
                    self.blockExpireSeconds = value
                }
                if let value = dict["EverySeconds"] as? Int32 {
                    self.everySeconds = value
                }
                if let value = dict["ExceedLimitTimes"] as? Int32 {
                    self.exceedLimitTimes = value
                }
                if let value = dict["Type"] as? Int32 {
                    self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bps"] as? Int32 {
                    self.bps = value
                }
                if let value = dict["Pps"] as? Int32 {
                    self.pps = value
                }
                if let value = dict["SynBps"] as? Int32 {
                    self.synBps = value
                }
                if let value = dict["SynPps"] as? Int32 {
                    self.synPps = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlackIpListExpireAt"] as? Int64 {
                self.blackIpListExpireAt = value
            }
            if let value = dict["EnableDropIcmp"] as? Bool {
                self.enableDropIcmp = value
            }
            if let value = dict["EnableIntelligence"] as? Bool {
                self.enableIntelligence = value
            }
            if let value = dict["EnableL4Defense"] as? Bool {
                self.enableL4Defense = value
            }
            if let value = dict["FingerPrintRuleList"] as? [Any?] {
                var tmp : [ModifyPolicyContentRequest.Content.FingerPrintRuleList] = []
                for v in value {
                    if v != nil {
                        var model = ModifyPolicyContentRequest.Content.FingerPrintRuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fingerPrintRuleList = tmp
            }
            if let value = dict["IntelligenceLevel"] as? String {
                self.intelligenceLevel = value
            }
            if let value = dict["L4RuleList"] as? [Any?] {
                var tmp : [ModifyPolicyContentRequest.Content.L4RuleList] = []
                for v in value {
                    if v != nil {
                        var model = ModifyPolicyContentRequest.Content.L4RuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.l4RuleList = tmp
            }
            if let value = dict["PortRuleList"] as? [Any?] {
                var tmp : [ModifyPolicyContentRequest.Content.PortRuleList] = []
                for v in value {
                    if v != nil {
                        var model = ModifyPolicyContentRequest.Content.PortRuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.portRuleList = tmp
            }
            if let value = dict["ReflectBlockUdpPortList"] as? [Int32] {
                self.reflectBlockUdpPortList = value
            }
            if let value = dict["RegionBlockCountryList"] as? [Int32] {
                self.regionBlockCountryList = value
            }
            if let value = dict["RegionBlockProvinceList"] as? [Int32] {
                self.regionBlockProvinceList = value
            }
            if let value = dict["SourceBlockList"] as? [Any?] {
                var tmp : [ModifyPolicyContentRequest.Content.SourceBlockList] = []
                for v in value {
                    if v != nil {
                        var model = ModifyPolicyContentRequest.Content.SourceBlockList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sourceBlockList = tmp
            }
            if let value = dict["SourceLimit"] as? [String: Any?] {
                var model = ModifyPolicyContentRequest.Content.SourceLimit()
                model.fromMap(value)
                self.sourceLimit = model
            }
            if let value = dict["WhitenGfbrNets"] as? Bool {
                self.whitenGfbrNets = value
            }
        }
    }
    public var content: ModifyPolicyContentRequest.Content?

    public var id: String?

    public var name: String?

    public var portVersion: String?

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
        if self.portVersion != nil {
            map["PortVersion"] = self.portVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ModifyPolicyContentRequest.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PortVersion"] as? String {
            self.portVersion = value
        }
    }
}

public class ModifyPolicyContentShrinkRequest : Tea.TeaModel {
    public var contentShrink: String?

    public var id: String?

    public var name: String?

    public var portVersion: String?

    public override init() {
        super.init()
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
        if self.portVersion != nil {
            map["PortVersion"] = self.portVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.contentShrink = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PortVersion"] as? String {
            self.portVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPolicyContentResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyRemarkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MoveResourceGroupRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceRegionId: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class MoveResourceGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class MoveResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MoveResourceGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReleaseDdosOriginInstanceResponseBody()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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
