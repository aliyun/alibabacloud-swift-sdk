import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddCustomLineRequest : Tea.TeaModel {
    public var dnsCategory: String?

    public var ipv4s: [String]?

    public var lang: String?

    public var name: String?

    public var shareScope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dnsCategory != nil {
            map["DnsCategory"] = self.dnsCategory!
        }
        if self.ipv4s != nil {
            map["Ipv4s"] = self.ipv4s!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.shareScope != nil {
            map["ShareScope"] = self.shareScope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DnsCategory"] as? String {
            self.dnsCategory = value
        }
        if let value = dict["Ipv4s"] as? [String] {
            self.ipv4s = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ShareScope"] as? String {
            self.shareScope = value
        }
    }
}

public class AddCustomLineResponseBody : Tea.TeaModel {
    public var lineId: String?

    public var name: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lineId != nil {
            map["LineId"] = self.lineId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LineId"] as? String {
            self.lineId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddCustomLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCustomLineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddCustomLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddResolverEndpointRequest : Tea.TeaModel {
    public class IpConfig : Tea.TeaModel {
        public var azId: String?

        public var cidrBlock: String?

        public var ip: String?

        public var vSwitchId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.azId != nil {
                map["AzId"] = self.azId!
            }
            if self.cidrBlock != nil {
                map["CidrBlock"] = self.cidrBlock!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AzId"] as? String {
                self.azId = value
            }
            if let value = dict["CidrBlock"] as? String {
                self.cidrBlock = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
        }
    }
    public var ipConfig: [AddResolverEndpointRequest.IpConfig]?

    public var lang: String?

    public var name: String?

    public var securityGroupId: String?

    public var vpcId: String?

    public var vpcRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipConfig != nil {
            var tmp : [Any] = []
            for k in self.ipConfig! {
                tmp.append(k.toMap())
            }
            map["IpConfig"] = tmp
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vpcRegionId != nil {
            map["VpcRegionId"] = self.vpcRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpConfig"] as? [Any?] {
            var tmp : [AddResolverEndpointRequest.IpConfig] = []
            for v in value {
                if v != nil {
                    var model = AddResolverEndpointRequest.IpConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipConfig = tmp
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VpcRegionId"] as? String {
            self.vpcRegionId = value
        }
    }
}

public class AddResolverEndpointResponseBody : Tea.TeaModel {
    public var endpointId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddResolverEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddResolverEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddResolverEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddResolverRuleRequest : Tea.TeaModel {
    public class EdgeDnsClusters : Tea.TeaModel {
        public var clusterId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
        }
    }
    public class ForwardIp : Tea.TeaModel {
        public var ip: String?

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
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.port != nil {
                map["Port"] = self.port!
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
        }
    }
    public class Vpcs : Tea.TeaModel {
        public var regionId: String?

        public var vpcId: String?

        public var vpcType: String?

        public var vpcUserId: Int64?

        public override init() {
            super.init()
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
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcType != nil {
                map["VpcType"] = self.vpcType!
            }
            if self.vpcUserId != nil {
                map["VpcUserId"] = self.vpcUserId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcType"] as? String {
                self.vpcType = value
            }
            if let value = dict["VpcUserId"] as? Int64 {
                self.vpcUserId = value
            }
        }
    }
    public var edgeDnsClusters: [AddResolverRuleRequest.EdgeDnsClusters]?

    public var endpointId: String?

    public var forwardIp: [AddResolverRuleRequest.ForwardIp]?

    public var lang: String?

    public var name: String?

    public var type: String?

    public var vpcs: [AddResolverRuleRequest.Vpcs]?

    public var zoneName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.edgeDnsClusters != nil {
            var tmp : [Any] = []
            for k in self.edgeDnsClusters! {
                tmp.append(k.toMap())
            }
            map["EdgeDnsClusters"] = tmp
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.forwardIp != nil {
            var tmp : [Any] = []
            for k in self.forwardIp! {
                tmp.append(k.toMap())
            }
            map["ForwardIp"] = tmp
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vpcs != nil {
            var tmp : [Any] = []
            for k in self.vpcs! {
                tmp.append(k.toMap())
            }
            map["Vpcs"] = tmp
        }
        if self.zoneName != nil {
            map["ZoneName"] = self.zoneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EdgeDnsClusters"] as? [Any?] {
            var tmp : [AddResolverRuleRequest.EdgeDnsClusters] = []
            for v in value {
                if v != nil {
                    var model = AddResolverRuleRequest.EdgeDnsClusters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.edgeDnsClusters = tmp
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["ForwardIp"] as? [Any?] {
            var tmp : [AddResolverRuleRequest.ForwardIp] = []
            for v in value {
                if v != nil {
                    var model = AddResolverRuleRequest.ForwardIp()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.forwardIp = tmp
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Vpcs"] as? [Any?] {
            var tmp : [AddResolverRuleRequest.Vpcs] = []
            for v in value {
                if v != nil {
                    var model = AddResolverRuleRequest.Vpcs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vpcs = tmp
        }
        if let value = dict["ZoneName"] as? String {
            self.zoneName = value
        }
    }
}

public class AddResolverRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var ruleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class AddResolverRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddResolverRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddResolverRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddUserVpcAuthorizationRequest : Tea.TeaModel {
    public var authChannel: String?

    public var authCode: String?

    public var authType: String?

    public var authorizedUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authChannel != nil {
            map["AuthChannel"] = self.authChannel!
        }
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.authorizedUserId != nil {
            map["AuthorizedUserId"] = self.authorizedUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthChannel"] as? String {
            self.authChannel = value
        }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["AuthorizedUserId"] as? Int64 {
            self.authorizedUserId = value
        }
    }
}

public class AddUserVpcAuthorizationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AddUserVpcAuthorizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserVpcAuthorizationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddUserVpcAuthorizationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddZoneRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dnsGroup: String?

    public var lang: String?

    public var proxyPattern: String?

    public var resourceGroupId: String?

    public var zoneName: String?

    public var zoneTag: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dnsGroup != nil {
            map["DnsGroup"] = self.dnsGroup!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.proxyPattern != nil {
            map["ProxyPattern"] = self.proxyPattern!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.zoneName != nil {
            map["ZoneName"] = self.zoneName!
        }
        if self.zoneTag != nil {
            map["ZoneTag"] = self.zoneTag!
        }
        if self.zoneType != nil {
            map["ZoneType"] = self.zoneType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DnsGroup"] as? String {
            self.dnsGroup = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProxyPattern"] as? String {
            self.proxyPattern = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ZoneName"] as? String {
            self.zoneName = value
        }
        if let value = dict["ZoneTag"] as? String {
            self.zoneTag = value
        }
        if let value = dict["ZoneType"] as? String {
            self.zoneType = value
        }
    }
}

public class AddZoneResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: Bool?

    public var zoneId: String?

    public var zoneName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        if self.zoneName != nil {
            map["ZoneName"] = self.zoneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
        if let value = dict["ZoneName"] as? String {
            self.zoneName = value
        }
    }
}

public class AddZoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddZoneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddZoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddZoneRecordRequest : Tea.TeaModel {
    public var clientToken: String?

    public var lang: String?

    public var line: String?

    public var priority: Int32?

    public var remark: String?

    public var rr: String?

    public var ttl: Int32?

    public var type: String?

    public var userClientIp: String?

    public var value: String?

    public var weight: Int32?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.line != nil {
            map["Line"] = self.line!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.rr != nil {
            map["Rr"] = self.rr!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.weight != nil {
            map["Weight"] = self.weight!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Line"] as? String {
            self.line = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["Rr"] as? String {
            self.rr = value
        }
        if let value = dict["Ttl"] as? Int32 {
            self.ttl = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
        if let value = dict["Weight"] as? Int32 {
            self.weight = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class AddZoneRecordResponseBody : Tea.TeaModel {
    public var recordId: Int64?

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
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
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
        if let value = dict["RecordId"] as? Int64 {
            self.recordId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddZoneRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddZoneRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddZoneRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindResolverRuleVpcRequest : Tea.TeaModel {
    public class Vpc : Tea.TeaModel {
        public var regionId: String?

        public var vpcId: String?

        public var vpcType: String?

        public override init() {
            super.init()
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
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcType != nil {
                map["VpcType"] = self.vpcType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcType"] as? String {
                self.vpcType = value
            }
        }
    }
    public var lang: String?

    public var ruleId: String?

    public var vpc: [BindResolverRuleVpcRequest.Vpc]?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.vpc != nil {
            var tmp : [Any] = []
            for k in self.vpc! {
                tmp.append(k.toMap())
            }
            map["Vpc"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["Vpc"] as? [Any?] {
            var tmp : [BindResolverRuleVpcRequest.Vpc] = []
            for v in value {
                if v != nil {
                    var model = BindResolverRuleVpcRequest.Vpc()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vpc = tmp
        }
    }
}

public class BindResolverRuleVpcResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class BindResolverRuleVpcResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindResolverRuleVpcResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindResolverRuleVpcResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindZoneVpcRequest : Tea.TeaModel {
    public class Vpcs : Tea.TeaModel {
        public var regionId: String?

        public var vpcId: String?

        public var vpcType: String?

        public override init() {
            super.init()
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
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcType != nil {
                map["VpcType"] = self.vpcType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcType"] as? String {
                self.vpcType = value
            }
        }
    }
    public var clientToken: String?

    public var lang: String?

    public var userClientIp: String?

    public var vpcs: [BindZoneVpcRequest.Vpcs]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.vpcs != nil {
            var tmp : [Any] = []
            for k in self.vpcs! {
                tmp.append(k.toMap())
            }
            map["Vpcs"] = tmp
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["Vpcs"] as? [Any?] {
            var tmp : [BindZoneVpcRequest.Vpcs] = []
            for v in value {
                if v != nil {
                    var model = BindZoneVpcRequest.Vpcs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vpcs = tmp
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class BindZoneVpcResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class BindZoneVpcResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindZoneVpcResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindZoneVpcResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeZoneDnsGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dnsGroup: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dnsGroup != nil {
            map["DnsGroup"] = self.dnsGroup!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DnsGroup"] as? String {
            self.dnsGroup = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class ChangeZoneDnsGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class ChangeZoneDnsGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeZoneDnsGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChangeZoneDnsGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckZoneNameRequest : Tea.TeaModel {
    public var lang: String?

    public var userClientIp: String?

    public var zoneName: String?

    public override init() {
        super.init()
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
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.zoneName != nil {
            map["ZoneName"] = self.zoneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["ZoneName"] as? String {
            self.zoneName = value
        }
    }
}

public class CheckZoneNameResponseBody : Tea.TeaModel {
    public var check: Bool?

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
        if self.check != nil {
            map["Check"] = self.check!
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
        if let value = dict["Check"] as? Bool {
            self.check = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CheckZoneNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckZoneNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckZoneNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCustomLineRequest : Tea.TeaModel {
    public var lang: String?

    public var lineId: String?

    public override init() {
        super.init()
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
        if self.lineId != nil {
            map["LineId"] = self.lineId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LineId"] as? String {
            self.lineId = value
        }
    }
}

public class DeleteCustomLineResponseBody : Tea.TeaModel {
    public var lineId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lineId != nil {
            map["LineId"] = self.lineId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LineId"] as? String {
            self.lineId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteCustomLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomLineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteCustomLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResolverEndpointRequest : Tea.TeaModel {
    public var endpointId: String?

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
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class DeleteResolverEndpointResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteResolverEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResolverEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteResolverEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResolverRuleRequest : Tea.TeaModel {
    public var lang: String?

    public var ruleId: String?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class DeleteResolverRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteResolverRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResolverRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteResolverRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserVpcAuthorizationRequest : Tea.TeaModel {
    public var authType: String?

    public var authorizedUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.authorizedUserId != nil {
            map["AuthorizedUserId"] = self.authorizedUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["AuthorizedUserId"] as? Int64 {
            self.authorizedUserId = value
        }
    }
}

public class DeleteUserVpcAuthorizationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteUserVpcAuthorizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserVpcAuthorizationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteUserVpcAuthorizationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteZoneRequest : Tea.TeaModel {
    public var clientToken: String?

    public var lang: String?

    public var userClientIp: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DeleteZoneResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DeleteZoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteZoneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteZoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteZoneRecordRequest : Tea.TeaModel {
    public var clientToken: String?

    public var lang: String?

    public var recordId: Int64?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RecordId"] as? Int64 {
            self.recordId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class DeleteZoneRecordResponseBody : Tea.TeaModel {
    public var recordId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RecordId"] as? Int64 {
            self.recordId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteZoneRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteZoneRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteZoneRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeChangeLogsRequest : Tea.TeaModel {
    public var endTimestamp: Int64?

    public var entityType: String?

    public var keyword: String?

    public var lang: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTimestamp: Int64?

    public var userClientIp: String?

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
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTimestamp"] as? Int64 {
            self.endTimestamp = value
        }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTimestamp"] as? Int64 {
            self.startTimestamp = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeChangeLogsResponseBody : Tea.TeaModel {
    public class ChangeLogs : Tea.TeaModel {
        public class ChangeLog : Tea.TeaModel {
            public var content: String?

            public var creatorId: String?

            public var creatorSubType: String?

            public var creatorType: String?

            public var creatorUserId: String?

            public var entityId: String?

            public var entityName: String?

            public var id: Int64?

            public var operAction: String?

            public var operIp: String?

            public var operObject: String?

            public var operTime: String?

            public var operTimestamp: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.creatorId != nil {
                    map["CreatorId"] = self.creatorId!
                }
                if self.creatorSubType != nil {
                    map["CreatorSubType"] = self.creatorSubType!
                }
                if self.creatorType != nil {
                    map["CreatorType"] = self.creatorType!
                }
                if self.creatorUserId != nil {
                    map["CreatorUserId"] = self.creatorUserId!
                }
                if self.entityId != nil {
                    map["EntityId"] = self.entityId!
                }
                if self.entityName != nil {
                    map["EntityName"] = self.entityName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.operAction != nil {
                    map["OperAction"] = self.operAction!
                }
                if self.operIp != nil {
                    map["OperIp"] = self.operIp!
                }
                if self.operObject != nil {
                    map["OperObject"] = self.operObject!
                }
                if self.operTime != nil {
                    map["OperTime"] = self.operTime!
                }
                if self.operTimestamp != nil {
                    map["OperTimestamp"] = self.operTimestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["CreatorId"] as? String {
                    self.creatorId = value
                }
                if let value = dict["CreatorSubType"] as? String {
                    self.creatorSubType = value
                }
                if let value = dict["CreatorType"] as? String {
                    self.creatorType = value
                }
                if let value = dict["CreatorUserId"] as? String {
                    self.creatorUserId = value
                }
                if let value = dict["EntityId"] as? String {
                    self.entityId = value
                }
                if let value = dict["EntityName"] as? String {
                    self.entityName = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["OperAction"] as? String {
                    self.operAction = value
                }
                if let value = dict["OperIp"] as? String {
                    self.operIp = value
                }
                if let value = dict["OperObject"] as? String {
                    self.operObject = value
                }
                if let value = dict["OperTime"] as? String {
                    self.operTime = value
                }
                if let value = dict["OperTimestamp"] as? Int64 {
                    self.operTimestamp = value
                }
            }
        }
        public var changeLog: [DescribeChangeLogsResponseBody.ChangeLogs.ChangeLog]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeLog != nil {
                var tmp : [Any] = []
                for k in self.changeLog! {
                    tmp.append(k.toMap())
                }
                map["ChangeLog"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChangeLog"] as? [Any?] {
                var tmp : [DescribeChangeLogsResponseBody.ChangeLogs.ChangeLog] = []
                for v in value {
                    if v != nil {
                        var model = DescribeChangeLogsResponseBody.ChangeLogs.ChangeLog()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.changeLog = tmp
            }
        }
    }
    public var changeLogs: DescribeChangeLogsResponseBody.ChangeLogs?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalItems: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.changeLogs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeLogs != nil {
            map["ChangeLogs"] = self.changeLogs?.toMap()
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
        if self.totalItems != nil {
            map["TotalItems"] = self.totalItems!
        }
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeLogs"] as? [String: Any?] {
            var model = DescribeChangeLogsResponseBody.ChangeLogs()
            model.fromMap(value)
            self.changeLogs = model
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
        if let value = dict["TotalItems"] as? Int32 {
            self.totalItems = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class DescribeChangeLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChangeLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeChangeLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCustomLineInfoRequest : Tea.TeaModel {
    public var lang: String?

    public var lineId: String?

    public override init() {
        super.init()
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
        if self.lineId != nil {
            map["LineId"] = self.lineId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LineId"] as? String {
            self.lineId = value
        }
    }
}

public class DescribeCustomLineInfoResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var createTimestamp: Int64?

    public var creator: String?

    public var creatorSubType: String?

    public var creatorType: String?

    public var dnscategory: String?

    public var ipv4s: [String]?

    public var lineId: String?

    public var name: String?

    public var requestId: String?

    public var updateTime: String?

    public var updateTimestamp: Int64?

    public override init() {
        super.init()
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
        if self.createTimestamp != nil {
            map["CreateTimestamp"] = self.createTimestamp!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.creatorSubType != nil {
            map["CreatorSubType"] = self.creatorSubType!
        }
        if self.creatorType != nil {
            map["CreatorType"] = self.creatorType!
        }
        if self.dnscategory != nil {
            map["Dnscategory"] = self.dnscategory!
        }
        if self.ipv4s != nil {
            map["Ipv4s"] = self.ipv4s!
        }
        if self.lineId != nil {
            map["LineId"] = self.lineId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.updateTimestamp != nil {
            map["UpdateTimestamp"] = self.updateTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["CreatorSubType"] as? String {
            self.creatorSubType = value
        }
        if let value = dict["CreatorType"] as? String {
            self.creatorType = value
        }
        if let value = dict["Dnscategory"] as? String {
            self.dnscategory = value
        }
        if let value = dict["Ipv4s"] as? [String] {
            self.ipv4s = value
        }
        if let value = dict["LineId"] as? String {
            self.lineId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["UpdateTimestamp"] as? Int64 {
            self.updateTimestamp = value
        }
    }
}

public class DescribeCustomLineInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomLineInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCustomLineInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCustomLinesRequest : Tea.TeaModel {
    public var lang: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
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
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeCustomLinesResponseBody : Tea.TeaModel {
    public class CustomLines : Tea.TeaModel {
        public class CustomLine : Tea.TeaModel {
            public class Ipv4s : Tea.TeaModel {
                public var ipv4: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ipv4 != nil {
                        map["Ipv4"] = self.ipv4!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Ipv4"] as? [String] {
                        self.ipv4 = value
                    }
                }
            }
            public var createTime: String?

            public var createTimestamp: Int64?

            public var creator: String?

            public var creatorSubType: String?

            public var creatorType: String?

            public var dnsCategory: String?

            public var ipv4s: DescribeCustomLinesResponseBody.CustomLines.CustomLine.Ipv4s?

            public var lineId: String?

            public var name: String?

            public var updateTime: String?

            public var updateTimestamp: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.ipv4s?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createTimestamp != nil {
                    map["CreateTimestamp"] = self.createTimestamp!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.creatorSubType != nil {
                    map["CreatorSubType"] = self.creatorSubType!
                }
                if self.creatorType != nil {
                    map["CreatorType"] = self.creatorType!
                }
                if self.dnsCategory != nil {
                    map["DnsCategory"] = self.dnsCategory!
                }
                if self.ipv4s != nil {
                    map["Ipv4s"] = self.ipv4s?.toMap()
                }
                if self.lineId != nil {
                    map["LineId"] = self.lineId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.updateTimestamp != nil {
                    map["UpdateTimestamp"] = self.updateTimestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["CreateTimestamp"] as? Int64 {
                    self.createTimestamp = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["CreatorSubType"] as? String {
                    self.creatorSubType = value
                }
                if let value = dict["CreatorType"] as? String {
                    self.creatorType = value
                }
                if let value = dict["DnsCategory"] as? String {
                    self.dnsCategory = value
                }
                if let value = dict["Ipv4s"] as? [String: Any?] {
                    var model = DescribeCustomLinesResponseBody.CustomLines.CustomLine.Ipv4s()
                    model.fromMap(value)
                    self.ipv4s = model
                }
                if let value = dict["LineId"] as? String {
                    self.lineId = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["UpdateTimestamp"] as? Int64 {
                    self.updateTimestamp = value
                }
            }
        }
        public var customLine: [DescribeCustomLinesResponseBody.CustomLines.CustomLine]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customLine != nil {
                var tmp : [Any] = []
                for k in self.customLine! {
                    tmp.append(k.toMap())
                }
                map["CustomLine"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomLine"] as? [Any?] {
                var tmp : [DescribeCustomLinesResponseBody.CustomLines.CustomLine] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCustomLinesResponseBody.CustomLines.CustomLine()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.customLine = tmp
            }
        }
    }
    public var customLines: DescribeCustomLinesResponseBody.CustomLines?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalItems: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.customLines?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customLines != nil {
            map["CustomLines"] = self.customLines?.toMap()
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
        if self.totalItems != nil {
            map["TotalItems"] = self.totalItems!
        }
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomLines"] as? [String: Any?] {
            var model = DescribeCustomLinesResponseBody.CustomLines()
            model.fromMap(value)
            self.customLines = model
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
        if let value = dict["TotalItems"] as? Int32 {
            self.totalItems = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class DescribeCustomLinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomLinesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCustomLinesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var authorizedUserId: Int64?

    public var lang: String?

    public var scene: String?

    public var userClientIp: String?

    public var vpcType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.authorizedUserId != nil {
            map["AuthorizedUserId"] = self.authorizedUserId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.vpcType != nil {
            map["VpcType"] = self.vpcType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AuthorizedUserId"] as? Int64 {
            self.authorizedUserId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Scene"] as? String {
            self.scene = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["VpcType"] as? String {
            self.vpcType = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public var localName: String?

            public var regionEndpoint: String?

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
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.regionEndpoint != nil {
                    map["RegionEndpoint"] = self.regionEndpoint!
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
                if let value = dict["LocalName"] as? String {
                    self.localName = value
                }
                if let value = dict["RegionEndpoint"] as? String {
                    self.regionEndpoint = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RegionName"] as? String {
                    self.regionName = value
                }
            }
        }
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? [Any?] {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsResponseBody.Regions.Region()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.region = tmp
            }
        }
    }
    public var regions: DescribeRegionsResponseBody.Regions?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(value)
            self.regions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

public class DescribeRequestGraphRequest : Tea.TeaModel {
    public var bizId: String?

    public var bizType: String?

    public var endTimestamp: Int64?

    public var lang: String?

    public var startTimestamp: Int64?

    public var userClientIp: String?

    public var vpcId: String?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["EndTimestamp"] as? Int64 {
            self.endTimestamp = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["StartTimestamp"] as? Int64 {
            self.startTimestamp = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeRequestGraphResponseBody : Tea.TeaModel {
    public class RequestDetails : Tea.TeaModel {
        public class ZoneRequestTop : Tea.TeaModel {
            public var requestCount: Int64?

            public var time: String?

            public var timestamp: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.requestCount != nil {
                    map["RequestCount"] = self.requestCount!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RequestCount"] as? Int64 {
                    self.requestCount = value
                }
                if let value = dict["Time"] as? String {
                    self.time = value
                }
                if let value = dict["Timestamp"] as? Int64 {
                    self.timestamp = value
                }
            }
        }
        public var zoneRequestTop: [DescribeRequestGraphResponseBody.RequestDetails.ZoneRequestTop]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.zoneRequestTop != nil {
                var tmp : [Any] = []
                for k in self.zoneRequestTop! {
                    tmp.append(k.toMap())
                }
                map["ZoneRequestTop"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ZoneRequestTop"] as? [Any?] {
                var tmp : [DescribeRequestGraphResponseBody.RequestDetails.ZoneRequestTop] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRequestGraphResponseBody.RequestDetails.ZoneRequestTop()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.zoneRequestTop = tmp
            }
        }
    }
    public var requestDetails: DescribeRequestGraphResponseBody.RequestDetails?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestDetails?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestDetails != nil {
            map["RequestDetails"] = self.requestDetails?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestDetails"] as? [String: Any?] {
            var model = DescribeRequestGraphResponseBody.RequestDetails()
            model.fromMap(value)
            self.requestDetails = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeRequestGraphResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRequestGraphResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRequestGraphResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeResolverAvailableZonesRequest : Tea.TeaModel {
    public var azId: String?

    public var lang: String?

    public var resolverRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.azId != nil {
            map["AzId"] = self.azId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.resolverRegionId != nil {
            map["ResolverRegionId"] = self.resolverRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AzId"] as? String {
            self.azId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ResolverRegionId"] as? String {
            self.resolverRegionId = value
        }
    }
}

public class DescribeResolverAvailableZonesResponseBody : Tea.TeaModel {
    public class AvailableZones : Tea.TeaModel {
        public var azId: String?

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
            if self.azId != nil {
                map["AzId"] = self.azId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AzId"] as? String {
                self.azId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var availableZones: [DescribeResolverAvailableZonesResponseBody.AvailableZones]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableZones != nil {
            var tmp : [Any] = []
            for k in self.availableZones! {
                tmp.append(k.toMap())
            }
            map["AvailableZones"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableZones"] as? [Any?] {
            var tmp : [DescribeResolverAvailableZonesResponseBody.AvailableZones] = []
            for v in value {
                if v != nil {
                    var model = DescribeResolverAvailableZonesResponseBody.AvailableZones()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.availableZones = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeResolverAvailableZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResolverAvailableZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeResolverAvailableZonesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeResolverEndpointRequest : Tea.TeaModel {
    public var endpointId: String?

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
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class DescribeResolverEndpointResponseBody : Tea.TeaModel {
    public class IpConfigs : Tea.TeaModel {
        public var azId: String?

        public var cidrBlock: String?

        public var ip: String?

        public var vSwitchId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.azId != nil {
                map["AzId"] = self.azId!
            }
            if self.cidrBlock != nil {
                map["CidrBlock"] = self.cidrBlock!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AzId"] as? String {
                self.azId = value
            }
            if let value = dict["CidrBlock"] as? String {
                self.cidrBlock = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
        }
    }
    public var createTime: String?

    public var createTimestamp: Int64?

    public var id: String?

    public var ipConfigs: [DescribeResolverEndpointResponseBody.IpConfigs]?

    public var name: String?

    public var requestId: String?

    public var securityGroupId: String?

    public var status: String?

    public var updateTime: String?

    public var updateTimestamp: Int64?

    public var vpcId: String?

    public var vpcName: String?

    public var vpcRegionId: String?

    public var vpcRegionName: String?

    public override init() {
        super.init()
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
        if self.createTimestamp != nil {
            map["CreateTimestamp"] = self.createTimestamp!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ipConfigs != nil {
            var tmp : [Any] = []
            for k in self.ipConfigs! {
                tmp.append(k.toMap())
            }
            map["IpConfigs"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.updateTimestamp != nil {
            map["UpdateTimestamp"] = self.updateTimestamp!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vpcName != nil {
            map["VpcName"] = self.vpcName!
        }
        if self.vpcRegionId != nil {
            map["VpcRegionId"] = self.vpcRegionId!
        }
        if self.vpcRegionName != nil {
            map["VpcRegionName"] = self.vpcRegionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["IpConfigs"] as? [Any?] {
            var tmp : [DescribeResolverEndpointResponseBody.IpConfigs] = []
            for v in value {
                if v != nil {
                    var model = DescribeResolverEndpointResponseBody.IpConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipConfigs = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["UpdateTimestamp"] as? Int64 {
            self.updateTimestamp = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VpcName"] as? String {
            self.vpcName = value
        }
        if let value = dict["VpcRegionId"] as? String {
            self.vpcRegionId = value
        }
        if let value = dict["VpcRegionName"] as? String {
            self.vpcRegionName = value
        }
    }
}

public class DescribeResolverEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResolverEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeResolverEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeResolverEndpointsRequest : Tea.TeaModel {
    public var keyword: String?

    public var lang: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: String?

    public var vpcRegionId: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.vpcRegionId != nil {
            map["VpcRegionId"] = self.vpcRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["VpcRegionId"] as? String {
            self.vpcRegionId = value
        }
    }
}

public class DescribeResolverEndpointsResponseBody : Tea.TeaModel {
    public class Endpoints : Tea.TeaModel {
        public class IpConfigs : Tea.TeaModel {
            public var azId: String?

            public var cidrBlock: String?

            public var ip: String?

            public var vSwitchId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.azId != nil {
                    map["AzId"] = self.azId!
                }
                if self.cidrBlock != nil {
                    map["CidrBlock"] = self.cidrBlock!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AzId"] as? String {
                    self.azId = value
                }
                if let value = dict["CidrBlock"] as? String {
                    self.cidrBlock = value
                }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
            }
        }
        public var createTime: String?

        public var createTimestamp: Int64?

        public var id: String?

        public var ipConfigs: [DescribeResolverEndpointsResponseBody.Endpoints.IpConfigs]?

        public var name: String?

        public var securityGroupId: String?

        public var status: String?

        public var updateTime: String?

        public var updateTimestamp: Int64?

        public var vpcId: String?

        public var vpcName: String?

        public var vpcRegionId: String?

        public var vpcRegionName: String?

        public override init() {
            super.init()
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
            if self.createTimestamp != nil {
                map["CreateTimestamp"] = self.createTimestamp!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.ipConfigs != nil {
                var tmp : [Any] = []
                for k in self.ipConfigs! {
                    tmp.append(k.toMap())
                }
                map["IpConfigs"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateTimestamp != nil {
                map["UpdateTimestamp"] = self.updateTimestamp!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcName != nil {
                map["VpcName"] = self.vpcName!
            }
            if self.vpcRegionId != nil {
                map["VpcRegionId"] = self.vpcRegionId!
            }
            if self.vpcRegionName != nil {
                map["VpcRegionName"] = self.vpcRegionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateTimestamp"] as? Int64 {
                self.createTimestamp = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["IpConfigs"] as? [Any?] {
                var tmp : [DescribeResolverEndpointsResponseBody.Endpoints.IpConfigs] = []
                for v in value {
                    if v != nil {
                        var model = DescribeResolverEndpointsResponseBody.Endpoints.IpConfigs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ipConfigs = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UpdateTimestamp"] as? Int64 {
                self.updateTimestamp = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcName"] as? String {
                self.vpcName = value
            }
            if let value = dict["VpcRegionId"] as? String {
                self.vpcRegionId = value
            }
            if let value = dict["VpcRegionName"] as? String {
                self.vpcRegionName = value
            }
        }
    }
    public var endpoints: [DescribeResolverEndpointsResponseBody.Endpoints]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalItems: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpoints != nil {
            var tmp : [Any] = []
            for k in self.endpoints! {
                tmp.append(k.toMap())
            }
            map["Endpoints"] = tmp
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
        if self.totalItems != nil {
            map["TotalItems"] = self.totalItems!
        }
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Endpoints"] as? [Any?] {
            var tmp : [DescribeResolverEndpointsResponseBody.Endpoints] = []
            for v in value {
                if v != nil {
                    var model = DescribeResolverEndpointsResponseBody.Endpoints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.endpoints = tmp
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
        if let value = dict["TotalItems"] as? Int32 {
            self.totalItems = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class DescribeResolverEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResolverEndpointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeResolverEndpointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeResolverRuleRequest : Tea.TeaModel {
    public var lang: String?

    public var ruleId: String?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class DescribeResolverRuleResponseBody : Tea.TeaModel {
    public class BindEdgeDnsClusters : Tea.TeaModel {
        public var clusterId: String?

        public var clusterName: String?

        public var clusterUserId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.clusterUserId != nil {
                map["ClusterUserId"] = self.clusterUserId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ClusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["ClusterUserId"] as? Int64 {
                self.clusterUserId = value
            }
        }
    }
    public class BindVpcs : Tea.TeaModel {
        public var regionId: String?

        public var regionName: String?

        public var vpcId: String?

        public var vpcName: String?

        public var vpcType: String?

        public var vpcUserId: String?

        public override init() {
            super.init()
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
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcName != nil {
                map["VpcName"] = self.vpcName!
            }
            if self.vpcType != nil {
                map["VpcType"] = self.vpcType!
            }
            if self.vpcUserId != nil {
                map["VpcUserId"] = self.vpcUserId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionName"] as? String {
                self.regionName = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcName"] as? String {
                self.vpcName = value
            }
            if let value = dict["VpcType"] as? String {
                self.vpcType = value
            }
            if let value = dict["VpcUserId"] as? String {
                self.vpcUserId = value
            }
        }
    }
    public class ForwardIps : Tea.TeaModel {
        public var ip: String?

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
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.port != nil {
                map["Port"] = self.port!
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
        }
    }
    public var bindEdgeDnsClusters: [DescribeResolverRuleResponseBody.BindEdgeDnsClusters]?

    public var bindVpcs: [DescribeResolverRuleResponseBody.BindVpcs]?

    public var createTime: String?

    public var createTimestamp: Int64?

    public var endpointId: String?

    public var endpointName: String?

    public var forwardIps: [DescribeResolverRuleResponseBody.ForwardIps]?

    public var id: String?

    public var name: String?

    public var requestId: String?

    public var type: String?

    public var updateTime: String?

    public var updateTimestamp: Int64?

    public var zoneName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindEdgeDnsClusters != nil {
            var tmp : [Any] = []
            for k in self.bindEdgeDnsClusters! {
                tmp.append(k.toMap())
            }
            map["BindEdgeDnsClusters"] = tmp
        }
        if self.bindVpcs != nil {
            var tmp : [Any] = []
            for k in self.bindVpcs! {
                tmp.append(k.toMap())
            }
            map["BindVpcs"] = tmp
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createTimestamp != nil {
            map["CreateTimestamp"] = self.createTimestamp!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.endpointName != nil {
            map["EndpointName"] = self.endpointName!
        }
        if self.forwardIps != nil {
            var tmp : [Any] = []
            for k in self.forwardIps! {
                tmp.append(k.toMap())
            }
            map["ForwardIps"] = tmp
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.updateTimestamp != nil {
            map["UpdateTimestamp"] = self.updateTimestamp!
        }
        if self.zoneName != nil {
            map["ZoneName"] = self.zoneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindEdgeDnsClusters"] as? [Any?] {
            var tmp : [DescribeResolverRuleResponseBody.BindEdgeDnsClusters] = []
            for v in value {
                if v != nil {
                    var model = DescribeResolverRuleResponseBody.BindEdgeDnsClusters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.bindEdgeDnsClusters = tmp
        }
        if let value = dict["BindVpcs"] as? [Any?] {
            var tmp : [DescribeResolverRuleResponseBody.BindVpcs] = []
            for v in value {
                if v != nil {
                    var model = DescribeResolverRuleResponseBody.BindVpcs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.bindVpcs = tmp
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["EndpointName"] as? String {
            self.endpointName = value
        }
        if let value = dict["ForwardIps"] as? [Any?] {
            var tmp : [DescribeResolverRuleResponseBody.ForwardIps] = []
            for v in value {
                if v != nil {
                    var model = DescribeResolverRuleResponseBody.ForwardIps()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.forwardIps = tmp
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["UpdateTimestamp"] as? Int64 {
            self.updateTimestamp = value
        }
        if let value = dict["ZoneName"] as? String {
            self.zoneName = value
        }
    }
}

public class DescribeResolverRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResolverRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeResolverRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeResolverRulesRequest : Tea.TeaModel {
    public var endpointId: String?

    public var keyword: String?

    public var lang: String?

    public var needDetailAttributes: Bool?

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
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.needDetailAttributes != nil {
            map["NeedDetailAttributes"] = self.needDetailAttributes!
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
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NeedDetailAttributes"] as? Bool {
            self.needDetailAttributes = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeResolverRulesResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class BindEdgeDnsClusters : Tea.TeaModel {
            public var clusterId: String?

            public var clusterName: String?

            public var clusterUserId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterName != nil {
                    map["ClusterName"] = self.clusterName!
                }
                if self.clusterUserId != nil {
                    map["ClusterUserId"] = self.clusterUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClusterId"] as? String {
                    self.clusterId = value
                }
                if let value = dict["ClusterName"] as? String {
                    self.clusterName = value
                }
                if let value = dict["ClusterUserId"] as? Int64 {
                    self.clusterUserId = value
                }
            }
        }
        public class BindVpcs : Tea.TeaModel {
            public var regionId: String?

            public var regionName: String?

            public var vpcId: String?

            public var vpcName: String?

            public var vpcType: String?

            public var vpcUserId: String?

            public override init() {
                super.init()
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
                if self.regionName != nil {
                    map["RegionName"] = self.regionName!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpcName != nil {
                    map["VpcName"] = self.vpcName!
                }
                if self.vpcType != nil {
                    map["VpcType"] = self.vpcType!
                }
                if self.vpcUserId != nil {
                    map["VpcUserId"] = self.vpcUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RegionName"] as? String {
                    self.regionName = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VpcName"] as? String {
                    self.vpcName = value
                }
                if let value = dict["VpcType"] as? String {
                    self.vpcType = value
                }
                if let value = dict["VpcUserId"] as? String {
                    self.vpcUserId = value
                }
            }
        }
        public class ForwardIps : Tea.TeaModel {
            public var ip: String?

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
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.port != nil {
                    map["Port"] = self.port!
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
            }
        }
        public class PriorityForwardConfigs : Tea.TeaModel {
            public var alidnsServiceAddresses: [String]?

            public var customAddresses: [String]?

            public var enableStatus: String?

            public var priority: Int32?

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
                if self.alidnsServiceAddresses != nil {
                    map["AlidnsServiceAddresses"] = self.alidnsServiceAddresses!
                }
                if self.customAddresses != nil {
                    map["CustomAddresses"] = self.customAddresses!
                }
                if self.enableStatus != nil {
                    map["EnableStatus"] = self.enableStatus!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlidnsServiceAddresses"] as? [String] {
                    self.alidnsServiceAddresses = value
                }
                if let value = dict["CustomAddresses"] as? [String] {
                    self.customAddresses = value
                }
                if let value = dict["EnableStatus"] as? String {
                    self.enableStatus = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
            }
        }
        public var bindEdgeDnsClusters: [DescribeResolverRulesResponseBody.Rules.BindEdgeDnsClusters]?

        public var bindVpcs: [DescribeResolverRulesResponseBody.Rules.BindVpcs]?

        public var createTime: String?

        public var createTimestamp: Int64?

        public var endpointId: String?

        public var endpointName: String?

        public var forwardIps: [DescribeResolverRulesResponseBody.Rules.ForwardIps]?

        public var id: String?

        public var name: String?

        public var priorityForwardConfigs: [DescribeResolverRulesResponseBody.Rules.PriorityForwardConfigs]?

        public var type: String?

        public var updateTime: String?

        public var updateTimestamp: Int64?

        public var zoneName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bindEdgeDnsClusters != nil {
                var tmp : [Any] = []
                for k in self.bindEdgeDnsClusters! {
                    tmp.append(k.toMap())
                }
                map["BindEdgeDnsClusters"] = tmp
            }
            if self.bindVpcs != nil {
                var tmp : [Any] = []
                for k in self.bindVpcs! {
                    tmp.append(k.toMap())
                }
                map["BindVpcs"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createTimestamp != nil {
                map["CreateTimestamp"] = self.createTimestamp!
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.endpointName != nil {
                map["EndpointName"] = self.endpointName!
            }
            if self.forwardIps != nil {
                var tmp : [Any] = []
                for k in self.forwardIps! {
                    tmp.append(k.toMap())
                }
                map["ForwardIps"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.priorityForwardConfigs != nil {
                var tmp : [Any] = []
                for k in self.priorityForwardConfigs! {
                    tmp.append(k.toMap())
                }
                map["PriorityForwardConfigs"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateTimestamp != nil {
                map["UpdateTimestamp"] = self.updateTimestamp!
            }
            if self.zoneName != nil {
                map["ZoneName"] = self.zoneName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BindEdgeDnsClusters"] as? [Any?] {
                var tmp : [DescribeResolverRulesResponseBody.Rules.BindEdgeDnsClusters] = []
                for v in value {
                    if v != nil {
                        var model = DescribeResolverRulesResponseBody.Rules.BindEdgeDnsClusters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bindEdgeDnsClusters = tmp
            }
            if let value = dict["BindVpcs"] as? [Any?] {
                var tmp : [DescribeResolverRulesResponseBody.Rules.BindVpcs] = []
                for v in value {
                    if v != nil {
                        var model = DescribeResolverRulesResponseBody.Rules.BindVpcs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bindVpcs = tmp
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateTimestamp"] as? Int64 {
                self.createTimestamp = value
            }
            if let value = dict["EndpointId"] as? String {
                self.endpointId = value
            }
            if let value = dict["EndpointName"] as? String {
                self.endpointName = value
            }
            if let value = dict["ForwardIps"] as? [Any?] {
                var tmp : [DescribeResolverRulesResponseBody.Rules.ForwardIps] = []
                for v in value {
                    if v != nil {
                        var model = DescribeResolverRulesResponseBody.Rules.ForwardIps()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.forwardIps = tmp
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PriorityForwardConfigs"] as? [Any?] {
                var tmp : [DescribeResolverRulesResponseBody.Rules.PriorityForwardConfigs] = []
                for v in value {
                    if v != nil {
                        var model = DescribeResolverRulesResponseBody.Rules.PriorityForwardConfigs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.priorityForwardConfigs = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UpdateTimestamp"] as? Int64 {
                self.updateTimestamp = value
            }
            if let value = dict["ZoneName"] as? String {
                self.zoneName = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var rules: [DescribeResolverRulesResponseBody.Rules]?

    public var totalItems: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        if self.totalItems != nil {
            map["TotalItems"] = self.totalItems!
        }
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
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
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [DescribeResolverRulesResponseBody.Rules] = []
            for v in value {
                if v != nil {
                    var model = DescribeResolverRulesResponseBody.Rules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rules = tmp
        }
        if let value = dict["TotalItems"] as? Int32 {
            self.totalItems = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class DescribeResolverRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResolverRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeResolverRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeStatisticSummaryRequest : Tea.TeaModel {
    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class DescribeStatisticSummaryResponseBody : Tea.TeaModel {
    public class VpcRequestTops : Tea.TeaModel {
        public class VpcRequestTop : Tea.TeaModel {
            public var regionId: String?

            public var regionName: String?

            public var requestCount: Int64?

            public var tunnelId: String?

            public var vpcId: String?

            public var vpcType: String?

            public override init() {
                super.init()
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
                if self.regionName != nil {
                    map["RegionName"] = self.regionName!
                }
                if self.requestCount != nil {
                    map["RequestCount"] = self.requestCount!
                }
                if self.tunnelId != nil {
                    map["TunnelId"] = self.tunnelId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpcType != nil {
                    map["VpcType"] = self.vpcType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RegionName"] as? String {
                    self.regionName = value
                }
                if let value = dict["RequestCount"] as? Int64 {
                    self.requestCount = value
                }
                if let value = dict["TunnelId"] as? String {
                    self.tunnelId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VpcType"] as? String {
                    self.vpcType = value
                }
            }
        }
        public var vpcRequestTop: [DescribeStatisticSummaryResponseBody.VpcRequestTops.VpcRequestTop]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vpcRequestTop != nil {
                var tmp : [Any] = []
                for k in self.vpcRequestTop! {
                    tmp.append(k.toMap())
                }
                map["VpcRequestTop"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VpcRequestTop"] as? [Any?] {
                var tmp : [DescribeStatisticSummaryResponseBody.VpcRequestTops.VpcRequestTop] = []
                for v in value {
                    if v != nil {
                        var model = DescribeStatisticSummaryResponseBody.VpcRequestTops.VpcRequestTop()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vpcRequestTop = tmp
            }
        }
    }
    public class ZoneRequestTops : Tea.TeaModel {
        public class ZoneRequestTop : Tea.TeaModel {
            public var bizType: String?

            public var requestCount: Int64?

            public var zoneName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizType != nil {
                    map["BizType"] = self.bizType!
                }
                if self.requestCount != nil {
                    map["RequestCount"] = self.requestCount!
                }
                if self.zoneName != nil {
                    map["ZoneName"] = self.zoneName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BizType"] as? String {
                    self.bizType = value
                }
                if let value = dict["RequestCount"] as? Int64 {
                    self.requestCount = value
                }
                if let value = dict["ZoneName"] as? String {
                    self.zoneName = value
                }
            }
        }
        public var zoneRequestTop: [DescribeStatisticSummaryResponseBody.ZoneRequestTops.ZoneRequestTop]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.zoneRequestTop != nil {
                var tmp : [Any] = []
                for k in self.zoneRequestTop! {
                    tmp.append(k.toMap())
                }
                map["ZoneRequestTop"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ZoneRequestTop"] as? [Any?] {
                var tmp : [DescribeStatisticSummaryResponseBody.ZoneRequestTops.ZoneRequestTop] = []
                for v in value {
                    if v != nil {
                        var model = DescribeStatisticSummaryResponseBody.ZoneRequestTops.ZoneRequestTop()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.zoneRequestTop = tmp
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int64?

    public var vpcRequestTops: DescribeStatisticSummaryResponseBody.VpcRequestTops?

    public var zoneRequestTops: DescribeStatisticSummaryResponseBody.ZoneRequestTops?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.vpcRequestTops?.validate()
        try self.zoneRequestTops?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.vpcRequestTops != nil {
            map["VpcRequestTops"] = self.vpcRequestTops?.toMap()
        }
        if self.zoneRequestTops != nil {
            map["ZoneRequestTops"] = self.zoneRequestTops?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["VpcRequestTops"] as? [String: Any?] {
            var model = DescribeStatisticSummaryResponseBody.VpcRequestTops()
            model.fromMap(value)
            self.vpcRequestTops = model
        }
        if let value = dict["ZoneRequestTops"] as? [String: Any?] {
            var model = DescribeStatisticSummaryResponseBody.ZoneRequestTops()
            model.fromMap(value)
            self.zoneRequestTops = model
        }
    }
}

public class DescribeStatisticSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStatisticSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeStatisticSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSyncEcsHostTaskRequest : Tea.TeaModel {
    public var lang: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeSyncEcsHostTaskResponseBody : Tea.TeaModel {
    public class EcsRegions : Tea.TeaModel {
        public class EcsRegion : Tea.TeaModel {
            public class RegionIds : Tea.TeaModel {
                public var regionId: [String]?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RegionId"] as? [String] {
                        self.regionId = value
                    }
                }
            }
            public var regionIds: DescribeSyncEcsHostTaskResponseBody.EcsRegions.EcsRegion.RegionIds?

            public var userId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.regionIds?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.regionIds != nil {
                    map["RegionIds"] = self.regionIds?.toMap()
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionIds"] as? [String: Any?] {
                    var model = DescribeSyncEcsHostTaskResponseBody.EcsRegions.EcsRegion.RegionIds()
                    model.fromMap(value)
                    self.regionIds = model
                }
                if let value = dict["UserId"] as? Int64 {
                    self.userId = value
                }
            }
        }
        public var ecsRegion: [DescribeSyncEcsHostTaskResponseBody.EcsRegions.EcsRegion]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ecsRegion != nil {
                var tmp : [Any] = []
                for k in self.ecsRegion! {
                    tmp.append(k.toMap())
                }
                map["EcsRegion"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EcsRegion"] as? [Any?] {
                var tmp : [DescribeSyncEcsHostTaskResponseBody.EcsRegions.EcsRegion] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSyncEcsHostTaskResponseBody.EcsRegions.EcsRegion()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ecsRegion = tmp
            }
        }
    }
    public class Regions : Tea.TeaModel {
        public var regionId: [String]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? [String] {
                self.regionId = value
            }
        }
    }
    public var ecsRegions: DescribeSyncEcsHostTaskResponseBody.EcsRegions?

    public var regions: DescribeSyncEcsHostTaskResponseBody.Regions?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ecsRegions?.validate()
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecsRegions != nil {
            map["EcsRegions"] = self.ecsRegions?.toMap()
        }
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcsRegions"] as? [String: Any?] {
            var model = DescribeSyncEcsHostTaskResponseBody.EcsRegions()
            model.fromMap(value)
            self.ecsRegions = model
        }
        if let value = dict["Regions"] as? [String: Any?] {
            var model = DescribeSyncEcsHostTaskResponseBody.Regions()
            model.fromMap(value)
            self.regions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeSyncEcsHostTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSyncEcsHostTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSyncEcsHostTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTagsRequest : Tea.TeaModel {
    public var lang: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class DescribeTagsResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var values: [String]?

        public override init() {
            super.init()
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
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tags: [DescribeTagsResponseBody.Tags]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [DescribeTagsResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = DescribeTagsResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTagsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserServiceStatusRequest : Tea.TeaModel {
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

public class DescribeUserServiceStatusResponseBody : Tea.TeaModel {
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

public class DescribeUserServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserServiceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUserServiceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserVpcAuthorizationsRequest : Tea.TeaModel {
    public var authType: String?

    public var authorizedUserId: Int64?

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
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.authorizedUserId != nil {
            map["AuthorizedUserId"] = self.authorizedUserId!
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
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["AuthorizedUserId"] as? Int64 {
            self.authorizedUserId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeUserVpcAuthorizationsResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public var authType: String?

        public var authorizedAliyunId: String?

        public var authorizedUserId: Int64?

        public var createTime: String?

        public var createTimestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authType != nil {
                map["AuthType"] = self.authType!
            }
            if self.authorizedAliyunId != nil {
                map["AuthorizedAliyunId"] = self.authorizedAliyunId!
            }
            if self.authorizedUserId != nil {
                map["AuthorizedUserId"] = self.authorizedUserId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createTimestamp != nil {
                map["CreateTimestamp"] = self.createTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthType"] as? String {
                self.authType = value
            }
            if let value = dict["AuthorizedAliyunId"] as? String {
                self.authorizedAliyunId = value
            }
            if let value = dict["AuthorizedUserId"] as? Int64 {
                self.authorizedUserId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateTimestamp"] as? Int64 {
                self.createTimestamp = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalItems: Int32?

    public var totalPages: Int32?

    public var users: [DescribeUserVpcAuthorizationsResponseBody.Users]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItems != nil {
            map["TotalItems"] = self.totalItems!
        }
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
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
        if let value = dict["TotalItems"] as? Int32 {
            self.totalItems = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [DescribeUserVpcAuthorizationsResponseBody.Users] = []
            for v in value {
                if v != nil {
                    var model = DescribeUserVpcAuthorizationsResponseBody.Users()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
    }
}

public class DescribeUserVpcAuthorizationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserVpcAuthorizationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUserVpcAuthorizationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeZoneInfoRequest : Tea.TeaModel {
    public var lang: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeZoneInfoResponseBody : Tea.TeaModel {
    public class BindEdgeDnsClusters : Tea.TeaModel {
        public class EdgeDnsCluster : Tea.TeaModel {
            public var clusterId: String?

            public var clusterName: String?

            public var clusterUserId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterName != nil {
                    map["ClusterName"] = self.clusterName!
                }
                if self.clusterUserId != nil {
                    map["ClusterUserId"] = self.clusterUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClusterId"] as? String {
                    self.clusterId = value
                }
                if let value = dict["ClusterName"] as? String {
                    self.clusterName = value
                }
                if let value = dict["ClusterUserId"] as? Int64 {
                    self.clusterUserId = value
                }
            }
        }
        public var edgeDnsCluster: [DescribeZoneInfoResponseBody.BindEdgeDnsClusters.EdgeDnsCluster]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.edgeDnsCluster != nil {
                var tmp : [Any] = []
                for k in self.edgeDnsCluster! {
                    tmp.append(k.toMap())
                }
                map["EdgeDnsCluster"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EdgeDnsCluster"] as? [Any?] {
                var tmp : [DescribeZoneInfoResponseBody.BindEdgeDnsClusters.EdgeDnsCluster] = []
                for v in value {
                    if v != nil {
                        var model = DescribeZoneInfoResponseBody.BindEdgeDnsClusters.EdgeDnsCluster()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.edgeDnsCluster = tmp
            }
        }
    }
    public class BindVpcs : Tea.TeaModel {
        public class Vpc : Tea.TeaModel {
            public var regionId: String?

            public var regionName: String?

            public var vpcId: String?

            public var vpcName: String?

            public var vpcType: String?

            public var vpcUserId: Int64?

            public override init() {
                super.init()
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
                if self.regionName != nil {
                    map["RegionName"] = self.regionName!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpcName != nil {
                    map["VpcName"] = self.vpcName!
                }
                if self.vpcType != nil {
                    map["VpcType"] = self.vpcType!
                }
                if self.vpcUserId != nil {
                    map["VpcUserId"] = self.vpcUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RegionName"] as? String {
                    self.regionName = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VpcName"] as? String {
                    self.vpcName = value
                }
                if let value = dict["VpcType"] as? String {
                    self.vpcType = value
                }
                if let value = dict["VpcUserId"] as? Int64 {
                    self.vpcUserId = value
                }
            }
        }
        public var vpc: [DescribeZoneInfoResponseBody.BindVpcs.Vpc]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vpc != nil {
                var tmp : [Any] = []
                for k in self.vpc! {
                    tmp.append(k.toMap())
                }
                map["Vpc"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Vpc"] as? [Any?] {
                var tmp : [DescribeZoneInfoResponseBody.BindVpcs.Vpc] = []
                for v in value {
                    if v != nil {
                        var model = DescribeZoneInfoResponseBody.BindVpcs.Vpc()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vpc = tmp
            }
        }
    }
    public var bindEdgeDnsClusters: DescribeZoneInfoResponseBody.BindEdgeDnsClusters?

    public var bindVpcs: DescribeZoneInfoResponseBody.BindVpcs?

    public var createTime: String?

    public var createTimestamp: Int64?

    public var creator: String?

    public var creatorType: String?

    public var dnsGroup: String?

    public var dnsGroupChanging: Bool?

    public var isPtr: Bool?

    public var proxyPattern: String?

    public var recordCount: Int32?

    public var remark: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var slaveDns: Bool?

    public var updateTime: String?

    public var updateTimestamp: Int64?

    public var zoneId: String?

    public var zoneName: String?

    public var zoneTag: String?

    public var zoneType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bindEdgeDnsClusters?.validate()
        try self.bindVpcs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindEdgeDnsClusters != nil {
            map["BindEdgeDnsClusters"] = self.bindEdgeDnsClusters?.toMap()
        }
        if self.bindVpcs != nil {
            map["BindVpcs"] = self.bindVpcs?.toMap()
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createTimestamp != nil {
            map["CreateTimestamp"] = self.createTimestamp!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.creatorType != nil {
            map["CreatorType"] = self.creatorType!
        }
        if self.dnsGroup != nil {
            map["DnsGroup"] = self.dnsGroup!
        }
        if self.dnsGroupChanging != nil {
            map["DnsGroupChanging"] = self.dnsGroupChanging!
        }
        if self.isPtr != nil {
            map["IsPtr"] = self.isPtr!
        }
        if self.proxyPattern != nil {
            map["ProxyPattern"] = self.proxyPattern!
        }
        if self.recordCount != nil {
            map["RecordCount"] = self.recordCount!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.slaveDns != nil {
            map["SlaveDns"] = self.slaveDns!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.updateTimestamp != nil {
            map["UpdateTimestamp"] = self.updateTimestamp!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        if self.zoneName != nil {
            map["ZoneName"] = self.zoneName!
        }
        if self.zoneTag != nil {
            map["ZoneTag"] = self.zoneTag!
        }
        if self.zoneType != nil {
            map["ZoneType"] = self.zoneType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindEdgeDnsClusters"] as? [String: Any?] {
            var model = DescribeZoneInfoResponseBody.BindEdgeDnsClusters()
            model.fromMap(value)
            self.bindEdgeDnsClusters = model
        }
        if let value = dict["BindVpcs"] as? [String: Any?] {
            var model = DescribeZoneInfoResponseBody.BindVpcs()
            model.fromMap(value)
            self.bindVpcs = model
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["CreatorType"] as? String {
            self.creatorType = value
        }
        if let value = dict["DnsGroup"] as? String {
            self.dnsGroup = value
        }
        if let value = dict["DnsGroupChanging"] as? Bool {
            self.dnsGroupChanging = value
        }
        if let value = dict["IsPtr"] as? Bool {
            self.isPtr = value
        }
        if let value = dict["ProxyPattern"] as? String {
            self.proxyPattern = value
        }
        if let value = dict["RecordCount"] as? Int32 {
            self.recordCount = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SlaveDns"] as? Bool {
            self.slaveDns = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["UpdateTimestamp"] as? Int64 {
            self.updateTimestamp = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
        if let value = dict["ZoneName"] as? String {
            self.zoneName = value
        }
        if let value = dict["ZoneTag"] as? String {
            self.zoneTag = value
        }
        if let value = dict["ZoneType"] as? String {
            self.zoneType = value
        }
    }
}

public class DescribeZoneInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeZoneInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeZoneInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeZoneRecordRequest : Tea.TeaModel {
    public var recordId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RecordId"] as? Int64 {
            self.recordId = value
        }
    }
}

public class DescribeZoneRecordResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var createTimestamp: Int64?

    public var line: String?

    public var priority: Int32?

    public var recordId: Int64?

    public var remark: String?

    public var requestId: String?

    public var rr: String?

    public var status: String?

    public var ttl: Int32?

    public var type: String?

    public var updateTime: String?

    public var updateTimestamp: Int64?

    public var value: String?

    public var weight: Int32?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createTimestamp != nil {
            map["CreateTimestamp"] = self.createTimestamp!
        }
        if self.line != nil {
            map["Line"] = self.line!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rr != nil {
            map["Rr"] = self.rr!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.updateTimestamp != nil {
            map["UpdateTimestamp"] = self.updateTimestamp!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.weight != nil {
            map["Weight"] = self.weight!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["Line"] as? String {
            self.line = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RecordId"] as? Int64 {
            self.recordId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rr"] as? String {
            self.rr = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Ttl"] as? Int32 {
            self.ttl = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["UpdateTimestamp"] as? Int64 {
            self.updateTimestamp = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
        if let value = dict["Weight"] as? Int32 {
            self.weight = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeZoneRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeZoneRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeZoneRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeZoneRecordsRequest : Tea.TeaModel {
    public var keyword: String?

    public var lang: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchMode: String?

    public var tag: String?

    public var userClientIp: String?

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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchMode != nil {
            map["SearchMode"] = self.searchMode!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SearchMode"] as? String {
            self.searchMode = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeZoneRecordsResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public class Record : Tea.TeaModel {
            public var createTime: String?

            public var createTimestamp: Int64?

            public var line: String?

            public var priority: Int32?

            public var recordId: Int64?

            public var remark: String?

            public var rr: String?

            public var status: String?

            public var ttl: Int32?

            public var type: String?

            public var updateTime: String?

            public var updateTimestamp: Int64?

            public var value: String?

            public var weight: Int32?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createTimestamp != nil {
                    map["CreateTimestamp"] = self.createTimestamp!
                }
                if self.line != nil {
                    map["Line"] = self.line!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.recordId != nil {
                    map["RecordId"] = self.recordId!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.rr != nil {
                    map["Rr"] = self.rr!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.ttl != nil {
                    map["Ttl"] = self.ttl!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.updateTimestamp != nil {
                    map["UpdateTimestamp"] = self.updateTimestamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["CreateTimestamp"] as? Int64 {
                    self.createTimestamp = value
                }
                if let value = dict["Line"] as? String {
                    self.line = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
                if let value = dict["RecordId"] as? Int64 {
                    self.recordId = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["Rr"] as? String {
                    self.rr = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Ttl"] as? Int32 {
                    self.ttl = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["UpdateTimestamp"] as? Int64 {
                    self.updateTimestamp = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var record: [DescribeZoneRecordsResponseBody.Records.Record]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.record != nil {
                var tmp : [Any] = []
                for k in self.record! {
                    tmp.append(k.toMap())
                }
                map["Record"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Record"] as? [Any?] {
                var tmp : [DescribeZoneRecordsResponseBody.Records.Record] = []
                for v in value {
                    if v != nil {
                        var model = DescribeZoneRecordsResponseBody.Records.Record()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.record = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var records: DescribeZoneRecordsResponseBody.Records?

    public var requestId: String?

    public var totalItems: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.records?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.records != nil {
            map["Records"] = self.records?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItems != nil {
            map["TotalItems"] = self.totalItems!
        }
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
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
        if let value = dict["Records"] as? [String: Any?] {
            var model = DescribeZoneRecordsResponseBody.Records()
            model.fromMap(value)
            self.records = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItems"] as? Int32 {
            self.totalItems = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class DescribeZoneRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeZoneRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeZoneRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeZoneVpcTreeRequest : Tea.TeaModel {
    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class DescribeZoneVpcTreeResponseBody : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public class Zone : Tea.TeaModel {
            public class Vpcs : Tea.TeaModel {
                public class Vpc : Tea.TeaModel {
                    public var regionId: String?

                    public var regionName: String?

                    public var vpcId: String?

                    public var vpcName: String?

                    public var vpcType: String?

                    public override init() {
                        super.init()
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
                        if self.regionName != nil {
                            map["RegionName"] = self.regionName!
                        }
                        if self.vpcId != nil {
                            map["VpcId"] = self.vpcId!
                        }
                        if self.vpcName != nil {
                            map["VpcName"] = self.vpcName!
                        }
                        if self.vpcType != nil {
                            map["VpcType"] = self.vpcType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["RegionId"] as? String {
                            self.regionId = value
                        }
                        if let value = dict["RegionName"] as? String {
                            self.regionName = value
                        }
                        if let value = dict["VpcId"] as? String {
                            self.vpcId = value
                        }
                        if let value = dict["VpcName"] as? String {
                            self.vpcName = value
                        }
                        if let value = dict["VpcType"] as? String {
                            self.vpcType = value
                        }
                    }
                }
                public var vpc: [DescribeZoneVpcTreeResponseBody.Zones.Zone.Vpcs.Vpc]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.vpc != nil {
                        var tmp : [Any] = []
                        for k in self.vpc! {
                            tmp.append(k.toMap())
                        }
                        map["Vpc"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Vpc"] as? [Any?] {
                        var tmp : [DescribeZoneVpcTreeResponseBody.Zones.Zone.Vpcs.Vpc] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeZoneVpcTreeResponseBody.Zones.Zone.Vpcs.Vpc()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.vpc = tmp
                    }
                }
            }
            public var createTime: String?

            public var createTimestamp: Int64?

            public var creator: String?

            public var creatorType: String?

            public var dnsGroup: String?

            public var dnsGroupChanging: Bool?

            public var isPtr: Bool?

            public var recordCount: Int32?

            public var remark: String?

            public var updateTime: String?

            public var updateTimestamp: Int64?

            public var vpcs: DescribeZoneVpcTreeResponseBody.Zones.Zone.Vpcs?

            public var zoneId: String?

            public var zoneName: String?

            public var zoneTag: String?

            public var zoneType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.vpcs?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createTimestamp != nil {
                    map["CreateTimestamp"] = self.createTimestamp!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.creatorType != nil {
                    map["CreatorType"] = self.creatorType!
                }
                if self.dnsGroup != nil {
                    map["DnsGroup"] = self.dnsGroup!
                }
                if self.dnsGroupChanging != nil {
                    map["DnsGroupChanging"] = self.dnsGroupChanging!
                }
                if self.isPtr != nil {
                    map["IsPtr"] = self.isPtr!
                }
                if self.recordCount != nil {
                    map["RecordCount"] = self.recordCount!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.updateTimestamp != nil {
                    map["UpdateTimestamp"] = self.updateTimestamp!
                }
                if self.vpcs != nil {
                    map["Vpcs"] = self.vpcs?.toMap()
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                if self.zoneName != nil {
                    map["ZoneName"] = self.zoneName!
                }
                if self.zoneTag != nil {
                    map["ZoneTag"] = self.zoneTag!
                }
                if self.zoneType != nil {
                    map["ZoneType"] = self.zoneType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["CreateTimestamp"] as? Int64 {
                    self.createTimestamp = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["CreatorType"] as? String {
                    self.creatorType = value
                }
                if let value = dict["DnsGroup"] as? String {
                    self.dnsGroup = value
                }
                if let value = dict["DnsGroupChanging"] as? Bool {
                    self.dnsGroupChanging = value
                }
                if let value = dict["IsPtr"] as? Bool {
                    self.isPtr = value
                }
                if let value = dict["RecordCount"] as? Int32 {
                    self.recordCount = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["UpdateTimestamp"] as? Int64 {
                    self.updateTimestamp = value
                }
                if let value = dict["Vpcs"] as? [String: Any?] {
                    var model = DescribeZoneVpcTreeResponseBody.Zones.Zone.Vpcs()
                    model.fromMap(value)
                    self.vpcs = model
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
                if let value = dict["ZoneName"] as? String {
                    self.zoneName = value
                }
                if let value = dict["ZoneTag"] as? String {
                    self.zoneTag = value
                }
                if let value = dict["ZoneType"] as? String {
                    self.zoneType = value
                }
            }
        }
        public var zone: [DescribeZoneVpcTreeResponseBody.Zones.Zone]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.zone != nil {
                var tmp : [Any] = []
                for k in self.zone! {
                    tmp.append(k.toMap())
                }
                map["Zone"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Zone"] as? [Any?] {
                var tmp : [DescribeZoneVpcTreeResponseBody.Zones.Zone] = []
                for v in value {
                    if v != nil {
                        var model = DescribeZoneVpcTreeResponseBody.Zones.Zone()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.zone = tmp
            }
        }
    }
    public var requestId: String?

    public var zones: DescribeZoneVpcTreeResponseBody.Zones?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.zones?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.zones != nil {
            map["Zones"] = self.zones?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Zones"] as? [String: Any?] {
            var model = DescribeZoneVpcTreeResponseBody.Zones()
            model.fromMap(value)
            self.zones = model
        }
    }
}

public class DescribeZoneVpcTreeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeZoneVpcTreeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeZoneVpcTreeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeZonesRequest : Tea.TeaModel {
    public class ResourceTag : Tea.TeaModel {
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
    public var keyword: String?

    public var lang: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryRegionId: String?

    public var queryVpcId: String?

    public var resourceGroupId: String?

    public var resourceTag: [DescribeZonesRequest.ResourceTag]?

    public var searchMode: String?

    public var zoneTag: [String]?

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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryRegionId != nil {
            map["QueryRegionId"] = self.queryRegionId!
        }
        if self.queryVpcId != nil {
            map["QueryVpcId"] = self.queryVpcId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceTag != nil {
            var tmp : [Any] = []
            for k in self.resourceTag! {
                tmp.append(k.toMap())
            }
            map["ResourceTag"] = tmp
        }
        if self.searchMode != nil {
            map["SearchMode"] = self.searchMode!
        }
        if self.zoneTag != nil {
            map["ZoneTag"] = self.zoneTag!
        }
        if self.zoneType != nil {
            map["ZoneType"] = self.zoneType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryRegionId"] as? String {
            self.queryRegionId = value
        }
        if let value = dict["QueryVpcId"] as? String {
            self.queryVpcId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceTag"] as? [Any?] {
            var tmp : [DescribeZonesRequest.ResourceTag] = []
            for v in value {
                if v != nil {
                    var model = DescribeZonesRequest.ResourceTag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceTag = tmp
        }
        if let value = dict["SearchMode"] as? String {
            self.searchMode = value
        }
        if let value = dict["ZoneTag"] as? [String] {
            self.zoneTag = value
        }
        if let value = dict["ZoneType"] as? String {
            self.zoneType = value
        }
    }
}

public class DescribeZonesResponseBody : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public class Zone : Tea.TeaModel {
            public class ResourceTags : Tea.TeaModel {
                public class ResourceTag : Tea.TeaModel {
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
                public var resourceTag: [DescribeZonesResponseBody.Zones.Zone.ResourceTags.ResourceTag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.resourceTag != nil {
                        var tmp : [Any] = []
                        for k in self.resourceTag! {
                            tmp.append(k.toMap())
                        }
                        map["ResourceTag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ResourceTag"] as? [Any?] {
                        var tmp : [DescribeZonesResponseBody.Zones.Zone.ResourceTags.ResourceTag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeZonesResponseBody.Zones.Zone.ResourceTags.ResourceTag()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.resourceTag = tmp
                    }
                }
            }
            public var createTime: String?

            public var createTimestamp: Int64?

            public var creator: String?

            public var creatorSubType: String?

            public var dnsGroup: String?

            public var dnsGroupChanging: Bool?

            public var isPtr: Bool?

            public var proxyPattern: String?

            public var recordCount: Int32?

            public var remark: String?

            public var resourceGroupId: String?

            public var resourceTags: DescribeZonesResponseBody.Zones.Zone.ResourceTags?

            public var slaveDnsStatus: String?

            public var updateTime: String?

            public var updateTimestamp: Int64?

            public var zoneId: String?

            public var zoneName: String?

            public var zoneTag: String?

            public var zoneType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.resourceTags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createTimestamp != nil {
                    map["CreateTimestamp"] = self.createTimestamp!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.creatorSubType != nil {
                    map["CreatorSubType"] = self.creatorSubType!
                }
                if self.dnsGroup != nil {
                    map["DnsGroup"] = self.dnsGroup!
                }
                if self.dnsGroupChanging != nil {
                    map["DnsGroupChanging"] = self.dnsGroupChanging!
                }
                if self.isPtr != nil {
                    map["IsPtr"] = self.isPtr!
                }
                if self.proxyPattern != nil {
                    map["ProxyPattern"] = self.proxyPattern!
                }
                if self.recordCount != nil {
                    map["RecordCount"] = self.recordCount!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.resourceTags != nil {
                    map["ResourceTags"] = self.resourceTags?.toMap()
                }
                if self.slaveDnsStatus != nil {
                    map["SlaveDnsStatus"] = self.slaveDnsStatus!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.updateTimestamp != nil {
                    map["UpdateTimestamp"] = self.updateTimestamp!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                if self.zoneName != nil {
                    map["ZoneName"] = self.zoneName!
                }
                if self.zoneTag != nil {
                    map["ZoneTag"] = self.zoneTag!
                }
                if self.zoneType != nil {
                    map["ZoneType"] = self.zoneType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["CreateTimestamp"] as? Int64 {
                    self.createTimestamp = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["CreatorSubType"] as? String {
                    self.creatorSubType = value
                }
                if let value = dict["DnsGroup"] as? String {
                    self.dnsGroup = value
                }
                if let value = dict["DnsGroupChanging"] as? Bool {
                    self.dnsGroupChanging = value
                }
                if let value = dict["IsPtr"] as? Bool {
                    self.isPtr = value
                }
                if let value = dict["ProxyPattern"] as? String {
                    self.proxyPattern = value
                }
                if let value = dict["RecordCount"] as? Int32 {
                    self.recordCount = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["ResourceTags"] as? [String: Any?] {
                    var model = DescribeZonesResponseBody.Zones.Zone.ResourceTags()
                    model.fromMap(value)
                    self.resourceTags = model
                }
                if let value = dict["SlaveDnsStatus"] as? String {
                    self.slaveDnsStatus = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["UpdateTimestamp"] as? Int64 {
                    self.updateTimestamp = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
                if let value = dict["ZoneName"] as? String {
                    self.zoneName = value
                }
                if let value = dict["ZoneTag"] as? String {
                    self.zoneTag = value
                }
                if let value = dict["ZoneType"] as? String {
                    self.zoneType = value
                }
            }
        }
        public var zone: [DescribeZonesResponseBody.Zones.Zone]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.zone != nil {
                var tmp : [Any] = []
                for k in self.zone! {
                    tmp.append(k.toMap())
                }
                map["Zone"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Zone"] as? [Any?] {
                var tmp : [DescribeZonesResponseBody.Zones.Zone] = []
                for v in value {
                    if v != nil {
                        var model = DescribeZonesResponseBody.Zones.Zone()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.zone = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalItems: Int32?

    public var totalPages: Int32?

    public var zones: DescribeZonesResponseBody.Zones?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.zones?.validate()
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
        if self.totalItems != nil {
            map["TotalItems"] = self.totalItems!
        }
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
        }
        if self.zones != nil {
            map["Zones"] = self.zones?.toMap()
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
        if let value = dict["TotalItems"] as? Int32 {
            self.totalItems = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
        if let value = dict["Zones"] as? [String: Any?] {
            var model = DescribeZonesResponseBody.Zones()
            model.fromMap(value)
            self.zones = model
        }
    }
}

public class DescribeZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeZonesResponseBody()
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
    public var lang: String?

    public var nextToken: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var size: Int32?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
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
        if self.size != nil {
            map["Size"] = self.size!
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
        if let value = dict["Lang"] as? String {
            self.lang = value
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
        if let value = dict["Size"] as? Int32 {
            self.size = value
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

public class MoveResourceGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var lang: String?

    public var newResourceGroupId: String?

    public var resourceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
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

public class SearchCustomLinesRequest : Tea.TeaModel {
    public var createTimestampEnd: Int64?

    public var createTimestampStart: Int64?

    public var creator: [String]?

    public var ipv4: String?

    public var lang: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var updateTimestampEnd: Int64?

    public var updateTimestampStart: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimestampEnd != nil {
            map["CreateTimestampEnd"] = self.createTimestampEnd!
        }
        if self.createTimestampStart != nil {
            map["CreateTimestampStart"] = self.createTimestampStart!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.ipv4 != nil {
            map["Ipv4"] = self.ipv4!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.updateTimestampEnd != nil {
            map["UpdateTimestampEnd"] = self.updateTimestampEnd!
        }
        if self.updateTimestampStart != nil {
            map["UpdateTimestampStart"] = self.updateTimestampStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTimestampEnd"] as? Int64 {
            self.createTimestampEnd = value
        }
        if let value = dict["CreateTimestampStart"] as? Int64 {
            self.createTimestampStart = value
        }
        if let value = dict["Creator"] as? [String] {
            self.creator = value
        }
        if let value = dict["Ipv4"] as? String {
            self.ipv4 = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UpdateTimestampEnd"] as? Int64 {
            self.updateTimestampEnd = value
        }
        if let value = dict["UpdateTimestampStart"] as? Int64 {
            self.updateTimestampStart = value
        }
    }
}

public class SearchCustomLinesResponseBody : Tea.TeaModel {
    public class CustomLines : Tea.TeaModel {
        public class CustomLine : Tea.TeaModel {
            public class Ipv4s : Tea.TeaModel {
                public var ipv4: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ipv4 != nil {
                        map["Ipv4"] = self.ipv4!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Ipv4"] as? [String] {
                        self.ipv4 = value
                    }
                }
            }
            public var createTime: String?

            public var createTimestamp: Int64?

            public var creator: String?

            public var creatorSubType: String?

            public var creatorType: String?

            public var dnsCategory: String?

            public var ipv4s: SearchCustomLinesResponseBody.CustomLines.CustomLine.Ipv4s?

            public var lineId: String?

            public var name: String?

            public var updateTime: String?

            public var updateTimestamp: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.ipv4s?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createTimestamp != nil {
                    map["CreateTimestamp"] = self.createTimestamp!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.creatorSubType != nil {
                    map["CreatorSubType"] = self.creatorSubType!
                }
                if self.creatorType != nil {
                    map["CreatorType"] = self.creatorType!
                }
                if self.dnsCategory != nil {
                    map["DnsCategory"] = self.dnsCategory!
                }
                if self.ipv4s != nil {
                    map["Ipv4s"] = self.ipv4s?.toMap()
                }
                if self.lineId != nil {
                    map["LineId"] = self.lineId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.updateTimestamp != nil {
                    map["UpdateTimestamp"] = self.updateTimestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["CreateTimestamp"] as? Int64 {
                    self.createTimestamp = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["CreatorSubType"] as? String {
                    self.creatorSubType = value
                }
                if let value = dict["CreatorType"] as? String {
                    self.creatorType = value
                }
                if let value = dict["DnsCategory"] as? String {
                    self.dnsCategory = value
                }
                if let value = dict["Ipv4s"] as? [String: Any?] {
                    var model = SearchCustomLinesResponseBody.CustomLines.CustomLine.Ipv4s()
                    model.fromMap(value)
                    self.ipv4s = model
                }
                if let value = dict["LineId"] as? String {
                    self.lineId = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["UpdateTimestamp"] as? Int64 {
                    self.updateTimestamp = value
                }
            }
        }
        public var customLine: [SearchCustomLinesResponseBody.CustomLines.CustomLine]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customLine != nil {
                var tmp : [Any] = []
                for k in self.customLine! {
                    tmp.append(k.toMap())
                }
                map["CustomLine"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomLine"] as? [Any?] {
                var tmp : [SearchCustomLinesResponseBody.CustomLines.CustomLine] = []
                for v in value {
                    if v != nil {
                        var model = SearchCustomLinesResponseBody.CustomLines.CustomLine()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.customLine = tmp
            }
        }
    }
    public var customLines: SearchCustomLinesResponseBody.CustomLines?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalItems: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.customLines?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customLines != nil {
            map["CustomLines"] = self.customLines?.toMap()
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
        if self.totalItems != nil {
            map["TotalItems"] = self.totalItems!
        }
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomLines"] as? [String: Any?] {
            var model = SearchCustomLinesResponseBody.CustomLines()
            model.fromMap(value)
            self.customLines = model
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
        if let value = dict["TotalItems"] as? Int32 {
            self.totalItems = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class SearchCustomLinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchCustomLinesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SearchCustomLinesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetProxyPatternRequest : Tea.TeaModel {
    public var clientToken: String?

    public var lang: String?

    public var proxyPattern: String?

    public var userClientIp: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.proxyPattern != nil {
            map["ProxyPattern"] = self.proxyPattern!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProxyPattern"] as? String {
            self.proxyPattern = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class SetProxyPatternResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class SetProxyPatternResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetProxyPatternResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetProxyPatternResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetZoneRecordStatusRequest : Tea.TeaModel {
    public var clientToken: String?

    public var lang: String?

    public var recordId: Int64?

    public var status: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RecordId"] as? Int64 {
            self.recordId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SetZoneRecordStatusResponseBody : Tea.TeaModel {
    public var recordId: Int64?

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
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
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
        if let value = dict["RecordId"] as? Int64 {
            self.recordId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class SetZoneRecordStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetZoneRecordStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetZoneRecordStatusResponseBody()
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
    public var lang: String?

    public var overWrite: Bool?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.overWrite != nil {
            map["OverWrite"] = self.overWrite!
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
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OverWrite"] as? Bool {
            self.overWrite = value
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

    public var lang: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
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
        if let value = dict["Lang"] as? String {
            self.lang = value
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

public class UpdateCustomLineRequest : Tea.TeaModel {
    public var dnsCategory: String?

    public var ipv4s: [String]?

    public var lang: String?

    public var lineId: String?

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
        if self.dnsCategory != nil {
            map["DnsCategory"] = self.dnsCategory!
        }
        if self.ipv4s != nil {
            map["Ipv4s"] = self.ipv4s!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.lineId != nil {
            map["LineId"] = self.lineId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DnsCategory"] as? String {
            self.dnsCategory = value
        }
        if let value = dict["Ipv4s"] as? [String] {
            self.ipv4s = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LineId"] as? String {
            self.lineId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateCustomLineResponseBody : Tea.TeaModel {
    public var lineId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lineId != nil {
            map["LineId"] = self.lineId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LineId"] as? String {
            self.lineId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateCustomLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomLineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateCustomLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRecordRemarkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var lang: String?

    public var recordId: Int64?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RecordId"] as? Int64 {
            self.recordId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
    }
}

public class UpdateRecordRemarkResponseBody : Tea.TeaModel {
    public var recordId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RecordId"] as? Int64 {
            self.recordId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateRecordRemarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRecordRemarkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateRecordRemarkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResolverEndpointRequest : Tea.TeaModel {
    public class IpConfig : Tea.TeaModel {
        public var azId: String?

        public var cidrBlock: String?

        public var ip: String?

        public var vSwitchId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.azId != nil {
                map["AzId"] = self.azId!
            }
            if self.cidrBlock != nil {
                map["CidrBlock"] = self.cidrBlock!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AzId"] as? String {
                self.azId = value
            }
            if let value = dict["CidrBlock"] as? String {
                self.cidrBlock = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
        }
    }
    public var endpointId: String?

    public var ipConfig: [UpdateResolverEndpointRequest.IpConfig]?

    public var lang: String?

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
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.ipConfig != nil {
            var tmp : [Any] = []
            for k in self.ipConfig! {
                tmp.append(k.toMap())
            }
            map["IpConfig"] = tmp
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["IpConfig"] as? [Any?] {
            var tmp : [UpdateResolverEndpointRequest.IpConfig] = []
            for v in value {
                if v != nil {
                    var model = UpdateResolverEndpointRequest.IpConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipConfig = tmp
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateResolverEndpointResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateResolverEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResolverEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateResolverEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResolverRuleRequest : Tea.TeaModel {
    public class ForwardIp : Tea.TeaModel {
        public var ip: String?

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
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.port != nil {
                map["Port"] = self.port!
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
        }
    }
    public class PriorityForwardConfigs : Tea.TeaModel {
        public var alidnsServiceAddresses: [String]?

        public var customAddresses: [String]?

        public var enableStatus: String?

        public var priority: Int32?

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
            if self.alidnsServiceAddresses != nil {
                map["AlidnsServiceAddresses"] = self.alidnsServiceAddresses!
            }
            if self.customAddresses != nil {
                map["CustomAddresses"] = self.customAddresses!
            }
            if self.enableStatus != nil {
                map["EnableStatus"] = self.enableStatus!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlidnsServiceAddresses"] as? [String] {
                self.alidnsServiceAddresses = value
            }
            if let value = dict["CustomAddresses"] as? [String] {
                self.customAddresses = value
            }
            if let value = dict["EnableStatus"] as? String {
                self.enableStatus = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public var endpointId: String?

    public var forwardIp: [UpdateResolverRuleRequest.ForwardIp]?

    public var lang: String?

    public var name: String?

    public var priorityForwardConfigs: [UpdateResolverRuleRequest.PriorityForwardConfigs]?

    public var ruleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.forwardIp != nil {
            var tmp : [Any] = []
            for k in self.forwardIp! {
                tmp.append(k.toMap())
            }
            map["ForwardIp"] = tmp
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.priorityForwardConfigs != nil {
            var tmp : [Any] = []
            for k in self.priorityForwardConfigs! {
                tmp.append(k.toMap())
            }
            map["PriorityForwardConfigs"] = tmp
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["ForwardIp"] as? [Any?] {
            var tmp : [UpdateResolverRuleRequest.ForwardIp] = []
            for v in value {
                if v != nil {
                    var model = UpdateResolverRuleRequest.ForwardIp()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.forwardIp = tmp
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PriorityForwardConfigs"] as? [Any?] {
            var tmp : [UpdateResolverRuleRequest.PriorityForwardConfigs] = []
            for v in value {
                if v != nil {
                    var model = UpdateResolverRuleRequest.PriorityForwardConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.priorityForwardConfigs = tmp
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class UpdateResolverRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateResolverRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResolverRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateResolverRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSyncEcsHostTaskRequest : Tea.TeaModel {
    public class Region : Tea.TeaModel {
        public var regionId: String?

        public var userId: Int64?

        public override init() {
            super.init()
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
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var lang: String?

    public var region: [UpdateSyncEcsHostTaskRequest.Region]?

    public var status: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.region != nil {
            var tmp : [Any] = []
            for k in self.region! {
                tmp.append(k.toMap())
            }
            map["Region"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Region"] as? [Any?] {
            var tmp : [UpdateSyncEcsHostTaskRequest.Region] = []
            for v in value {
                if v != nil {
                    var model = UpdateSyncEcsHostTaskRequest.Region()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.region = tmp
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class UpdateSyncEcsHostTaskResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateSyncEcsHostTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSyncEcsHostTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSyncEcsHostTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateZoneRecordRequest : Tea.TeaModel {
    public var clientToken: String?

    public var lang: String?

    public var line: String?

    public var priority: Int32?

    public var recordId: Int64?

    public var rr: String?

    public var ttl: Int32?

    public var type: String?

    public var userClientIp: String?

    public var value: String?

    public var weight: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.line != nil {
            map["Line"] = self.line!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.rr != nil {
            map["Rr"] = self.rr!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.weight != nil {
            map["Weight"] = self.weight!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Line"] as? String {
            self.line = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RecordId"] as? Int64 {
            self.recordId = value
        }
        if let value = dict["Rr"] as? String {
            self.rr = value
        }
        if let value = dict["Ttl"] as? Int32 {
            self.ttl = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
        if let value = dict["Weight"] as? Int32 {
            self.weight = value
        }
    }
}

public class UpdateZoneRecordResponseBody : Tea.TeaModel {
    public var recordId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RecordId"] as? Int64 {
            self.recordId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateZoneRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateZoneRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateZoneRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateZoneRemarkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var lang: String?

    public var remark: String?

    public var userClientIp: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class UpdateZoneRemarkResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class UpdateZoneRemarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateZoneRemarkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateZoneRemarkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
