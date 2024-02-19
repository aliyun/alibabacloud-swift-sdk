import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AzId") && dict["AzId"] != nil {
                self.azId = dict["AzId"] as! String
            }
            if dict.keys.contains("CidrBlock") && dict["CidrBlock"] != nil {
                self.cidrBlock = dict["CidrBlock"] as! String
            }
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpConfig") && dict["IpConfig"] != nil {
            var tmp : [AddResolverEndpointRequest.IpConfig] = []
            for v in dict["IpConfig"] as! [Any] {
                var model = AddResolverEndpointRequest.IpConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ipConfig = tmp
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SecurityGroupId") && dict["SecurityGroupId"] != nil {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VpcRegionId") && dict["VpcRegionId"] != nil {
            self.vpcRegionId = dict["VpcRegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddResolverEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddResolverRuleRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int32
            }
        }
    }
    public var endpointId: String?

    public var forwardIp: [AddResolverRuleRequest.ForwardIp]?

    public var lang: String?

    public var name: String?

    public var type: String?

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
        if self.zoneName != nil {
            map["ZoneName"] = self.zoneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("ForwardIp") && dict["ForwardIp"] != nil {
            var tmp : [AddResolverRuleRequest.ForwardIp] = []
            for v in dict["ForwardIp"] as! [Any] {
                var model = AddResolverRuleRequest.ForwardIp()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.forwardIp = tmp
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("ZoneName") && dict["ZoneName"] != nil {
            self.zoneName = dict["ZoneName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddResolverRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthChannel") && dict["AuthChannel"] != nil {
            self.authChannel = dict["AuthChannel"] as! String
        }
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("AuthorizedUserId") && dict["AuthorizedUserId"] != nil {
            self.authorizedUserId = dict["AuthorizedUserId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddUserVpcAuthorizationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DnsGroup") && dict["DnsGroup"] != nil {
            self.dnsGroup = dict["DnsGroup"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ProxyPattern") && dict["ProxyPattern"] != nil {
            self.proxyPattern = dict["ProxyPattern"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ZoneName") && dict["ZoneName"] != nil {
            self.zoneName = dict["ZoneName"] as! String
        }
        if dict.keys.contains("ZoneTag") && dict["ZoneTag"] != nil {
            self.zoneTag = dict["ZoneTag"] as! String
        }
        if dict.keys.contains("ZoneType") && dict["ZoneType"] != nil {
            self.zoneType = dict["ZoneType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
        if dict.keys.contains("ZoneName") && dict["ZoneName"] != nil {
            self.zoneName = dict["ZoneName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddZoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Line") && dict["Line"] != nil {
            self.line = dict["Line"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("Rr") && dict["Rr"] != nil {
            self.rr = dict["Rr"] as! String
        }
        if dict.keys.contains("Ttl") && dict["Ttl"] != nil {
            self.ttl = dict["Ttl"] as! Int32
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
        if dict.keys.contains("Weight") && dict["Weight"] != nil {
            self.weight = dict["Weight"] as! Int32
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddZoneRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcType") && dict["VpcType"] != nil {
                self.vpcType = dict["VpcType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("Vpc") && dict["Vpc"] != nil {
            var tmp : [BindResolverRuleVpcRequest.Vpc] = []
            for v in dict["Vpc"] as! [Any] {
                var model = BindResolverRuleVpcRequest.Vpc()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BindResolverRuleVpcResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcType") && dict["VpcType"] != nil {
                self.vpcType = dict["VpcType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("Vpcs") && dict["Vpcs"] != nil {
            var tmp : [BindZoneVpcRequest.Vpcs] = []
            for v in dict["Vpcs"] as! [Any] {
                var model = BindZoneVpcRequest.Vpcs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.vpcs = tmp
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BindZoneVpcResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("ZoneName") && dict["ZoneName"] != nil {
            self.zoneName = dict["ZoneName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Check") && dict["Check"] != nil {
            self.check = dict["Check"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckZoneNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteResolverEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteResolverRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("AuthorizedUserId") && dict["AuthorizedUserId"] != nil {
            self.authorizedUserId = dict["AuthorizedUserId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteUserVpcAuthorizationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteZoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteZoneRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! Int64
        }
        if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("CreatorId") && dict["CreatorId"] != nil {
                    self.creatorId = dict["CreatorId"] as! String
                }
                if dict.keys.contains("CreatorSubType") && dict["CreatorSubType"] != nil {
                    self.creatorSubType = dict["CreatorSubType"] as! String
                }
                if dict.keys.contains("CreatorType") && dict["CreatorType"] != nil {
                    self.creatorType = dict["CreatorType"] as! String
                }
                if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
                    self.entityId = dict["EntityId"] as! String
                }
                if dict.keys.contains("EntityName") && dict["EntityName"] != nil {
                    self.entityName = dict["EntityName"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("OperAction") && dict["OperAction"] != nil {
                    self.operAction = dict["OperAction"] as! String
                }
                if dict.keys.contains("OperIp") && dict["OperIp"] != nil {
                    self.operIp = dict["OperIp"] as! String
                }
                if dict.keys.contains("OperObject") && dict["OperObject"] != nil {
                    self.operObject = dict["OperObject"] as! String
                }
                if dict.keys.contains("OperTime") && dict["OperTime"] != nil {
                    self.operTime = dict["OperTime"] as! String
                }
                if dict.keys.contains("OperTimestamp") && dict["OperTimestamp"] != nil {
                    self.operTimestamp = dict["OperTimestamp"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeLog") && dict["ChangeLog"] != nil {
                var tmp : [DescribeChangeLogsResponseBody.ChangeLogs.ChangeLog] = []
                for v in dict["ChangeLog"] as! [Any] {
                    var model = DescribeChangeLogsResponseBody.ChangeLogs.ChangeLog()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeLogs") && dict["ChangeLogs"] != nil {
            var model = DescribeChangeLogsResponseBody.ChangeLogs()
            model.fromMap(dict["ChangeLogs"] as! [String: Any])
            self.changeLogs = model
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
        if dict.keys.contains("TotalItems") && dict["TotalItems"] != nil {
            self.totalItems = dict["TotalItems"] as! Int32
        }
        if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
            self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeChangeLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("AuthorizedUserId") && dict["AuthorizedUserId"] != nil {
            self.authorizedUserId = dict["AuthorizedUserId"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("VpcType") && dict["VpcType"] != nil {
            self.vpcType = dict["VpcType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionEndpoint") && dict["RegionEndpoint"] != nil {
                    self.regionEndpoint = dict["RegionEndpoint"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
                    self.regionName = dict["RegionName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") && dict["Region"] != nil {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RequestCount") && dict["RequestCount"] != nil {
                    self.requestCount = dict["RequestCount"] as! Int64
                }
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                    self.timestamp = dict["Timestamp"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ZoneRequestTop") && dict["ZoneRequestTop"] != nil {
                var tmp : [DescribeRequestGraphResponseBody.RequestDetails.ZoneRequestTop] = []
                for v in dict["ZoneRequestTop"] as! [Any] {
                    var model = DescribeRequestGraphResponseBody.RequestDetails.ZoneRequestTop()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestDetails") && dict["RequestDetails"] != nil {
            var model = DescribeRequestGraphResponseBody.RequestDetails()
            model.fromMap(dict["RequestDetails"] as! [String: Any])
            self.requestDetails = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRequestGraphResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AzId") && dict["AzId"] != nil {
            self.azId = dict["AzId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ResolverRegionId") && dict["ResolverRegionId"] != nil {
            self.resolverRegionId = dict["ResolverRegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AzId") && dict["AzId"] != nil {
                self.azId = dict["AzId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableZones") && dict["AvailableZones"] != nil {
            var tmp : [DescribeResolverAvailableZonesResponseBody.AvailableZones] = []
            for v in dict["AvailableZones"] as! [Any] {
                var model = DescribeResolverAvailableZonesResponseBody.AvailableZones()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.availableZones = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeResolverAvailableZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AzId") && dict["AzId"] != nil {
                self.azId = dict["AzId"] as! String
            }
            if dict.keys.contains("CidrBlock") && dict["CidrBlock"] != nil {
                self.cidrBlock = dict["CidrBlock"] as! String
            }
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateTimestamp") && dict["CreateTimestamp"] != nil {
            self.createTimestamp = dict["CreateTimestamp"] as! Int64
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("IpConfigs") && dict["IpConfigs"] != nil {
            var tmp : [DescribeResolverEndpointResponseBody.IpConfigs] = []
            for v in dict["IpConfigs"] as! [Any] {
                var model = DescribeResolverEndpointResponseBody.IpConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ipConfigs = tmp
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityGroupId") && dict["SecurityGroupId"] != nil {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("UpdateTimestamp") && dict["UpdateTimestamp"] != nil {
            self.updateTimestamp = dict["UpdateTimestamp"] as! Int64
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
            self.vpcName = dict["VpcName"] as! String
        }
        if dict.keys.contains("VpcRegionId") && dict["VpcRegionId"] != nil {
            self.vpcRegionId = dict["VpcRegionId"] as! String
        }
        if dict.keys.contains("VpcRegionName") && dict["VpcRegionName"] != nil {
            self.vpcRegionName = dict["VpcRegionName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeResolverEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AzId") && dict["AzId"] != nil {
                    self.azId = dict["AzId"] as! String
                }
                if dict.keys.contains("CidrBlock") && dict["CidrBlock"] != nil {
                    self.cidrBlock = dict["CidrBlock"] as! String
                }
                if dict.keys.contains("Ip") && dict["Ip"] != nil {
                    self.ip = dict["Ip"] as! String
                }
                if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                    self.vSwitchId = dict["VSwitchId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateTimestamp") && dict["CreateTimestamp"] != nil {
                self.createTimestamp = dict["CreateTimestamp"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("IpConfigs") && dict["IpConfigs"] != nil {
                var tmp : [DescribeResolverEndpointsResponseBody.Endpoints.IpConfigs] = []
                for v in dict["IpConfigs"] as! [Any] {
                    var model = DescribeResolverEndpointsResponseBody.Endpoints.IpConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ipConfigs = tmp
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SecurityGroupId") && dict["SecurityGroupId"] != nil {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateTimestamp") && dict["UpdateTimestamp"] != nil {
                self.updateTimestamp = dict["UpdateTimestamp"] as! Int64
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
                self.vpcName = dict["VpcName"] as! String
            }
            if dict.keys.contains("VpcRegionId") && dict["VpcRegionId"] != nil {
                self.vpcRegionId = dict["VpcRegionId"] as! String
            }
            if dict.keys.contains("VpcRegionName") && dict["VpcRegionName"] != nil {
                self.vpcRegionName = dict["VpcRegionName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Endpoints") && dict["Endpoints"] != nil {
            var tmp : [DescribeResolverEndpointsResponseBody.Endpoints] = []
            for v in dict["Endpoints"] as! [Any] {
                var model = DescribeResolverEndpointsResponseBody.Endpoints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.endpoints = tmp
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
        if dict.keys.contains("TotalItems") && dict["TotalItems"] != nil {
            self.totalItems = dict["TotalItems"] as! Int32
        }
        if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
            self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeResolverEndpointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
    }
}

public class DescribeResolverRuleResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
                self.regionName = dict["RegionName"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
                self.vpcName = dict["VpcName"] as! String
            }
            if dict.keys.contains("VpcType") && dict["VpcType"] != nil {
                self.vpcType = dict["VpcType"] as! String
            }
            if dict.keys.contains("VpcUserId") && dict["VpcUserId"] != nil {
                self.vpcUserId = dict["VpcUserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int32
            }
        }
    }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BindVpcs") && dict["BindVpcs"] != nil {
            var tmp : [DescribeResolverRuleResponseBody.BindVpcs] = []
            for v in dict["BindVpcs"] as! [Any] {
                var model = DescribeResolverRuleResponseBody.BindVpcs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.bindVpcs = tmp
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateTimestamp") && dict["CreateTimestamp"] != nil {
            self.createTimestamp = dict["CreateTimestamp"] as! Int64
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("EndpointName") && dict["EndpointName"] != nil {
            self.endpointName = dict["EndpointName"] as! String
        }
        if dict.keys.contains("ForwardIps") && dict["ForwardIps"] != nil {
            var tmp : [DescribeResolverRuleResponseBody.ForwardIps] = []
            for v in dict["ForwardIps"] as! [Any] {
                var model = DescribeResolverRuleResponseBody.ForwardIps()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.forwardIps = tmp
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("UpdateTimestamp") && dict["UpdateTimestamp"] != nil {
            self.updateTimestamp = dict["UpdateTimestamp"] as! Int64
        }
        if dict.keys.contains("ZoneName") && dict["ZoneName"] != nil {
            self.zoneName = dict["ZoneName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeResolverRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NeedDetailAttributes") && dict["NeedDetailAttributes"] != nil {
            self.needDetailAttributes = dict["NeedDetailAttributes"] as! Bool
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeResolverRulesResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
                    self.regionName = dict["RegionName"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
                    self.vpcName = dict["VpcName"] as! String
                }
                if dict.keys.contains("VpcType") && dict["VpcType"] != nil {
                    self.vpcType = dict["VpcType"] as! String
                }
                if dict.keys.contains("VpcUserId") && dict["VpcUserId"] != nil {
                    self.vpcUserId = dict["VpcUserId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ip") && dict["Ip"] != nil {
                    self.ip = dict["Ip"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! Int32
                }
            }
        }
        public var bindVpcs: [DescribeResolverRulesResponseBody.Rules.BindVpcs]?

        public var createTime: String?

        public var createTimestamp: Int64?

        public var endpointId: String?

        public var endpointName: String?

        public var forwardIps: [DescribeResolverRulesResponseBody.Rules.ForwardIps]?

        public var id: String?

        public var name: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BindVpcs") && dict["BindVpcs"] != nil {
                var tmp : [DescribeResolverRulesResponseBody.Rules.BindVpcs] = []
                for v in dict["BindVpcs"] as! [Any] {
                    var model = DescribeResolverRulesResponseBody.Rules.BindVpcs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.bindVpcs = tmp
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateTimestamp") && dict["CreateTimestamp"] != nil {
                self.createTimestamp = dict["CreateTimestamp"] as! Int64
            }
            if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("EndpointName") && dict["EndpointName"] != nil {
                self.endpointName = dict["EndpointName"] as! String
            }
            if dict.keys.contains("ForwardIps") && dict["ForwardIps"] != nil {
                var tmp : [DescribeResolverRulesResponseBody.Rules.ForwardIps] = []
                for v in dict["ForwardIps"] as! [Any] {
                    var model = DescribeResolverRulesResponseBody.Rules.ForwardIps()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.forwardIps = tmp
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateTimestamp") && dict["UpdateTimestamp"] != nil {
                self.updateTimestamp = dict["UpdateTimestamp"] as! Int64
            }
            if dict.keys.contains("ZoneName") && dict["ZoneName"] != nil {
                self.zoneName = dict["ZoneName"] as! String
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
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            var tmp : [DescribeResolverRulesResponseBody.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = DescribeResolverRulesResponseBody.Rules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rules = tmp
        }
        if dict.keys.contains("TotalItems") && dict["TotalItems"] != nil {
            self.totalItems = dict["TotalItems"] as! Int32
        }
        if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
            self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeResolverRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
                    self.regionName = dict["RegionName"] as! String
                }
                if dict.keys.contains("RequestCount") && dict["RequestCount"] != nil {
                    self.requestCount = dict["RequestCount"] as! Int64
                }
                if dict.keys.contains("TunnelId") && dict["TunnelId"] != nil {
                    self.tunnelId = dict["TunnelId"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcType") && dict["VpcType"] != nil {
                    self.vpcType = dict["VpcType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VpcRequestTop") && dict["VpcRequestTop"] != nil {
                var tmp : [DescribeStatisticSummaryResponseBody.VpcRequestTops.VpcRequestTop] = []
                for v in dict["VpcRequestTop"] as! [Any] {
                    var model = DescribeStatisticSummaryResponseBody.VpcRequestTops.VpcRequestTop()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizType") && dict["BizType"] != nil {
                    self.bizType = dict["BizType"] as! String
                }
                if dict.keys.contains("RequestCount") && dict["RequestCount"] != nil {
                    self.requestCount = dict["RequestCount"] as! Int64
                }
                if dict.keys.contains("ZoneName") && dict["ZoneName"] != nil {
                    self.zoneName = dict["ZoneName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ZoneRequestTop") && dict["ZoneRequestTop"] != nil {
                var tmp : [DescribeStatisticSummaryResponseBody.ZoneRequestTops.ZoneRequestTop] = []
                for v in dict["ZoneRequestTop"] as! [Any] {
                    var model = DescribeStatisticSummaryResponseBody.ZoneRequestTops.ZoneRequestTop()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("VpcRequestTops") && dict["VpcRequestTops"] != nil {
            var model = DescribeStatisticSummaryResponseBody.VpcRequestTops()
            model.fromMap(dict["VpcRequestTops"] as! [String: Any])
            self.vpcRequestTops = model
        }
        if dict.keys.contains("ZoneRequestTops") && dict["ZoneRequestTops"] != nil {
            var model = DescribeStatisticSummaryResponseBody.ZoneRequestTops()
            model.fromMap(dict["ZoneRequestTops"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeStatisticSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                        self.regionId = dict["RegionId"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionIds") && dict["RegionIds"] != nil {
                    var model = DescribeSyncEcsHostTaskResponseBody.EcsRegions.EcsRegion.RegionIds()
                    model.fromMap(dict["RegionIds"] as! [String: Any])
                    self.regionIds = model
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EcsRegion") && dict["EcsRegion"] != nil {
                var tmp : [DescribeSyncEcsHostTaskResponseBody.EcsRegions.EcsRegion] = []
                for v in dict["EcsRegion"] as! [Any] {
                    var model = DescribeSyncEcsHostTaskResponseBody.EcsRegions.EcsRegion()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EcsRegions") && dict["EcsRegions"] != nil {
            var model = DescribeSyncEcsHostTaskResponseBody.EcsRegions()
            model.fromMap(dict["EcsRegions"] as! [String: Any])
            self.ecsRegions = model
        }
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var model = DescribeSyncEcsHostTaskResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSyncEcsHostTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Values") && dict["Values"] != nil {
                self.values = dict["Values"] as! [String]
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
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [DescribeTagsResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = DescribeTagsResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("AuthorizedUserId") && dict["AuthorizedUserId"] != nil {
            self.authorizedUserId = dict["AuthorizedUserId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
                self.authType = dict["AuthType"] as! String
            }
            if dict.keys.contains("AuthorizedAliyunId") && dict["AuthorizedAliyunId"] != nil {
                self.authorizedAliyunId = dict["AuthorizedAliyunId"] as! String
            }
            if dict.keys.contains("AuthorizedUserId") && dict["AuthorizedUserId"] != nil {
                self.authorizedUserId = dict["AuthorizedUserId"] as! Int64
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateTimestamp") && dict["CreateTimestamp"] != nil {
                self.createTimestamp = dict["CreateTimestamp"] as! Int64
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
        if dict.keys.contains("TotalItems") && dict["TotalItems"] != nil {
            self.totalItems = dict["TotalItems"] as! Int32
        }
        if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
            self.totalPages = dict["TotalPages"] as! Int32
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
            var tmp : [DescribeUserVpcAuthorizationsResponseBody.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = DescribeUserVpcAuthorizationsResponseBody.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeUserVpcAuthorizationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeZoneInfoResponseBody : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
                    self.regionName = dict["RegionName"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
                    self.vpcName = dict["VpcName"] as! String
                }
                if dict.keys.contains("VpcType") && dict["VpcType"] != nil {
                    self.vpcType = dict["VpcType"] as! String
                }
                if dict.keys.contains("VpcUserId") && dict["VpcUserId"] != nil {
                    self.vpcUserId = dict["VpcUserId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Vpc") && dict["Vpc"] != nil {
                var tmp : [DescribeZoneInfoResponseBody.BindVpcs.Vpc] = []
                for v in dict["Vpc"] as! [Any] {
                    var model = DescribeZoneInfoResponseBody.BindVpcs.Vpc()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.vpc = tmp
            }
        }
    }
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
        try self.bindVpcs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BindVpcs") && dict["BindVpcs"] != nil {
            var model = DescribeZoneInfoResponseBody.BindVpcs()
            model.fromMap(dict["BindVpcs"] as! [String: Any])
            self.bindVpcs = model
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateTimestamp") && dict["CreateTimestamp"] != nil {
            self.createTimestamp = dict["CreateTimestamp"] as! Int64
        }
        if dict.keys.contains("Creator") && dict["Creator"] != nil {
            self.creator = dict["Creator"] as! String
        }
        if dict.keys.contains("CreatorType") && dict["CreatorType"] != nil {
            self.creatorType = dict["CreatorType"] as! String
        }
        if dict.keys.contains("DnsGroup") && dict["DnsGroup"] != nil {
            self.dnsGroup = dict["DnsGroup"] as! String
        }
        if dict.keys.contains("DnsGroupChanging") && dict["DnsGroupChanging"] != nil {
            self.dnsGroupChanging = dict["DnsGroupChanging"] as! Bool
        }
        if dict.keys.contains("IsPtr") && dict["IsPtr"] != nil {
            self.isPtr = dict["IsPtr"] as! Bool
        }
        if dict.keys.contains("ProxyPattern") && dict["ProxyPattern"] != nil {
            self.proxyPattern = dict["ProxyPattern"] as! String
        }
        if dict.keys.contains("RecordCount") && dict["RecordCount"] != nil {
            self.recordCount = dict["RecordCount"] as! Int32
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SlaveDns") && dict["SlaveDns"] != nil {
            self.slaveDns = dict["SlaveDns"] as! Bool
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("UpdateTimestamp") && dict["UpdateTimestamp"] != nil {
            self.updateTimestamp = dict["UpdateTimestamp"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
        if dict.keys.contains("ZoneName") && dict["ZoneName"] != nil {
            self.zoneName = dict["ZoneName"] as! String
        }
        if dict.keys.contains("ZoneTag") && dict["ZoneTag"] != nil {
            self.zoneTag = dict["ZoneTag"] as! String
        }
        if dict.keys.contains("ZoneType") && dict["ZoneType"] != nil {
            self.zoneType = dict["ZoneType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeZoneInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchMode") && dict["SearchMode"] != nil {
            self.searchMode = dict["SearchMode"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CreateTimestamp") && dict["CreateTimestamp"] != nil {
                    self.createTimestamp = dict["CreateTimestamp"] as! Int64
                }
                if dict.keys.contains("Line") && dict["Line"] != nil {
                    self.line = dict["Line"] as! String
                }
                if dict.keys.contains("Priority") && dict["Priority"] != nil {
                    self.priority = dict["Priority"] as! Int32
                }
                if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
                    self.recordId = dict["RecordId"] as! Int64
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("Rr") && dict["Rr"] != nil {
                    self.rr = dict["Rr"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Ttl") && dict["Ttl"] != nil {
                    self.ttl = dict["Ttl"] as! Int32
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("UpdateTimestamp") && dict["UpdateTimestamp"] != nil {
                    self.updateTimestamp = dict["UpdateTimestamp"] as! Int64
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("Weight") && dict["Weight"] != nil {
                    self.weight = dict["Weight"] as! Int32
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Record") && dict["Record"] != nil {
                var tmp : [DescribeZoneRecordsResponseBody.Records.Record] = []
                for v in dict["Record"] as! [Any] {
                    var model = DescribeZoneRecordsResponseBody.Records.Record()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Records") && dict["Records"] != nil {
            var model = DescribeZoneRecordsResponseBody.Records()
            model.fromMap(dict["Records"] as! [String: Any])
            self.records = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItems") && dict["TotalItems"] != nil {
            self.totalItems = dict["TotalItems"] as! Int32
        }
        if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
            self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeZoneRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                            self.regionId = dict["RegionId"] as! String
                        }
                        if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
                            self.regionName = dict["RegionName"] as! String
                        }
                        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                            self.vpcId = dict["VpcId"] as! String
                        }
                        if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
                            self.vpcName = dict["VpcName"] as! String
                        }
                        if dict.keys.contains("VpcType") && dict["VpcType"] != nil {
                            self.vpcType = dict["VpcType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Vpc") && dict["Vpc"] != nil {
                        var tmp : [DescribeZoneVpcTreeResponseBody.Zones.Zone.Vpcs.Vpc] = []
                        for v in dict["Vpc"] as! [Any] {
                            var model = DescribeZoneVpcTreeResponseBody.Zones.Zone.Vpcs.Vpc()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CreateTimestamp") && dict["CreateTimestamp"] != nil {
                    self.createTimestamp = dict["CreateTimestamp"] as! Int64
                }
                if dict.keys.contains("Creator") && dict["Creator"] != nil {
                    self.creator = dict["Creator"] as! String
                }
                if dict.keys.contains("CreatorType") && dict["CreatorType"] != nil {
                    self.creatorType = dict["CreatorType"] as! String
                }
                if dict.keys.contains("DnsGroup") && dict["DnsGroup"] != nil {
                    self.dnsGroup = dict["DnsGroup"] as! String
                }
                if dict.keys.contains("DnsGroupChanging") && dict["DnsGroupChanging"] != nil {
                    self.dnsGroupChanging = dict["DnsGroupChanging"] as! Bool
                }
                if dict.keys.contains("IsPtr") && dict["IsPtr"] != nil {
                    self.isPtr = dict["IsPtr"] as! Bool
                }
                if dict.keys.contains("RecordCount") && dict["RecordCount"] != nil {
                    self.recordCount = dict["RecordCount"] as! Int32
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("UpdateTimestamp") && dict["UpdateTimestamp"] != nil {
                    self.updateTimestamp = dict["UpdateTimestamp"] as! Int64
                }
                if dict.keys.contains("Vpcs") && dict["Vpcs"] != nil {
                    var model = DescribeZoneVpcTreeResponseBody.Zones.Zone.Vpcs()
                    model.fromMap(dict["Vpcs"] as! [String: Any])
                    self.vpcs = model
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
                if dict.keys.contains("ZoneName") && dict["ZoneName"] != nil {
                    self.zoneName = dict["ZoneName"] as! String
                }
                if dict.keys.contains("ZoneTag") && dict["ZoneTag"] != nil {
                    self.zoneTag = dict["ZoneTag"] as! String
                }
                if dict.keys.contains("ZoneType") && dict["ZoneType"] != nil {
                    self.zoneType = dict["ZoneType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Zone") && dict["Zone"] != nil {
                var tmp : [DescribeZoneVpcTreeResponseBody.Zones.Zone] = []
                for v in dict["Zone"] as! [Any] {
                    var model = DescribeZoneVpcTreeResponseBody.Zones.Zone()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Zones") && dict["Zones"] != nil {
            var model = DescribeZoneVpcTreeResponseBody.Zones()
            model.fromMap(dict["Zones"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeZoneVpcTreeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryRegionId") && dict["QueryRegionId"] != nil {
            self.queryRegionId = dict["QueryRegionId"] as! String
        }
        if dict.keys.contains("QueryVpcId") && dict["QueryVpcId"] != nil {
            self.queryVpcId = dict["QueryVpcId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceTag") && dict["ResourceTag"] != nil {
            var tmp : [DescribeZonesRequest.ResourceTag] = []
            for v in dict["ResourceTag"] as! [Any] {
                var model = DescribeZonesRequest.ResourceTag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceTag = tmp
        }
        if dict.keys.contains("SearchMode") && dict["SearchMode"] != nil {
            self.searchMode = dict["SearchMode"] as! String
        }
        if dict.keys.contains("ZoneTag") && dict["ZoneTag"] != nil {
            self.zoneTag = dict["ZoneTag"] as! [String]
        }
        if dict.keys.contains("ZoneType") && dict["ZoneType"] != nil {
            self.zoneType = dict["ZoneType"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ResourceTag") && dict["ResourceTag"] != nil {
                        var tmp : [DescribeZonesResponseBody.Zones.Zone.ResourceTags.ResourceTag] = []
                        for v in dict["ResourceTag"] as! [Any] {
                            var model = DescribeZonesResponseBody.Zones.Zone.ResourceTags.ResourceTag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CreateTimestamp") && dict["CreateTimestamp"] != nil {
                    self.createTimestamp = dict["CreateTimestamp"] as! Int64
                }
                if dict.keys.contains("Creator") && dict["Creator"] != nil {
                    self.creator = dict["Creator"] as! String
                }
                if dict.keys.contains("CreatorSubType") && dict["CreatorSubType"] != nil {
                    self.creatorSubType = dict["CreatorSubType"] as! String
                }
                if dict.keys.contains("DnsGroup") && dict["DnsGroup"] != nil {
                    self.dnsGroup = dict["DnsGroup"] as! String
                }
                if dict.keys.contains("DnsGroupChanging") && dict["DnsGroupChanging"] != nil {
                    self.dnsGroupChanging = dict["DnsGroupChanging"] as! Bool
                }
                if dict.keys.contains("IsPtr") && dict["IsPtr"] != nil {
                    self.isPtr = dict["IsPtr"] as! Bool
                }
                if dict.keys.contains("ProxyPattern") && dict["ProxyPattern"] != nil {
                    self.proxyPattern = dict["ProxyPattern"] as! String
                }
                if dict.keys.contains("RecordCount") && dict["RecordCount"] != nil {
                    self.recordCount = dict["RecordCount"] as! Int32
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("ResourceTags") && dict["ResourceTags"] != nil {
                    var model = DescribeZonesResponseBody.Zones.Zone.ResourceTags()
                    model.fromMap(dict["ResourceTags"] as! [String: Any])
                    self.resourceTags = model
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("UpdateTimestamp") && dict["UpdateTimestamp"] != nil {
                    self.updateTimestamp = dict["UpdateTimestamp"] as! Int64
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
                if dict.keys.contains("ZoneName") && dict["ZoneName"] != nil {
                    self.zoneName = dict["ZoneName"] as! String
                }
                if dict.keys.contains("ZoneTag") && dict["ZoneTag"] != nil {
                    self.zoneTag = dict["ZoneTag"] as! String
                }
                if dict.keys.contains("ZoneType") && dict["ZoneType"] != nil {
                    self.zoneType = dict["ZoneType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Zone") && dict["Zone"] != nil {
                var tmp : [DescribeZonesResponseBody.Zones.Zone] = []
                for v in dict["Zone"] as! [Any] {
                    var model = DescribeZonesResponseBody.Zones.Zone()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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
        if dict.keys.contains("TotalItems") && dict["TotalItems"] != nil {
            self.totalItems = dict["TotalItems"] as! Int32
        }
        if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
            self.totalPages = dict["TotalPages"] as! Int32
        }
        if dict.keys.contains("Zones") && dict["Zones"] != nil {
            var model = DescribeZonesResponseBody.Zones()
            model.fromMap(dict["Zones"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeZonesResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
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
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NewResourceGroupId") && dict["NewResourceGroupId"] != nil {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = MoveResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ProxyPattern") && dict["ProxyPattern"] != nil {
            self.proxyPattern = dict["ProxyPattern"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetProxyPatternResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetZoneRecordStatusResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("OverWrite") && dict["OverWrite"] != nil {
            self.overWrite = dict["OverWrite"] as! Bool
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateRecordRemarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AzId") && dict["AzId"] != nil {
                self.azId = dict["AzId"] as! String
            }
            if dict.keys.contains("CidrBlock") && dict["CidrBlock"] != nil {
                self.cidrBlock = dict["CidrBlock"] as! String
            }
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("IpConfig") && dict["IpConfig"] != nil {
            var tmp : [UpdateResolverEndpointRequest.IpConfig] = []
            for v in dict["IpConfig"] as! [Any] {
                var model = UpdateResolverEndpointRequest.IpConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ipConfig = tmp
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateResolverEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int32
            }
        }
    }
    public var forwardIp: [UpdateResolverRuleRequest.ForwardIp]?

    public var lang: String?

    public var name: String?

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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ForwardIp") && dict["ForwardIp"] != nil {
            var tmp : [UpdateResolverRuleRequest.ForwardIp] = []
            for v in dict["ForwardIp"] as! [Any] {
                var model = UpdateResolverRuleRequest.ForwardIp()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.forwardIp = tmp
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateResolverRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            var tmp : [UpdateSyncEcsHostTaskRequest.Region] = []
            for v in dict["Region"] as! [Any] {
                var model = UpdateSyncEcsHostTaskRequest.Region()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.region = tmp
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateSyncEcsHostTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Line") && dict["Line"] != nil {
            self.line = dict["Line"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("Rr") && dict["Rr"] != nil {
            self.rr = dict["Rr"] as! String
        }
        if dict.keys.contains("Ttl") && dict["Ttl"] != nil {
            self.ttl = dict["Ttl"] as! Int32
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
        if dict.keys.contains("Weight") && dict["Weight"] != nil {
            self.weight = dict["Weight"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateZoneRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateZoneRemarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
