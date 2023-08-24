import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddDNSAuthorizationRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var destinationIp: String?

    public var dryRun: Bool?

    public var name: String?

    public var sourceDNSIp: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destinationIp != nil {
            map["DestinationIp"] = self.destinationIp!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sourceDNSIp != nil {
            map["SourceDNSIp"] = self.sourceDNSIp!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestinationIp") && dict["DestinationIp"] != nil {
            self.destinationIp = dict["DestinationIp"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SourceDNSIp") && dict["SourceDNSIp"] != nil {
            self.sourceDNSIp = dict["SourceDNSIp"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class AddDNSAuthorizationRuleResponseBody : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") && dict["AuthorizationRuleId"] != nil {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddDNSAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDNSAuthorizationRuleResponseBody?

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
            var model = AddDNSAuthorizationRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddGroupDnsAuthorizationRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var destinationIp: String?

    public var dryRun: Bool?

    public var name: String?

    public var sourceDNSIp: String?

    public var wirelessCloudConnectorGroupId: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destinationIp != nil {
            map["DestinationIp"] = self.destinationIp!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sourceDNSIp != nil {
            map["SourceDNSIp"] = self.sourceDNSIp!
        }
        if self.wirelessCloudConnectorGroupId != nil {
            map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestinationIp") && dict["DestinationIp"] != nil {
            self.destinationIp = dict["DestinationIp"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SourceDNSIp") && dict["SourceDNSIp"] != nil {
            self.sourceDNSIp = dict["SourceDNSIp"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
            self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
        }
    }
}

public class AddGroupDnsAuthorizationRuleResponseBody : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") && dict["AuthorizationRuleId"] != nil {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddGroupDnsAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddGroupDnsAuthorizationRuleResponseBody?

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
            var model = AddGroupDnsAuthorizationRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddWirelessCloudConnectorToGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var wirelessCloudConnectorGroupId: String?

    public var wirelessCloudConnectorIds: [String]?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.wirelessCloudConnectorGroupId != nil {
            map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
        }
        if self.wirelessCloudConnectorIds != nil {
            map["WirelessCloudConnectorIds"] = self.wirelessCloudConnectorIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
            self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorIds") && dict["WirelessCloudConnectorIds"] != nil {
            self.wirelessCloudConnectorIds = dict["WirelessCloudConnectorIds"] as! [String]
        }
    }
}

public class AddWirelessCloudConnectorToGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AddWirelessCloudConnectorToGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddWirelessCloudConnectorToGroupResponseBody?

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
            var model = AddWirelessCloudConnectorToGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachVpcToNetLinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var netLinkId: String?

    public var regionId: String?

    public var vSwitches: [String]?

    public var vpcId: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.netLinkId != nil {
            map["NetLinkId"] = self.netLinkId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vSwitches != nil {
            map["VSwitches"] = self.vSwitches!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("NetLinkId") && dict["NetLinkId"] != nil {
            self.netLinkId = dict["NetLinkId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VSwitches") && dict["VSwitches"] != nil {
            self.vSwitches = dict["VSwitches"] as! [String]
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class AttachVpcToNetLinkResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AttachVpcToNetLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachVpcToNetLinkResponseBody?

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
            var model = AttachVpcToNetLinkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAuthorizationRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var destination: String?

    public var destinationPort: String?

    public var destinationType: String?

    public var dryRun: Bool?

    public var name: String?

    public var policy: String?

    public var protocol_: String?

    public var sourceCidr: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationPort != nil {
            map["DestinationPort"] = self.destinationPort!
        }
        if self.destinationType != nil {
            map["DestinationType"] = self.destinationType!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.sourceCidr != nil {
            map["SourceCidr"] = self.sourceCidr!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationPort") && dict["DestinationPort"] != nil {
            self.destinationPort = dict["DestinationPort"] as! String
        }
        if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("SourceCidr") && dict["SourceCidr"] != nil {
            self.sourceCidr = dict["SourceCidr"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class CreateAuthorizationRuleResponseBody : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") && dict["AuthorizationRuleId"] != nil {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAuthorizationRuleResponseBody?

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
            var model = CreateAuthorizationRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBatchOperateCardsTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var effectType: String?

    public var iccids: [String]?

    public var iccidsOssFilePath: String?

    public var name: String?

    public var operateType: String?

    public var regionId: String?

    public var threshold: Int64?

    public var wirelessCloudConnectorIds: [String]?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.effectType != nil {
            map["EffectType"] = self.effectType!
        }
        if self.iccids != nil {
            map["Iccids"] = self.iccids!
        }
        if self.iccidsOssFilePath != nil {
            map["IccidsOssFilePath"] = self.iccidsOssFilePath!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        if self.wirelessCloudConnectorIds != nil {
            map["WirelessCloudConnectorIds"] = self.wirelessCloudConnectorIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EffectType") && dict["EffectType"] != nil {
            self.effectType = dict["EffectType"] as! String
        }
        if dict.keys.contains("Iccids") && dict["Iccids"] != nil {
            self.iccids = dict["Iccids"] as! [String]
        }
        if dict.keys.contains("IccidsOssFilePath") && dict["IccidsOssFilePath"] != nil {
            self.iccidsOssFilePath = dict["IccidsOssFilePath"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OperateType") && dict["OperateType"] != nil {
            self.operateType = dict["OperateType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Threshold") && dict["Threshold"] != nil {
            self.threshold = dict["Threshold"] as! Int64
        }
        if dict.keys.contains("WirelessCloudConnectorIds") && dict["WirelessCloudConnectorIds"] != nil {
            self.wirelessCloudConnectorIds = dict["WirelessCloudConnectorIds"] as! [String]
        }
    }
}

public class CreateBatchOperateCardsTaskResponseBody : Tea.TeaModel {
    public var batchOperateCardsTaskId: String?

    public var operateResultOssFilePath: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchOperateCardsTaskId != nil {
            map["BatchOperateCardsTaskId"] = self.batchOperateCardsTaskId!
        }
        if self.operateResultOssFilePath != nil {
            map["OperateResultOssFilePath"] = self.operateResultOssFilePath!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchOperateCardsTaskId") && dict["BatchOperateCardsTaskId"] != nil {
            self.batchOperateCardsTaskId = dict["BatchOperateCardsTaskId"] as! String
        }
        if dict.keys.contains("OperateResultOssFilePath") && dict["OperateResultOssFilePath"] != nil {
            self.operateResultOssFilePath = dict["OperateResultOssFilePath"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateBatchOperateCardsTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBatchOperateCardsTaskResponseBody?

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
            var model = CreateBatchOperateCardsTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupAuthorizationRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var destination: String?

    public var destinationPort: String?

    public var destinationType: String?

    public var dryRun: Bool?

    public var name: String?

    public var policy: String?

    public var protocol_: String?

    public var sourceCidr: String?

    public var wirelessCloudConnectorGroupId: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationPort != nil {
            map["DestinationPort"] = self.destinationPort!
        }
        if self.destinationType != nil {
            map["DestinationType"] = self.destinationType!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.sourceCidr != nil {
            map["SourceCidr"] = self.sourceCidr!
        }
        if self.wirelessCloudConnectorGroupId != nil {
            map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationPort") && dict["DestinationPort"] != nil {
            self.destinationPort = dict["DestinationPort"] as! String
        }
        if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("SourceCidr") && dict["SourceCidr"] != nil {
            self.sourceCidr = dict["SourceCidr"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
            self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
        }
    }
}

public class CreateGroupAuthorizationRuleResponseBody : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") && dict["AuthorizationRuleId"] != nil {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateGroupAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupAuthorizationRuleResponseBody?

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
            var model = CreateGroupAuthorizationRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateIoTCloudConnectorBackhaulRouteRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var netLinkId: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.netLinkId != nil {
            map["NetLinkId"] = self.netLinkId!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("NetLinkId") && dict["NetLinkId"] != nil {
            self.netLinkId = dict["NetLinkId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class CreateIoTCloudConnectorBackhaulRouteResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class CreateIoTCloudConnectorBackhaulRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIoTCloudConnectorBackhaulRouteResponseBody?

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
            var model = CreateIoTCloudConnectorBackhaulRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWirelessCloudConnectorRequest : Tea.TeaModel {
    public class NetLinks : Tea.TeaModel {
        public var APN: String?

        public var regionId: String?

        public var vSwitchs: [String]?

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
            if self.APN != nil {
                map["APN"] = self.APN!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.vSwitchs != nil {
                map["VSwitchs"] = self.vSwitchs!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("APN") && dict["APN"] != nil {
                self.APN = dict["APN"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("VSwitchs") && dict["VSwitchs"] != nil {
                self.vSwitchs = dict["VSwitchs"] as! [String]
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var businessType: String?

    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var ISP: String?

    public var name: String?

    public var netLinks: [CreateWirelessCloudConnectorRequest.NetLinks]?

    public var regionId: String?

    public var useCase: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ISP != nil {
            map["ISP"] = self.ISP!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.netLinks != nil {
            var tmp : [Any] = []
            for k in self.netLinks! {
                tmp.append(k.toMap())
            }
            map["NetLinks"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.useCase != nil {
            map["UseCase"] = self.useCase!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ISP") && dict["ISP"] != nil {
            self.ISP = dict["ISP"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetLinks") && dict["NetLinks"] != nil {
            var tmp : [CreateWirelessCloudConnectorRequest.NetLinks] = []
            for v in dict["NetLinks"] as! [Any] {
                var model = CreateWirelessCloudConnectorRequest.NetLinks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.netLinks = tmp
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UseCase") && dict["UseCase"] != nil {
            self.useCase = dict["UseCase"] as! String
        }
    }
}

public class CreateWirelessCloudConnectorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class CreateWirelessCloudConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWirelessCloudConnectorResponseBody?

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
            var model = CreateWirelessCloudConnectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWirelessCloudConnectorGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var name: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateWirelessCloudConnectorGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var wirelessCloudConnectorGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.wirelessCloudConnectorGroupId != nil {
            map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
            self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
        }
    }
}

public class CreateWirelessCloudConnectorGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWirelessCloudConnectorGroupResponseBody?

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
            var model = CreateWirelessCloudConnectorGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAuthorizationRuleRequest : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") && dict["AuthorizationRuleId"] != nil {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class DeleteAuthorizationRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAuthorizationRuleResponseBody?

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
            var model = DeleteAuthorizationRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBatchOperateCardsTaskRequest : Tea.TeaModel {
    public var batchOperateCardsTaskId: String?

    public var clientToken: String?

    public var dryRun: Bool?

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
        if self.batchOperateCardsTaskId != nil {
            map["BatchOperateCardsTaskId"] = self.batchOperateCardsTaskId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchOperateCardsTaskId") && dict["BatchOperateCardsTaskId"] != nil {
            self.batchOperateCardsTaskId = dict["BatchOperateCardsTaskId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteBatchOperateCardsTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteBatchOperateCardsTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBatchOperateCardsTaskResponseBody?

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
            var model = DeleteBatchOperateCardsTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGroupAuthorizationRuleRequest : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var wirelessCloudConnectorGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.wirelessCloudConnectorGroupId != nil {
            map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") && dict["AuthorizationRuleId"] != nil {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
            self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
        }
    }
}

public class DeleteGroupAuthorizationRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteGroupAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGroupAuthorizationRuleResponseBody?

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
            var model = DeleteGroupAuthorizationRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIoTCloudConnectorBackhaulRouteRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var netLinkId: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.netLinkId != nil {
            map["NetLinkId"] = self.netLinkId!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("NetLinkId") && dict["NetLinkId"] != nil {
            self.netLinkId = dict["NetLinkId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class DeleteIoTCloudConnectorBackhaulRouteResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteIoTCloudConnectorBackhaulRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIoTCloudConnectorBackhaulRouteResponseBody?

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
            var model = DeleteIoTCloudConnectorBackhaulRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWirelessCloudConnectorRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class DeleteWirelessCloudConnectorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteWirelessCloudConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWirelessCloudConnectorResponseBody?

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
            var model = DeleteWirelessCloudConnectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWirelessCloudConnectorGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var wirelessCloudConnectorGroupId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.wirelessCloudConnectorGroupId != nil {
            map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
            self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
        }
    }
}

public class DeleteWirelessCloudConnectorGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteWirelessCloudConnectorGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWirelessCloudConnectorGroupResponseBody?

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
            var model = DeleteWirelessCloudConnectorGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachVpcFromNetLinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var netLinkId: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.netLinkId != nil {
            map["NetLinkId"] = self.netLinkId!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("NetLinkId") && dict["NetLinkId"] != nil {
            self.netLinkId = dict["NetLinkId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class DetachVpcFromNetLinkResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DetachVpcFromNetLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachVpcFromNetLinkResponseBody?

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
            var model = DetachVpcFromNetLinkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FailCardsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var iccids: [String]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.iccids != nil {
            map["Iccids"] = self.iccids!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Iccids") && dict["Iccids"] != nil {
            self.iccids = dict["Iccids"] as! [String]
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class FailCardsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class FailCardsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FailCardsResponseBody?

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
            var model = FailCardsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCardRequest : Tea.TeaModel {
    public var iccid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
    }
}

public class GetCardResponseBody : Tea.TeaModel {
    public var APN: String?

    public var activatedTime: String?

    public var alarmThreshold: Int64?

    public var cloudConnectorId: String?

    public var description_: String?

    public var ISP: String?

    public var iccid: String?

    public var imei: String?

    public var imsi: String?

    public var ipAddress: String?

    public var limitThreshold: Int64?

    public var lock: String?

    public var msisdn: String?

    public var name: String?

    public var netType: String?

    public var orderId: String?

    public var requestId: String?

    public var simStatus: String?

    public var spec: String?

    public var status: String?

    public var stopThreshold: Int64?

    public var usageDataMonth: Int32?

    public var usageDataTotal: Int64?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APN != nil {
            map["APN"] = self.APN!
        }
        if self.activatedTime != nil {
            map["ActivatedTime"] = self.activatedTime!
        }
        if self.alarmThreshold != nil {
            map["AlarmThreshold"] = self.alarmThreshold!
        }
        if self.cloudConnectorId != nil {
            map["CloudConnectorId"] = self.cloudConnectorId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.ISP != nil {
            map["ISP"] = self.ISP!
        }
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.imei != nil {
            map["Imei"] = self.imei!
        }
        if self.imsi != nil {
            map["Imsi"] = self.imsi!
        }
        if self.ipAddress != nil {
            map["IpAddress"] = self.ipAddress!
        }
        if self.limitThreshold != nil {
            map["LimitThreshold"] = self.limitThreshold!
        }
        if self.lock != nil {
            map["Lock"] = self.lock!
        }
        if self.msisdn != nil {
            map["Msisdn"] = self.msisdn!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.netType != nil {
            map["NetType"] = self.netType!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.simStatus != nil {
            map["SimStatus"] = self.simStatus!
        }
        if self.spec != nil {
            map["Spec"] = self.spec!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.stopThreshold != nil {
            map["StopThreshold"] = self.stopThreshold!
        }
        if self.usageDataMonth != nil {
            map["UsageDataMonth"] = self.usageDataMonth!
        }
        if self.usageDataTotal != nil {
            map["UsageDataTotal"] = self.usageDataTotal!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("APN") && dict["APN"] != nil {
            self.APN = dict["APN"] as! String
        }
        if dict.keys.contains("ActivatedTime") && dict["ActivatedTime"] != nil {
            self.activatedTime = dict["ActivatedTime"] as! String
        }
        if dict.keys.contains("AlarmThreshold") && dict["AlarmThreshold"] != nil {
            self.alarmThreshold = dict["AlarmThreshold"] as! Int64
        }
        if dict.keys.contains("CloudConnectorId") && dict["CloudConnectorId"] != nil {
            self.cloudConnectorId = dict["CloudConnectorId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ISP") && dict["ISP"] != nil {
            self.ISP = dict["ISP"] as! String
        }
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("Imei") && dict["Imei"] != nil {
            self.imei = dict["Imei"] as! String
        }
        if dict.keys.contains("Imsi") && dict["Imsi"] != nil {
            self.imsi = dict["Imsi"] as! String
        }
        if dict.keys.contains("IpAddress") && dict["IpAddress"] != nil {
            self.ipAddress = dict["IpAddress"] as! String
        }
        if dict.keys.contains("LimitThreshold") && dict["LimitThreshold"] != nil {
            self.limitThreshold = dict["LimitThreshold"] as! Int64
        }
        if dict.keys.contains("Lock") && dict["Lock"] != nil {
            self.lock = dict["Lock"] as! String
        }
        if dict.keys.contains("Msisdn") && dict["Msisdn"] != nil {
            self.msisdn = dict["Msisdn"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetType") && dict["NetType"] != nil {
            self.netType = dict["NetType"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SimStatus") && dict["SimStatus"] != nil {
            self.simStatus = dict["SimStatus"] as! String
        }
        if dict.keys.contains("Spec") && dict["Spec"] != nil {
            self.spec = dict["Spec"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StopThreshold") && dict["StopThreshold"] != nil {
            self.stopThreshold = dict["StopThreshold"] as! Int64
        }
        if dict.keys.contains("UsageDataMonth") && dict["UsageDataMonth"] != nil {
            self.usageDataMonth = dict["UsageDataMonth"] as! Int32
        }
        if dict.keys.contains("UsageDataTotal") && dict["UsageDataTotal"] != nil {
            self.usageDataTotal = dict["UsageDataTotal"] as! Int64
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class GetCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCardResponseBody?

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
            var model = GetCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCardLockReasonRequest : Tea.TeaModel {
    public var iccid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
    }
}

public class GetCardLockReasonResponseBody : Tea.TeaModel {
    public var lockReason: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lockReason != nil {
            map["LockReason"] = self.lockReason!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LockReason") && dict["LockReason"] != nil {
            self.lockReason = dict["LockReason"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetCardLockReasonResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCardLockReasonResponseBody?

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
            var model = GetCardLockReasonResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCreateCustomerInformationRequest : Tea.TeaModel {
    public var regionId: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class GetCreateCustomerInformationResponseBody : Tea.TeaModel {
    public var canBuyCard: String?

    public var requestId: String?

    public var URL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.canBuyCard != nil {
            map["CanBuyCard"] = self.canBuyCard!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.URL != nil {
            map["URL"] = self.URL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CanBuyCard") && dict["CanBuyCard"] != nil {
            self.canBuyCard = dict["CanBuyCard"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("URL") && dict["URL"] != nil {
            self.URL = dict["URL"] as! String
        }
    }
}

public class GetCreateCustomerInformationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCreateCustomerInformationResponseBody?

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
            var model = GetCreateCustomerInformationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDiagnoseResultForSingleCardRequest : Tea.TeaModel {
    public var diagnoseTaskId: String?

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
        if self.diagnoseTaskId != nil {
            map["DiagnoseTaskId"] = self.diagnoseTaskId!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiagnoseTaskId") && dict["DiagnoseTaskId"] != nil {
            self.diagnoseTaskId = dict["DiagnoseTaskId"] as! String
        }
        if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
            self.regionNo = dict["RegionNo"] as! String
        }
    }
}

public class GetDiagnoseResultForSingleCardResponseBody : Tea.TeaModel {
    public class DiagnoseItem : Tea.TeaModel {
        public class SubItems : Tea.TeaModel {
            public var subItem: String?

            public var subItemInfo: String?

            public var subItemStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.subItem != nil {
                    map["SubItem"] = self.subItem!
                }
                if self.subItemInfo != nil {
                    map["SubItemInfo"] = self.subItemInfo!
                }
                if self.subItemStatus != nil {
                    map["SubItemStatus"] = self.subItemStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SubItem") && dict["SubItem"] != nil {
                    self.subItem = dict["SubItem"] as! String
                }
                if dict.keys.contains("SubItemInfo") && dict["SubItemInfo"] != nil {
                    self.subItemInfo = dict["SubItemInfo"] as! String
                }
                if dict.keys.contains("SubItemStatus") && dict["SubItemStatus"] != nil {
                    self.subItemStatus = dict["SubItemStatus"] as! String
                }
            }
        }
        public var part: String?

        public var status: String?

        public var subItems: [GetDiagnoseResultForSingleCardResponseBody.DiagnoseItem.SubItems]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.part != nil {
                map["Part"] = self.part!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subItems != nil {
                var tmp : [Any] = []
                for k in self.subItems! {
                    tmp.append(k.toMap())
                }
                map["SubItems"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Part") && dict["Part"] != nil {
                self.part = dict["Part"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubItems") && dict["SubItems"] != nil {
                var tmp : [GetDiagnoseResultForSingleCardResponseBody.DiagnoseItem.SubItems] = []
                for v in dict["SubItems"] as! [Any] {
                    var model = GetDiagnoseResultForSingleCardResponseBody.DiagnoseItem.SubItems()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subItems = tmp
            }
        }
    }
    public class ErrorResult : Tea.TeaModel {
        public var errorDesc: String?

        public var errorItem: String?

        public var errorLevel: String?

        public var errorPart: String?

        public var errorSuggestion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorDesc != nil {
                map["ErrorDesc"] = self.errorDesc!
            }
            if self.errorItem != nil {
                map["ErrorItem"] = self.errorItem!
            }
            if self.errorLevel != nil {
                map["ErrorLevel"] = self.errorLevel!
            }
            if self.errorPart != nil {
                map["ErrorPart"] = self.errorPart!
            }
            if self.errorSuggestion != nil {
                map["ErrorSuggestion"] = self.errorSuggestion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorDesc") && dict["ErrorDesc"] != nil {
                self.errorDesc = dict["ErrorDesc"] as! String
            }
            if dict.keys.contains("ErrorItem") && dict["ErrorItem"] != nil {
                self.errorItem = dict["ErrorItem"] as! String
            }
            if dict.keys.contains("ErrorLevel") && dict["ErrorLevel"] != nil {
                self.errorLevel = dict["ErrorLevel"] as! String
            }
            if dict.keys.contains("ErrorPart") && dict["ErrorPart"] != nil {
                self.errorPart = dict["ErrorPart"] as! String
            }
            if dict.keys.contains("ErrorSuggestion") && dict["ErrorSuggestion"] != nil {
                self.errorSuggestion = dict["ErrorSuggestion"] as! String
            }
        }
    }
    public var beginTime: Int64?

    public var cardIp: String?

    public var destination: String?

    public var destinationType: String?

    public var diagnoseItem: [GetDiagnoseResultForSingleCardResponseBody.DiagnoseItem]?

    public var endTime: Int64?

    public var errorResult: [GetDiagnoseResultForSingleCardResponseBody.ErrorResult]?

    public var iccId: String?

    public var requestId: String?

    public var status: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.cardIp != nil {
            map["CardIp"] = self.cardIp!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationType != nil {
            map["DestinationType"] = self.destinationType!
        }
        if self.diagnoseItem != nil {
            var tmp : [Any] = []
            for k in self.diagnoseItem! {
                tmp.append(k.toMap())
            }
            map["DiagnoseItem"] = tmp
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.errorResult != nil {
            var tmp : [Any] = []
            for k in self.errorResult! {
                tmp.append(k.toMap())
            }
            map["ErrorResult"] = tmp
        }
        if self.iccId != nil {
            map["IccId"] = self.iccId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CardIp") && dict["CardIp"] != nil {
            self.cardIp = dict["CardIp"] as! String
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("DiagnoseItem") && dict["DiagnoseItem"] != nil {
            var tmp : [GetDiagnoseResultForSingleCardResponseBody.DiagnoseItem] = []
            for v in dict["DiagnoseItem"] as! [Any] {
                var model = GetDiagnoseResultForSingleCardResponseBody.DiagnoseItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.diagnoseItem = tmp
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("ErrorResult") && dict["ErrorResult"] != nil {
            var tmp : [GetDiagnoseResultForSingleCardResponseBody.ErrorResult] = []
            for v in dict["ErrorResult"] as! [Any] {
                var model = GetDiagnoseResultForSingleCardResponseBody.ErrorResult()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errorResult = tmp
        }
        if dict.keys.contains("IccId") && dict["IccId"] != nil {
            self.iccId = dict["IccId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class GetDiagnoseResultForSingleCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDiagnoseResultForSingleCardResponseBody?

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
            var model = GetDiagnoseResultForSingleCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWirelessCloudConnectorRequest : Tea.TeaModel {
    public var regionId: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class GetWirelessCloudConnectorResponseBody : Tea.TeaModel {
    public class NetLinks : Tea.TeaModel {
        public var APN: String?

        public var createTime: String?

        public var description_: String?

        public var grantAliUid: String?

        public var ISP: String?

        public var name: String?

        public var netLinkId: String?

        public var regionId: String?

        public var status: String?

        public var type: String?

        public var vSwitchs: [String]?

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
            if self.APN != nil {
                map["APN"] = self.APN!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.grantAliUid != nil {
                map["GrantAliUid"] = self.grantAliUid!
            }
            if self.ISP != nil {
                map["ISP"] = self.ISP!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.netLinkId != nil {
                map["NetLinkId"] = self.netLinkId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.vSwitchs != nil {
                map["VSwitchs"] = self.vSwitchs!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("APN") && dict["APN"] != nil {
                self.APN = dict["APN"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GrantAliUid") && dict["GrantAliUid"] != nil {
                self.grantAliUid = dict["GrantAliUid"] as! String
            }
            if dict.keys.contains("ISP") && dict["ISP"] != nil {
                self.ISP = dict["ISP"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NetLinkId") && dict["NetLinkId"] != nil {
                self.netLinkId = dict["NetLinkId"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("VSwitchs") && dict["VSwitchs"] != nil {
                self.vSwitchs = dict["VSwitchs"] as! [String]
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var businessType: String?

    public var cardCount: String?

    public var createTime: String?

    public var dataPackageId: String?

    public var dataPackageType: String?

    public var description_: String?

    public var features: [String]?

    public var name: String?

    public var netLinks: [GetWirelessCloudConnectorResponseBody.NetLinks]?

    public var regionId: String?

    public var requestId: String?

    public var serviceType: String?

    public var status: String?

    public var useCase: String?

    public var wirelessCloudConnectorGroupId: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.cardCount != nil {
            map["CardCount"] = self.cardCount!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.dataPackageId != nil {
            map["DataPackageId"] = self.dataPackageId!
        }
        if self.dataPackageType != nil {
            map["DataPackageType"] = self.dataPackageType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.features != nil {
            map["Features"] = self.features!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.netLinks != nil {
            var tmp : [Any] = []
            for k in self.netLinks! {
                tmp.append(k.toMap())
            }
            map["NetLinks"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.useCase != nil {
            map["UseCase"] = self.useCase!
        }
        if self.wirelessCloudConnectorGroupId != nil {
            map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("CardCount") && dict["CardCount"] != nil {
            self.cardCount = dict["CardCount"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DataPackageId") && dict["DataPackageId"] != nil {
            self.dataPackageId = dict["DataPackageId"] as! String
        }
        if dict.keys.contains("DataPackageType") && dict["DataPackageType"] != nil {
            self.dataPackageType = dict["DataPackageType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Features") && dict["Features"] != nil {
            self.features = dict["Features"] as! [String]
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetLinks") && dict["NetLinks"] != nil {
            var tmp : [GetWirelessCloudConnectorResponseBody.NetLinks] = []
            for v in dict["NetLinks"] as! [Any] {
                var model = GetWirelessCloudConnectorResponseBody.NetLinks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.netLinks = tmp
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceType") && dict["ServiceType"] != nil {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UseCase") && dict["UseCase"] != nil {
            self.useCase = dict["UseCase"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
            self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class GetWirelessCloudConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWirelessCloudConnectorResponseBody?

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
            var model = GetWirelessCloudConnectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GrantNetLinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var grantAliUid: Int64?

    public var netLinkId: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.grantAliUid != nil {
            map["GrantAliUid"] = self.grantAliUid!
        }
        if self.netLinkId != nil {
            map["NetLinkId"] = self.netLinkId!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("GrantAliUid") && dict["GrantAliUid"] != nil {
            self.grantAliUid = dict["GrantAliUid"] as! Int64
        }
        if dict.keys.contains("NetLinkId") && dict["NetLinkId"] != nil {
            self.netLinkId = dict["NetLinkId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class GrantNetLinkResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class GrantNetLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantNetLinkResponseBody?

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
            var model = GrantNetLinkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAPNsRequest : Tea.TeaModel {
    public var APN: String?

    public var ISP: String?

    public var maxResults: Int64?

    public var nextToken: String?

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
        if self.APN != nil {
            map["APN"] = self.APN!
        }
        if self.ISP != nil {
            map["ISP"] = self.ISP!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("APN") && dict["APN"] != nil {
            self.APN = dict["APN"] as! String
        }
        if dict.keys.contains("ISP") && dict["ISP"] != nil {
            self.ISP = dict["ISP"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListAPNsResponseBody : Tea.TeaModel {
    public class APNs : Tea.TeaModel {
        public var APN: String?

        public var description_: String?

        public var ISP: String?

        public var name: String?

        public var zones: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.APN != nil {
                map["APN"] = self.APN!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.ISP != nil {
                map["ISP"] = self.ISP!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.zones != nil {
                map["Zones"] = self.zones!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("APN") && dict["APN"] != nil {
                self.APN = dict["APN"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ISP") && dict["ISP"] != nil {
                self.ISP = dict["ISP"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Zones") && dict["Zones"] != nil {
                self.zones = dict["Zones"] as! [String]
            }
        }
    }
    public var APNs: [ListAPNsResponseBody.APNs]?

    public var maxResults: String?

    public var nextToken: String?

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
        if self.APNs != nil {
            var tmp : [Any] = []
            for k in self.APNs! {
                tmp.append(k.toMap())
            }
            map["APNs"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("APNs") && dict["APNs"] != nil {
            var tmp : [ListAPNsResponseBody.APNs] = []
            for v in dict["APNs"] as! [Any] {
                var model = ListAPNsResponseBody.APNs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.APNs = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class ListAPNsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAPNsResponseBody?

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
            var model = ListAPNsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAuthorizationRulesRequest : Tea.TeaModel {
    public var authorizationRuleIds: [String]?

    public var destination: String?

    public var destinationPort: String?

    public var destinationType: String?

    public var dns: Bool?

    public var maxResults: Int64?

    public var names: [String]?

    public var nextToken: String?

    public var policy: String?

    public var protocol_: String?

    public var statuses: [String]?

    public var type: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleIds != nil {
            map["AuthorizationRuleIds"] = self.authorizationRuleIds!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationPort != nil {
            map["DestinationPort"] = self.destinationPort!
        }
        if self.destinationType != nil {
            map["DestinationType"] = self.destinationType!
        }
        if self.dns != nil {
            map["Dns"] = self.dns!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleIds") && dict["AuthorizationRuleIds"] != nil {
            self.authorizationRuleIds = dict["AuthorizationRuleIds"] as! [String]
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationPort") && dict["DestinationPort"] != nil {
            self.destinationPort = dict["DestinationPort"] as! String
        }
        if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("Dns") && dict["Dns"] != nil {
            self.dns = dict["Dns"] as! Bool
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("Names") && dict["Names"] != nil {
            self.names = dict["Names"] as! [String]
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("Statuses") && dict["Statuses"] != nil {
            self.statuses = dict["Statuses"] as! [String]
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class ListAuthorizationRulesResponseBody : Tea.TeaModel {
    public class AuthorizationRules : Tea.TeaModel {
        public var authorizationRuleId: String?

        public var createTime: String?

        public var description_: String?

        public var destination: String?

        public var destinationPort: String?

        public var destinationType: String?

        public var dns: Bool?

        public var name: String?

        public var policy: String?

        public var protocol_: String?

        public var sourceCidr: String?

        public var status: String?

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
            if self.authorizationRuleId != nil {
                map["AuthorizationRuleId"] = self.authorizationRuleId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destination != nil {
                map["Destination"] = self.destination!
            }
            if self.destinationPort != nil {
                map["DestinationPort"] = self.destinationPort!
            }
            if self.destinationType != nil {
                map["DestinationType"] = self.destinationType!
            }
            if self.dns != nil {
                map["Dns"] = self.dns!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.sourceCidr != nil {
                map["SourceCidr"] = self.sourceCidr!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthorizationRuleId") && dict["AuthorizationRuleId"] != nil {
                self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Destination") && dict["Destination"] != nil {
                self.destination = dict["Destination"] as! String
            }
            if dict.keys.contains("DestinationPort") && dict["DestinationPort"] != nil {
                self.destinationPort = dict["DestinationPort"] as! String
            }
            if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
                self.destinationType = dict["DestinationType"] as! String
            }
            if dict.keys.contains("Dns") && dict["Dns"] != nil {
                self.dns = dict["Dns"] as! Bool
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Policy") && dict["Policy"] != nil {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("SourceCidr") && dict["SourceCidr"] != nil {
                self.sourceCidr = dict["SourceCidr"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var authorizationRules: [ListAuthorizationRulesResponseBody.AuthorizationRules]?

    public var maxResults: String?

    public var nextToken: String?

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
        if self.authorizationRules != nil {
            var tmp : [Any] = []
            for k in self.authorizationRules! {
                tmp.append(k.toMap())
            }
            map["AuthorizationRules"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRules") && dict["AuthorizationRules"] != nil {
            var tmp : [ListAuthorizationRulesResponseBody.AuthorizationRules] = []
            for v in dict["AuthorizationRules"] as! [Any] {
                var model = ListAuthorizationRulesResponseBody.AuthorizationRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.authorizationRules = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class ListAuthorizationRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAuthorizationRulesResponseBody?

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
            var model = ListAuthorizationRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBatchOperateCardsTasksRequest : Tea.TeaModel {
    public var batchOperateCardsTaskIds: [String]?

    public var maxResults: Int64?

    public var names: [String]?

    public var nextToken: String?

    public var regionId: String?

    public var statuses: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchOperateCardsTaskIds != nil {
            map["BatchOperateCardsTaskIds"] = self.batchOperateCardsTaskIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchOperateCardsTaskIds") && dict["BatchOperateCardsTaskIds"] != nil {
            self.batchOperateCardsTaskIds = dict["BatchOperateCardsTaskIds"] as! [String]
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("Names") && dict["Names"] != nil {
            self.names = dict["Names"] as! [String]
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Statuses") && dict["Statuses"] != nil {
            self.statuses = dict["Statuses"] as! [String]
        }
    }
}

public class ListBatchOperateCardsTasksResponseBody : Tea.TeaModel {
    public class BatchOperateCardsTasks : Tea.TeaModel {
        public class WirelessCloudConnectors : Tea.TeaModel {
            public var status: String?

            public var wirelessCloudConnectorId: String?

            public override init() {
                super.init()
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
                if self.wirelessCloudConnectorId != nil {
                    map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
                    self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
                }
            }
        }
        public var batchOperateCardsTaskId: String?

        public var createTime: String?

        public var description_: String?

        public var effectType: String?

        public var iccidsOssFilePath: String?

        public var name: String?

        public var operateResultOssFilePath: String?

        public var operateType: String?

        public var status: String?

        public var threshold: String?

        public var wirelessCloudConnectors: [ListBatchOperateCardsTasksResponseBody.BatchOperateCardsTasks.WirelessCloudConnectors]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchOperateCardsTaskId != nil {
                map["BatchOperateCardsTaskId"] = self.batchOperateCardsTaskId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.effectType != nil {
                map["EffectType"] = self.effectType!
            }
            if self.iccidsOssFilePath != nil {
                map["IccidsOssFilePath"] = self.iccidsOssFilePath!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operateResultOssFilePath != nil {
                map["OperateResultOssFilePath"] = self.operateResultOssFilePath!
            }
            if self.operateType != nil {
                map["OperateType"] = self.operateType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            if self.wirelessCloudConnectors != nil {
                var tmp : [Any] = []
                for k in self.wirelessCloudConnectors! {
                    tmp.append(k.toMap())
                }
                map["WirelessCloudConnectors"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BatchOperateCardsTaskId") && dict["BatchOperateCardsTaskId"] != nil {
                self.batchOperateCardsTaskId = dict["BatchOperateCardsTaskId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EffectType") && dict["EffectType"] != nil {
                self.effectType = dict["EffectType"] as! String
            }
            if dict.keys.contains("IccidsOssFilePath") && dict["IccidsOssFilePath"] != nil {
                self.iccidsOssFilePath = dict["IccidsOssFilePath"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperateResultOssFilePath") && dict["OperateResultOssFilePath"] != nil {
                self.operateResultOssFilePath = dict["OperateResultOssFilePath"] as! String
            }
            if dict.keys.contains("OperateType") && dict["OperateType"] != nil {
                self.operateType = dict["OperateType"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Threshold") && dict["Threshold"] != nil {
                self.threshold = dict["Threshold"] as! String
            }
            if dict.keys.contains("WirelessCloudConnectors") && dict["WirelessCloudConnectors"] != nil {
                var tmp : [ListBatchOperateCardsTasksResponseBody.BatchOperateCardsTasks.WirelessCloudConnectors] = []
                for v in dict["WirelessCloudConnectors"] as! [Any] {
                    var model = ListBatchOperateCardsTasksResponseBody.BatchOperateCardsTasks.WirelessCloudConnectors()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.wirelessCloudConnectors = tmp
            }
        }
    }
    public var batchOperateCardsTasks: [ListBatchOperateCardsTasksResponseBody.BatchOperateCardsTasks]?

    public var maxResults: String?

    public var nextToken: String?

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
        if self.batchOperateCardsTasks != nil {
            var tmp : [Any] = []
            for k in self.batchOperateCardsTasks! {
                tmp.append(k.toMap())
            }
            map["BatchOperateCardsTasks"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchOperateCardsTasks") && dict["BatchOperateCardsTasks"] != nil {
            var tmp : [ListBatchOperateCardsTasksResponseBody.BatchOperateCardsTasks] = []
            for v in dict["BatchOperateCardsTasks"] as! [Any] {
                var model = ListBatchOperateCardsTasksResponseBody.BatchOperateCardsTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.batchOperateCardsTasks = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class ListBatchOperateCardsTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBatchOperateCardsTasksResponseBody?

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
            var model = ListBatchOperateCardsTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCardAreaLimitSupportAreaRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var provinceName: String?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.provinceName != nil {
            map["ProvinceName"] = self.provinceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("ProvinceName") && dict["ProvinceName"] != nil {
            self.provinceName = dict["ProvinceName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListCardAreaLimitSupportAreaResponseBody : Tea.TeaModel {
    public var provinces: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.provinces != nil {
            map["Provinces"] = self.provinces!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Provinces") && dict["Provinces"] != nil {
            self.provinces = dict["Provinces"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListCardAreaLimitSupportAreaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCardAreaLimitSupportAreaResponseBody?

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
            var model = ListCardAreaLimitSupportAreaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCardDayUsagesRequest : Tea.TeaModel {
    public var iccids: [String]?

    public var latestMonthNum: Int32?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccids != nil {
            map["Iccids"] = self.iccids!
        }
        if self.latestMonthNum != nil {
            map["LatestMonthNum"] = self.latestMonthNum!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccids") && dict["Iccids"] != nil {
            self.iccids = dict["Iccids"] as! [String]
        }
        if dict.keys.contains("LatestMonthNum") && dict["LatestMonthNum"] != nil {
            self.latestMonthNum = dict["LatestMonthNum"] as! Int32
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class ListCardDayUsagesResponseBody : Tea.TeaModel {
    public class Cards : Tea.TeaModel {
        public class UsageDataMonths : Tea.TeaModel {
            public class CardDayUsages : Tea.TeaModel {
                public var day: String?

                public var usageData: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.day != nil {
                        map["Day"] = self.day!
                    }
                    if self.usageData != nil {
                        map["UsageData"] = self.usageData!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Day") && dict["Day"] != nil {
                        self.day = dict["Day"] as! String
                    }
                    if dict.keys.contains("UsageData") && dict["UsageData"] != nil {
                        self.usageData = dict["UsageData"] as! String
                    }
                }
            }
            public var cardDayUsages: [ListCardDayUsagesResponseBody.Cards.UsageDataMonths.CardDayUsages]?

            public var month: String?

            public var usageDataMonth: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cardDayUsages != nil {
                    var tmp : [Any] = []
                    for k in self.cardDayUsages! {
                        tmp.append(k.toMap())
                    }
                    map["CardDayUsages"] = tmp
                }
                if self.month != nil {
                    map["Month"] = self.month!
                }
                if self.usageDataMonth != nil {
                    map["UsageDataMonth"] = self.usageDataMonth!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CardDayUsages") && dict["CardDayUsages"] != nil {
                    var tmp : [ListCardDayUsagesResponseBody.Cards.UsageDataMonths.CardDayUsages] = []
                    for v in dict["CardDayUsages"] as! [Any] {
                        var model = ListCardDayUsagesResponseBody.Cards.UsageDataMonths.CardDayUsages()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.cardDayUsages = tmp
                }
                if dict.keys.contains("Month") && dict["Month"] != nil {
                    self.month = dict["Month"] as! String
                }
                if dict.keys.contains("UsageDataMonth") && dict["UsageDataMonth"] != nil {
                    self.usageDataMonth = dict["UsageDataMonth"] as! String
                }
            }
        }
        public var iccid: String?

        public var usageDataMonths: [ListCardDayUsagesResponseBody.Cards.UsageDataMonths]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.iccid != nil {
                map["Iccid"] = self.iccid!
            }
            if self.usageDataMonths != nil {
                var tmp : [Any] = []
                for k in self.usageDataMonths! {
                    tmp.append(k.toMap())
                }
                map["UsageDataMonths"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
                self.iccid = dict["Iccid"] as! String
            }
            if dict.keys.contains("UsageDataMonths") && dict["UsageDataMonths"] != nil {
                var tmp : [ListCardDayUsagesResponseBody.Cards.UsageDataMonths] = []
                for v in dict["UsageDataMonths"] as! [Any] {
                    var model = ListCardDayUsagesResponseBody.Cards.UsageDataMonths()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.usageDataMonths = tmp
            }
        }
    }
    public var cards: [ListCardDayUsagesResponseBody.Cards]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cards != nil {
            var tmp : [Any] = []
            for k in self.cards! {
                tmp.append(k.toMap())
            }
            map["Cards"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cards") && dict["Cards"] != nil {
            var tmp : [ListCardDayUsagesResponseBody.Cards] = []
            for v in dict["Cards"] as! [Any] {
                var model = ListCardDayUsagesResponseBody.Cards()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.cards = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListCardDayUsagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCardDayUsagesResponseBody?

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
            var model = ListCardDayUsagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCardUsagesRequest : Tea.TeaModel {
    public var iccids: [String]?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccids != nil {
            map["Iccids"] = self.iccids!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccids") && dict["Iccids"] != nil {
            self.iccids = dict["Iccids"] as! [String]
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class ListCardUsagesResponseBody : Tea.TeaModel {
    public class Cards : Tea.TeaModel {
        public var iccid: String?

        public var usageDataMonth: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.iccid != nil {
                map["Iccid"] = self.iccid!
            }
            if self.usageDataMonth != nil {
                map["UsageDataMonth"] = self.usageDataMonth!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
                self.iccid = dict["Iccid"] as! String
            }
            if dict.keys.contains("UsageDataMonth") && dict["UsageDataMonth"] != nil {
                self.usageDataMonth = dict["UsageDataMonth"] as! Int64
            }
        }
    }
    public var cards: [ListCardUsagesResponseBody.Cards]?

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
        if self.cards != nil {
            var tmp : [Any] = []
            for k in self.cards! {
                tmp.append(k.toMap())
            }
            map["Cards"] = tmp
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
        if dict.keys.contains("Cards") && dict["Cards"] != nil {
            var tmp : [ListCardUsagesResponseBody.Cards] = []
            for v in dict["Cards"] as! [Any] {
                var model = ListCardUsagesResponseBody.Cards()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.cards = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class ListCardUsagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCardUsagesResponseBody?

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
            var model = ListCardUsagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCardsRequest : Tea.TeaModel {
    public var apn: String?

    public var iccid: String?

    public var iccids: [String]?

    public var ipAddress: String?

    public var lock: Bool?

    public var maxResults: Int64?

    public var msisdn: String?

    public var netLinkId: String?

    public var nextToken: String?

    public var online: Bool?

    public var statuses: [String]?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apn != nil {
            map["Apn"] = self.apn!
        }
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.iccids != nil {
            map["Iccids"] = self.iccids!
        }
        if self.ipAddress != nil {
            map["IpAddress"] = self.ipAddress!
        }
        if self.lock != nil {
            map["Lock"] = self.lock!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.msisdn != nil {
            map["Msisdn"] = self.msisdn!
        }
        if self.netLinkId != nil {
            map["NetLinkId"] = self.netLinkId!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.online != nil {
            map["Online"] = self.online!
        }
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Apn") && dict["Apn"] != nil {
            self.apn = dict["Apn"] as! String
        }
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("Iccids") && dict["Iccids"] != nil {
            self.iccids = dict["Iccids"] as! [String]
        }
        if dict.keys.contains("IpAddress") && dict["IpAddress"] != nil {
            self.ipAddress = dict["IpAddress"] as! String
        }
        if dict.keys.contains("Lock") && dict["Lock"] != nil {
            self.lock = dict["Lock"] as! Bool
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("Msisdn") && dict["Msisdn"] != nil {
            self.msisdn = dict["Msisdn"] as! String
        }
        if dict.keys.contains("NetLinkId") && dict["NetLinkId"] != nil {
            self.netLinkId = dict["NetLinkId"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Online") && dict["Online"] != nil {
            self.online = dict["Online"] as! Bool
        }
        if dict.keys.contains("Statuses") && dict["Statuses"] != nil {
            self.statuses = dict["Statuses"] as! [String]
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class ListCardsResponseBody : Tea.TeaModel {
    public class Cards : Tea.TeaModel {
        public var APN: String?

        public var activatedTime: String?

        public var businessStatus: String?

        public var description_: String?

        public var ISP: String?

        public var iccid: String?

        public var imei: String?

        public var imsi: String?

        public var ipAddress: String?

        public var lock: Bool?

        public var msisdn: String?

        public var name: String?

        public var netType: String?

        public var orderId: String?

        public var spec: String?

        public var status: String?

        public var usageDataMonth: Int64?

        public var usageDataTotal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.APN != nil {
                map["APN"] = self.APN!
            }
            if self.activatedTime != nil {
                map["ActivatedTime"] = self.activatedTime!
            }
            if self.businessStatus != nil {
                map["BusinessStatus"] = self.businessStatus!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.ISP != nil {
                map["ISP"] = self.ISP!
            }
            if self.iccid != nil {
                map["Iccid"] = self.iccid!
            }
            if self.imei != nil {
                map["Imei"] = self.imei!
            }
            if self.imsi != nil {
                map["Imsi"] = self.imsi!
            }
            if self.ipAddress != nil {
                map["IpAddress"] = self.ipAddress!
            }
            if self.lock != nil {
                map["Lock"] = self.lock!
            }
            if self.msisdn != nil {
                map["Msisdn"] = self.msisdn!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.netType != nil {
                map["NetType"] = self.netType!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.spec != nil {
                map["Spec"] = self.spec!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.usageDataMonth != nil {
                map["UsageDataMonth"] = self.usageDataMonth!
            }
            if self.usageDataTotal != nil {
                map["UsageDataTotal"] = self.usageDataTotal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("APN") && dict["APN"] != nil {
                self.APN = dict["APN"] as! String
            }
            if dict.keys.contains("ActivatedTime") && dict["ActivatedTime"] != nil {
                self.activatedTime = dict["ActivatedTime"] as! String
            }
            if dict.keys.contains("BusinessStatus") && dict["BusinessStatus"] != nil {
                self.businessStatus = dict["BusinessStatus"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ISP") && dict["ISP"] != nil {
                self.ISP = dict["ISP"] as! String
            }
            if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
                self.iccid = dict["Iccid"] as! String
            }
            if dict.keys.contains("Imei") && dict["Imei"] != nil {
                self.imei = dict["Imei"] as! String
            }
            if dict.keys.contains("Imsi") && dict["Imsi"] != nil {
                self.imsi = dict["Imsi"] as! String
            }
            if dict.keys.contains("IpAddress") && dict["IpAddress"] != nil {
                self.ipAddress = dict["IpAddress"] as! String
            }
            if dict.keys.contains("Lock") && dict["Lock"] != nil {
                self.lock = dict["Lock"] as! Bool
            }
            if dict.keys.contains("Msisdn") && dict["Msisdn"] != nil {
                self.msisdn = dict["Msisdn"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NetType") && dict["NetType"] != nil {
                self.netType = dict["NetType"] as! String
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("Spec") && dict["Spec"] != nil {
                self.spec = dict["Spec"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UsageDataMonth") && dict["UsageDataMonth"] != nil {
                self.usageDataMonth = dict["UsageDataMonth"] as! Int64
            }
            if dict.keys.contains("UsageDataTotal") && dict["UsageDataTotal"] != nil {
                self.usageDataTotal = dict["UsageDataTotal"] as! String
            }
        }
    }
    public var cards: [ListCardsResponseBody.Cards]?

    public var maxResults: String?

    public var nextToken: String?

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
        if self.cards != nil {
            var tmp : [Any] = []
            for k in self.cards! {
                tmp.append(k.toMap())
            }
            map["Cards"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cards") && dict["Cards"] != nil {
            var tmp : [ListCardsResponseBody.Cards] = []
            for v in dict["Cards"] as! [Any] {
                var model = ListCardsResponseBody.Cards()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.cards = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class ListCardsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCardsResponseBody?

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
            var model = ListCardsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDataPackagesRequest : Tea.TeaModel {
    public var dataPackageIds: [String]?

    public var maxResults: Int64?

    public var names: [String]?

    public var nextToken: String?

    public var statuses: [String]?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataPackageIds != nil {
            map["DataPackageIds"] = self.dataPackageIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataPackageIds") && dict["DataPackageIds"] != nil {
            self.dataPackageIds = dict["DataPackageIds"] as! [String]
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("Names") && dict["Names"] != nil {
            self.names = dict["Names"] as! [String]
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Statuses") && dict["Statuses"] != nil {
            self.statuses = dict["Statuses"] as! [String]
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class ListDataPackagesResponseBody : Tea.TeaModel {
    public class DataPackages : Tea.TeaModel {
        public var cardCount: String?

        public var createTime: String?

        public var dataPackageId: String?

        public var expiredTime: String?

        public var ISP: String?

        public var name: String?

        public var size: String?

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
            if self.cardCount != nil {
                map["CardCount"] = self.cardCount!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataPackageId != nil {
                map["DataPackageId"] = self.dataPackageId!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.ISP != nil {
                map["ISP"] = self.ISP!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CardCount") && dict["CardCount"] != nil {
                self.cardCount = dict["CardCount"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DataPackageId") && dict["DataPackageId"] != nil {
                self.dataPackageId = dict["DataPackageId"] as! String
            }
            if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("ISP") && dict["ISP"] != nil {
                self.ISP = dict["ISP"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var dataPackages: [ListDataPackagesResponseBody.DataPackages]?

    public var maxResults: String?

    public var nextToken: String?

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
        if self.dataPackages != nil {
            var tmp : [Any] = []
            for k in self.dataPackages! {
                tmp.append(k.toMap())
            }
            map["DataPackages"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataPackages") && dict["DataPackages"] != nil {
            var tmp : [ListDataPackagesResponseBody.DataPackages] = []
            for v in dict["DataPackages"] as! [Any] {
                var model = ListDataPackagesResponseBody.DataPackages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataPackages = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class ListDataPackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataPackagesResponseBody?

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
            var model = ListDataPackagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDiagnoseInfoForSingleCardRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionNo: String?

    public var source: String?

    public var sourceType: String?

    public var status: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class ListDiagnoseInfoForSingleCardResponseBody : Tea.TeaModel {
    public class DiagnoseInfo : Tea.TeaModel {
        public var beginTime: Int64?

        public var cardIp: String?

        public var destination: String?

        public var destinationType: String?

        public var diagnoseTaskId: String?

        public var diagnoseTime: Int64?

        public var endTime: Int64?

        public var iccId: String?

        public var source: String?

        public var sourceType: String?

        public var status: String?

        public var wirelessCloudConnectorId: String?

        public override init() {
            super.init()
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
            if self.cardIp != nil {
                map["CardIp"] = self.cardIp!
            }
            if self.destination != nil {
                map["Destination"] = self.destination!
            }
            if self.destinationType != nil {
                map["DestinationType"] = self.destinationType!
            }
            if self.diagnoseTaskId != nil {
                map["DiagnoseTaskId"] = self.diagnoseTaskId!
            }
            if self.diagnoseTime != nil {
                map["DiagnoseTime"] = self.diagnoseTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.iccId != nil {
                map["IccId"] = self.iccId!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.wirelessCloudConnectorId != nil {
                map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
                self.beginTime = dict["BeginTime"] as! Int64
            }
            if dict.keys.contains("CardIp") && dict["CardIp"] != nil {
                self.cardIp = dict["CardIp"] as! String
            }
            if dict.keys.contains("Destination") && dict["Destination"] != nil {
                self.destination = dict["Destination"] as! String
            }
            if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
                self.destinationType = dict["DestinationType"] as! String
            }
            if dict.keys.contains("DiagnoseTaskId") && dict["DiagnoseTaskId"] != nil {
                self.diagnoseTaskId = dict["DiagnoseTaskId"] as! String
            }
            if dict.keys.contains("DiagnoseTime") && dict["DiagnoseTime"] != nil {
                self.diagnoseTime = dict["DiagnoseTime"] as! Int64
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("IccId") && dict["IccId"] != nil {
                self.iccId = dict["IccId"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
                self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
            }
        }
    }
    public var diagnoseInfo: [ListDiagnoseInfoForSingleCardResponseBody.DiagnoseInfo]?

    public var maxResults: Int64?

    public var nextToken: String?

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
        if self.diagnoseInfo != nil {
            var tmp : [Any] = []
            for k in self.diagnoseInfo! {
                tmp.append(k.toMap())
            }
            map["DiagnoseInfo"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiagnoseInfo") && dict["DiagnoseInfo"] != nil {
            var tmp : [ListDiagnoseInfoForSingleCardResponseBody.DiagnoseInfo] = []
            for v in dict["DiagnoseInfo"] as! [Any] {
                var model = ListDiagnoseInfoForSingleCardResponseBody.DiagnoseInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.diagnoseInfo = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDiagnoseInfoForSingleCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDiagnoseInfoForSingleCardResponseBody?

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
            var model = ListDiagnoseInfoForSingleCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupAuthorizationRulesRequest : Tea.TeaModel {
    public var authorizationRuleIds: [String]?

    public var destination: String?

    public var destinationPort: String?

    public var destinationType: String?

    public var dns: Bool?

    public var maxResults: Int64?

    public var names: [String]?

    public var nextToken: String?

    public var policy: String?

    public var protocol_: String?

    public var statuses: [String]?

    public var type: String?

    public var wirelessCloudConnectorGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleIds != nil {
            map["AuthorizationRuleIds"] = self.authorizationRuleIds!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationPort != nil {
            map["DestinationPort"] = self.destinationPort!
        }
        if self.destinationType != nil {
            map["DestinationType"] = self.destinationType!
        }
        if self.dns != nil {
            map["Dns"] = self.dns!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.wirelessCloudConnectorGroupId != nil {
            map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleIds") && dict["AuthorizationRuleIds"] != nil {
            self.authorizationRuleIds = dict["AuthorizationRuleIds"] as! [String]
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationPort") && dict["DestinationPort"] != nil {
            self.destinationPort = dict["DestinationPort"] as! String
        }
        if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("Dns") && dict["Dns"] != nil {
            self.dns = dict["Dns"] as! Bool
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("Names") && dict["Names"] != nil {
            self.names = dict["Names"] as! [String]
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("Statuses") && dict["Statuses"] != nil {
            self.statuses = dict["Statuses"] as! [String]
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
            self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
        }
    }
}

public class ListGroupAuthorizationRulesResponseBody : Tea.TeaModel {
    public class GroupAuthorizationRules : Tea.TeaModel {
        public var authorizationRuleId: String?

        public var createTime: String?

        public var description_: String?

        public var destination: String?

        public var destinationPort: String?

        public var destinationType: String?

        public var dns: Bool?

        public var name: String?

        public var policy: String?

        public var protocol_: String?

        public var sourceCidr: String?

        public var status: String?

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
            if self.authorizationRuleId != nil {
                map["AuthorizationRuleId"] = self.authorizationRuleId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destination != nil {
                map["Destination"] = self.destination!
            }
            if self.destinationPort != nil {
                map["DestinationPort"] = self.destinationPort!
            }
            if self.destinationType != nil {
                map["DestinationType"] = self.destinationType!
            }
            if self.dns != nil {
                map["Dns"] = self.dns!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.sourceCidr != nil {
                map["SourceCidr"] = self.sourceCidr!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthorizationRuleId") && dict["AuthorizationRuleId"] != nil {
                self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Destination") && dict["Destination"] != nil {
                self.destination = dict["Destination"] as! String
            }
            if dict.keys.contains("DestinationPort") && dict["DestinationPort"] != nil {
                self.destinationPort = dict["DestinationPort"] as! String
            }
            if dict.keys.contains("DestinationType") && dict["DestinationType"] != nil {
                self.destinationType = dict["DestinationType"] as! String
            }
            if dict.keys.contains("Dns") && dict["Dns"] != nil {
                self.dns = dict["Dns"] as! Bool
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Policy") && dict["Policy"] != nil {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("SourceCidr") && dict["SourceCidr"] != nil {
                self.sourceCidr = dict["SourceCidr"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var groupAuthorizationRules: [ListGroupAuthorizationRulesResponseBody.GroupAuthorizationRules]?

    public var maxResults: String?

    public var nextToken: String?

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
        if self.groupAuthorizationRules != nil {
            var tmp : [Any] = []
            for k in self.groupAuthorizationRules! {
                tmp.append(k.toMap())
            }
            map["GroupAuthorizationRules"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupAuthorizationRules") && dict["GroupAuthorizationRules"] != nil {
            var tmp : [ListGroupAuthorizationRulesResponseBody.GroupAuthorizationRules] = []
            for v in dict["GroupAuthorizationRules"] as! [Any] {
                var model = ListGroupAuthorizationRulesResponseBody.GroupAuthorizationRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.groupAuthorizationRules = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class ListGroupAuthorizationRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupAuthorizationRulesResponseBody?

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
            var model = ListGroupAuthorizationRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIoTCloudConnectorBackhaulRouteRequest : Tea.TeaModel {
    public var netLinkId: String?

    public var regionId: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.netLinkId != nil {
            map["NetLinkId"] = self.netLinkId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetLinkId") && dict["NetLinkId"] != nil {
            self.netLinkId = dict["NetLinkId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class ListIoTCloudConnectorBackhaulRouteResponseBody : Tea.TeaModel {
    public class Routes : Tea.TeaModel {
        public var description_: String?

        public var destinationCidrBlock: String?

        public var nextHopId: String?

        public var nextHopType: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destinationCidrBlock != nil {
                map["DestinationCidrBlock"] = self.destinationCidrBlock!
            }
            if self.nextHopId != nil {
                map["NextHopId"] = self.nextHopId!
            }
            if self.nextHopType != nil {
                map["NextHopType"] = self.nextHopType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestinationCidrBlock") && dict["DestinationCidrBlock"] != nil {
                self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
            }
            if dict.keys.contains("NextHopId") && dict["NextHopId"] != nil {
                self.nextHopId = dict["NextHopId"] as! String
            }
            if dict.keys.contains("NextHopType") && dict["NextHopType"] != nil {
                self.nextHopType = dict["NextHopType"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var netLinkId: String?

    public var requestId: String?

    public var routes: [ListIoTCloudConnectorBackhaulRouteResponseBody.Routes]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.netLinkId != nil {
            map["NetLinkId"] = self.netLinkId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.routes != nil {
            var tmp : [Any] = []
            for k in self.routes! {
                tmp.append(k.toMap())
            }
            map["Routes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetLinkId") && dict["NetLinkId"] != nil {
            self.netLinkId = dict["NetLinkId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Routes") && dict["Routes"] != nil {
            var tmp : [ListIoTCloudConnectorBackhaulRouteResponseBody.Routes] = []
            for v in dict["Routes"] as! [Any] {
                var model = ListIoTCloudConnectorBackhaulRouteResponseBody.Routes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.routes = tmp
        }
    }
}

public class ListIoTCloudConnectorBackhaulRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIoTCloudConnectorBackhaulRouteResponseBody?

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
            var model = ListIoTCloudConnectorBackhaulRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOrdersRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public var orderAction: String?

    public var orderIds: [String]?

    public var statuses: [String]?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderAction != nil {
            map["OrderAction"] = self.orderAction!
        }
        if self.orderIds != nil {
            map["OrderIds"] = self.orderIds!
        }
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderAction") && dict["OrderAction"] != nil {
            self.orderAction = dict["OrderAction"] as! String
        }
        if dict.keys.contains("OrderIds") && dict["OrderIds"] != nil {
            self.orderIds = dict["OrderIds"] as! [String]
        }
        if dict.keys.contains("Statuses") && dict["Statuses"] != nil {
            self.statuses = dict["Statuses"] as! [String]
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class ListOrdersResponseBody : Tea.TeaModel {
    public class Orders : Tea.TeaModel {
        public var action: String?

        public var cardCount: String?

        public var cardNetType: String?

        public var cardType: String?

        public var contactName: String?

        public var contactPhone: String?

        public var createTime: String?

        public var description_: String?

        public var logisticsId: String?

        public var logisticsStatus: String?

        public var logisticsType: String?

        public var logisticsUpdateTime: String?

        public var orderId: String?

        public var payTime: String?

        public var postAddress: String?

        public var regionId: String?

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
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.cardCount != nil {
                map["CardCount"] = self.cardCount!
            }
            if self.cardNetType != nil {
                map["CardNetType"] = self.cardNetType!
            }
            if self.cardType != nil {
                map["CardType"] = self.cardType!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.contactPhone != nil {
                map["ContactPhone"] = self.contactPhone!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.logisticsId != nil {
                map["LogisticsId"] = self.logisticsId!
            }
            if self.logisticsStatus != nil {
                map["LogisticsStatus"] = self.logisticsStatus!
            }
            if self.logisticsType != nil {
                map["LogisticsType"] = self.logisticsType!
            }
            if self.logisticsUpdateTime != nil {
                map["LogisticsUpdateTime"] = self.logisticsUpdateTime!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.payTime != nil {
                map["PayTime"] = self.payTime!
            }
            if self.postAddress != nil {
                map["PostAddress"] = self.postAddress!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") && dict["Action"] != nil {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("CardCount") && dict["CardCount"] != nil {
                self.cardCount = dict["CardCount"] as! String
            }
            if dict.keys.contains("CardNetType") && dict["CardNetType"] != nil {
                self.cardNetType = dict["CardNetType"] as! String
            }
            if dict.keys.contains("CardType") && dict["CardType"] != nil {
                self.cardType = dict["CardType"] as! String
            }
            if dict.keys.contains("ContactName") && dict["ContactName"] != nil {
                self.contactName = dict["ContactName"] as! String
            }
            if dict.keys.contains("ContactPhone") && dict["ContactPhone"] != nil {
                self.contactPhone = dict["ContactPhone"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("LogisticsId") && dict["LogisticsId"] != nil {
                self.logisticsId = dict["LogisticsId"] as! String
            }
            if dict.keys.contains("LogisticsStatus") && dict["LogisticsStatus"] != nil {
                self.logisticsStatus = dict["LogisticsStatus"] as! String
            }
            if dict.keys.contains("LogisticsType") && dict["LogisticsType"] != nil {
                self.logisticsType = dict["LogisticsType"] as! String
            }
            if dict.keys.contains("LogisticsUpdateTime") && dict["LogisticsUpdateTime"] != nil {
                self.logisticsUpdateTime = dict["LogisticsUpdateTime"] as! String
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("PayTime") && dict["PayTime"] != nil {
                self.payTime = dict["PayTime"] as! String
            }
            if dict.keys.contains("PostAddress") && dict["PostAddress"] != nil {
                self.postAddress = dict["PostAddress"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var maxResults: String?

    public var nextToken: String?

    public var orders: [ListOrdersResponseBody.Orders]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orders != nil {
            var tmp : [Any] = []
            for k in self.orders! {
                tmp.append(k.toMap())
            }
            map["Orders"] = tmp
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
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Orders") && dict["Orders"] != nil {
            var tmp : [ListOrdersResponseBody.Orders] = []
            for v in dict["Orders"] as! [Any] {
                var model = ListOrdersResponseBody.Orders()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.orders = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class ListOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOrdersResponseBody?

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
            var model = ListOrdersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

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
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var regions: [ListRegionsResponseBody.Regions]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var tmp : [ListRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = ListRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegionsResponseBody?

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
            var model = ListRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWirelessCloudConnectorGroupsRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public var regionId: String?

    public var wirelessCloudConnectorGroupIds: [String]?

    public var wirelessCloudConnectorGroupNames: [String]?

    public var wirelessCloudConnectorGroupStatus: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.wirelessCloudConnectorGroupIds != nil {
            map["WirelessCloudConnectorGroupIds"] = self.wirelessCloudConnectorGroupIds!
        }
        if self.wirelessCloudConnectorGroupNames != nil {
            map["WirelessCloudConnectorGroupNames"] = self.wirelessCloudConnectorGroupNames!
        }
        if self.wirelessCloudConnectorGroupStatus != nil {
            map["WirelessCloudConnectorGroupStatus"] = self.wirelessCloudConnectorGroupStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorGroupIds") && dict["WirelessCloudConnectorGroupIds"] != nil {
            self.wirelessCloudConnectorGroupIds = dict["WirelessCloudConnectorGroupIds"] as! [String]
        }
        if dict.keys.contains("WirelessCloudConnectorGroupNames") && dict["WirelessCloudConnectorGroupNames"] != nil {
            self.wirelessCloudConnectorGroupNames = dict["WirelessCloudConnectorGroupNames"] as! [String]
        }
        if dict.keys.contains("WirelessCloudConnectorGroupStatus") && dict["WirelessCloudConnectorGroupStatus"] != nil {
            self.wirelessCloudConnectorGroupStatus = dict["WirelessCloudConnectorGroupStatus"] as! [String]
        }
    }
}

public class ListWirelessCloudConnectorGroupsResponseBody : Tea.TeaModel {
    public class WirelessCloudConnectorGroups : Tea.TeaModel {
        public class WirelessCloudConnectors : Tea.TeaModel {
            public var businessType: String?

            public var cardCount: String?

            public var createTime: String?

            public var dataPackageId: String?

            public var dataPackageType: String?

            public var description_: String?

            public var name: String?

            public var regionId: String?

            public var serviceType: String?

            public var status: String?

            public var useCase: String?

            public var wirelessCloudConnectorId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.businessType != nil {
                    map["BusinessType"] = self.businessType!
                }
                if self.cardCount != nil {
                    map["CardCount"] = self.cardCount!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dataPackageId != nil {
                    map["DataPackageId"] = self.dataPackageId!
                }
                if self.dataPackageType != nil {
                    map["DataPackageType"] = self.dataPackageType!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.serviceType != nil {
                    map["ServiceType"] = self.serviceType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.useCase != nil {
                    map["UseCase"] = self.useCase!
                }
                if self.wirelessCloudConnectorId != nil {
                    map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
                    self.businessType = dict["BusinessType"] as! String
                }
                if dict.keys.contains("CardCount") && dict["CardCount"] != nil {
                    self.cardCount = dict["CardCount"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DataPackageId") && dict["DataPackageId"] != nil {
                    self.dataPackageId = dict["DataPackageId"] as! String
                }
                if dict.keys.contains("DataPackageType") && dict["DataPackageType"] != nil {
                    self.dataPackageType = dict["DataPackageType"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ServiceType") && dict["ServiceType"] != nil {
                    self.serviceType = dict["ServiceType"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UseCase") && dict["UseCase"] != nil {
                    self.useCase = dict["UseCase"] as! String
                }
                if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
                    self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var regionId: String?

        public var status: String?

        public var wirelessCloudConnectorGroupId: String?

        public var wirelessCloudConnectors: [ListWirelessCloudConnectorGroupsResponseBody.WirelessCloudConnectorGroups.WirelessCloudConnectors]?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.wirelessCloudConnectorGroupId != nil {
                map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
            }
            if self.wirelessCloudConnectors != nil {
                var tmp : [Any] = []
                for k in self.wirelessCloudConnectors! {
                    tmp.append(k.toMap())
                }
                map["WirelessCloudConnectors"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
                self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
            }
            if dict.keys.contains("WirelessCloudConnectors") && dict["WirelessCloudConnectors"] != nil {
                var tmp : [ListWirelessCloudConnectorGroupsResponseBody.WirelessCloudConnectorGroups.WirelessCloudConnectors] = []
                for v in dict["WirelessCloudConnectors"] as! [Any] {
                    var model = ListWirelessCloudConnectorGroupsResponseBody.WirelessCloudConnectorGroups.WirelessCloudConnectors()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.wirelessCloudConnectors = tmp
            }
        }
    }
    public var maxResults: String?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: String?

    public var wirelessCloudConnectorGroups: [ListWirelessCloudConnectorGroupsResponseBody.WirelessCloudConnectorGroups]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.wirelessCloudConnectorGroups != nil {
            var tmp : [Any] = []
            for k in self.wirelessCloudConnectorGroups! {
                tmp.append(k.toMap())
            }
            map["WirelessCloudConnectorGroups"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorGroups") && dict["WirelessCloudConnectorGroups"] != nil {
            var tmp : [ListWirelessCloudConnectorGroupsResponseBody.WirelessCloudConnectorGroups] = []
            for v in dict["WirelessCloudConnectorGroups"] as! [Any] {
                var model = ListWirelessCloudConnectorGroupsResponseBody.WirelessCloudConnectorGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.wirelessCloudConnectorGroups = tmp
        }
    }
}

public class ListWirelessCloudConnectorGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWirelessCloudConnectorGroupsResponseBody?

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
            var model = ListWirelessCloudConnectorGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWirelessCloudConnectorsRequest : Tea.TeaModel {
    public var businessType: String?

    public var isInGroup: String?

    public var maxResults: Int64?

    public var names: [String]?

    public var nextToken: String?

    public var regionId: String?

    public var statuses: [String]?

    public var wirelessCloudConnectorGroupId: String?

    public var wirelessCloudConnectorIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.isInGroup != nil {
            map["IsInGroup"] = self.isInGroup!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        if self.wirelessCloudConnectorGroupId != nil {
            map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
        }
        if self.wirelessCloudConnectorIds != nil {
            map["WirelessCloudConnectorIds"] = self.wirelessCloudConnectorIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("IsInGroup") && dict["IsInGroup"] != nil {
            self.isInGroup = dict["IsInGroup"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("Names") && dict["Names"] != nil {
            self.names = dict["Names"] as! [String]
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Statuses") && dict["Statuses"] != nil {
            self.statuses = dict["Statuses"] as! [String]
        }
        if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
            self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorIds") && dict["WirelessCloudConnectorIds"] != nil {
            self.wirelessCloudConnectorIds = dict["WirelessCloudConnectorIds"] as! [String]
        }
    }
}

public class ListWirelessCloudConnectorsResponseBody : Tea.TeaModel {
    public class WirelessCloudConnectors : Tea.TeaModel {
        public var businessType: String?

        public var cardCount: String?

        public var createTime: String?

        public var dataPackageId: String?

        public var dataPackageType: String?

        public var description_: String?

        public var name: String?

        public var regionId: String?

        public var serviceType: String?

        public var status: String?

        public var useCase: String?

        public var wirelessCloudConnectorGroupId: String?

        public var wirelessCloudConnectorId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessType != nil {
                map["BusinessType"] = self.businessType!
            }
            if self.cardCount != nil {
                map["CardCount"] = self.cardCount!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataPackageId != nil {
                map["DataPackageId"] = self.dataPackageId!
            }
            if self.dataPackageType != nil {
                map["DataPackageType"] = self.dataPackageType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.useCase != nil {
                map["UseCase"] = self.useCase!
            }
            if self.wirelessCloudConnectorGroupId != nil {
                map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
            }
            if self.wirelessCloudConnectorId != nil {
                map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
                self.businessType = dict["BusinessType"] as! String
            }
            if dict.keys.contains("CardCount") && dict["CardCount"] != nil {
                self.cardCount = dict["CardCount"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DataPackageId") && dict["DataPackageId"] != nil {
                self.dataPackageId = dict["DataPackageId"] as! String
            }
            if dict.keys.contains("DataPackageType") && dict["DataPackageType"] != nil {
                self.dataPackageType = dict["DataPackageType"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ServiceType") && dict["ServiceType"] != nil {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UseCase") && dict["UseCase"] != nil {
                self.useCase = dict["UseCase"] as! String
            }
            if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
                self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
            }
            if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
                self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
            }
        }
    }
    public var maxResults: String?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: String?

    public var wirelessCloudConnectors: [ListWirelessCloudConnectorsResponseBody.WirelessCloudConnectors]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.wirelessCloudConnectors != nil {
            var tmp : [Any] = []
            for k in self.wirelessCloudConnectors! {
                tmp.append(k.toMap())
            }
            map["WirelessCloudConnectors"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectors") && dict["WirelessCloudConnectors"] != nil {
            var tmp : [ListWirelessCloudConnectorsResponseBody.WirelessCloudConnectors] = []
            for v in dict["WirelessCloudConnectors"] as! [Any] {
                var model = ListWirelessCloudConnectorsResponseBody.WirelessCloudConnectors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.wirelessCloudConnectors = tmp
        }
    }
}

public class ListWirelessCloudConnectorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWirelessCloudConnectorsResponseBody?

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
            var model = ListWirelessCloudConnectorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListZonesRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListZonesResponseBody : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public var localName: String?

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
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var requestId: String?

    public var zones: [ListZonesResponseBody.Zones]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.zones != nil {
            var tmp : [Any] = []
            for k in self.zones! {
                tmp.append(k.toMap())
            }
            map["Zones"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Zones") && dict["Zones"] != nil {
            var tmp : [ListZonesResponseBody.Zones] = []
            for v in dict["Zones"] as! [Any] {
                var model = ListZonesResponseBody.Zones()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.zones = tmp
        }
    }
}

public class ListZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListZonesResponseBody?

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
            var model = ListZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LockCardsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var iccids: [String]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.iccids != nil {
            map["Iccids"] = self.iccids!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Iccids") && dict["Iccids"] != nil {
            self.iccids = dict["Iccids"] as! [String]
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class LockCardsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class LockCardsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LockCardsResponseBody?

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
            var model = LockCardsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyWirelessCloudConnectorFeatureRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var featureName: String?

    public var featureValue: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.featureName != nil {
            map["FeatureName"] = self.featureName!
        }
        if self.featureValue != nil {
            map["FeatureValue"] = self.featureValue!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("FeatureName") && dict["FeatureName"] != nil {
            self.featureName = dict["FeatureName"] as! String
        }
        if dict.keys.contains("FeatureValue") && dict["FeatureValue"] != nil {
            self.featureValue = dict["FeatureValue"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class ModifyWirelessCloudConnectorFeatureResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyWirelessCloudConnectorFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWirelessCloudConnectorFeatureResponseBody?

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
            var model = ModifyWirelessCloudConnectorFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenCc5gServiceRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class OpenCc5gServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class OpenCc5gServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenCc5gServiceResponseBody?

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
            var model = OpenCc5gServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RebindCardsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var iccids: [String]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.iccids != nil {
            map["Iccids"] = self.iccids!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Iccids") && dict["Iccids"] != nil {
            self.iccids = dict["Iccids"] as! [String]
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RebindCardsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RebindCardsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebindCardsResponseBody?

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
            var model = RebindCardsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveWirelessCloudConnectorFromGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var wirelessCloudConnectorGroupId: String?

    public var wirelessCloudConnectorIds: [String]?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.wirelessCloudConnectorGroupId != nil {
            map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
        }
        if self.wirelessCloudConnectorIds != nil {
            map["WirelessCloudConnectorIds"] = self.wirelessCloudConnectorIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
            self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorIds") && dict["WirelessCloudConnectorIds"] != nil {
            self.wirelessCloudConnectorIds = dict["WirelessCloudConnectorIds"] as! [String]
        }
    }
}

public class RemoveWirelessCloudConnectorFromGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RemoveWirelessCloudConnectorFromGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveWirelessCloudConnectorFromGroupResponseBody?

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
            var model = RemoveWirelessCloudConnectorFromGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetAreaLimitCardsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var iccids: [String]?

    public var province: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.iccids != nil {
            map["Iccids"] = self.iccids!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Iccids") && dict["Iccids"] != nil {
            self.iccids = dict["Iccids"] as! [String]
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ResetAreaLimitCardsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ResetAreaLimitCardsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAreaLimitCardsResponseBody?

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
            var model = ResetAreaLimitCardsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeCardsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var iccids: [String]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.iccids != nil {
            map["Iccids"] = self.iccids!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Iccids") && dict["Iccids"] != nil {
            self.iccids = dict["Iccids"] as! [String]
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ResumeCardsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ResumeCardsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeCardsResponseBody?

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
            var model = ResumeCardsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevokeNetLinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var netLinkId: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.netLinkId != nil {
            map["NetLinkId"] = self.netLinkId!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("NetLinkId") && dict["NetLinkId"] != nil {
            self.netLinkId = dict["NetLinkId"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class RevokeNetLinkResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RevokeNetLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeNetLinkResponseBody?

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
            var model = RevokeNetLinkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopCardsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var iccids: [String]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.iccids != nil {
            map["Iccids"] = self.iccids!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Iccids") && dict["Iccids"] != nil {
            self.iccids = dict["Iccids"] as! [String]
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StopCardsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class StopCardsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopCardsResponseBody?

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
            var model = StopCardsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitDiagnoseTaskForSingleCardRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var destination: String?

    public var endTime: Int64?

    public var regionNo: String?

    public var resourceUid: Int64?

    public var source: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.resourceUid != nil {
            map["ResourceUid"] = self.resourceUid!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("ResourceUid") && dict["ResourceUid"] != nil {
            self.resourceUid = dict["ResourceUid"] as! Int64
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class SubmitDiagnoseTaskForSingleCardResponseBody : Tea.TeaModel {
    public var diagnoseTaskId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diagnoseTaskId != nil {
            map["DiagnoseTaskId"] = self.diagnoseTaskId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiagnoseTaskId") && dict["DiagnoseTaskId"] != nil {
            self.diagnoseTaskId = dict["DiagnoseTaskId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitDiagnoseTaskForSingleCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitDiagnoseTaskForSingleCardResponseBody?

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
            var model = SubmitDiagnoseTaskForSingleCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SwitchWirelessCloudConnectorToBusinessRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class SwitchWirelessCloudConnectorToBusinessResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SwitchWirelessCloudConnectorToBusinessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchWirelessCloudConnectorToBusinessResponseBody?

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
            var model = SwitchWirelessCloudConnectorToBusinessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnlockCardsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var iccids: [String]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.iccids != nil {
            map["Iccids"] = self.iccids!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Iccids") && dict["Iccids"] != nil {
            self.iccids = dict["Iccids"] as! [String]
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UnlockCardsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UnlockCardsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnlockCardsResponseBody?

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
            var model = UnlockCardsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAuthorizationRuleRequest : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var clientToken: String?

    public var description_: String?

    public var destination: String?

    public var destinationPort: String?

    public var dryRun: Bool?

    public var name: String?

    public var policy: String?

    public var protocol_: String?

    public var sourceCidr: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationPort != nil {
            map["DestinationPort"] = self.destinationPort!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.sourceCidr != nil {
            map["SourceCidr"] = self.sourceCidr!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") && dict["AuthorizationRuleId"] != nil {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationPort") && dict["DestinationPort"] != nil {
            self.destinationPort = dict["DestinationPort"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("SourceCidr") && dict["SourceCidr"] != nil {
            self.sourceCidr = dict["SourceCidr"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class UpdateAuthorizationRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAuthorizationRuleResponseBody?

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
            var model = UpdateAuthorizationRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateBatchOperateCardsTaskRequest : Tea.TeaModel {
    public var batchOperateCardsTaskId: String?

    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var effectType: String?

    public var iccids: [String]?

    public var iccidsOssFilePath: String?

    public var name: String?

    public var operateType: String?

    public var regionId: String?

    public var threshold: Int64?

    public var wirelessCloudConnectorIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchOperateCardsTaskId != nil {
            map["BatchOperateCardsTaskId"] = self.batchOperateCardsTaskId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.effectType != nil {
            map["EffectType"] = self.effectType!
        }
        if self.iccids != nil {
            map["Iccids"] = self.iccids!
        }
        if self.iccidsOssFilePath != nil {
            map["IccidsOssFilePath"] = self.iccidsOssFilePath!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        if self.wirelessCloudConnectorIds != nil {
            map["WirelessCloudConnectorIds"] = self.wirelessCloudConnectorIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchOperateCardsTaskId") && dict["BatchOperateCardsTaskId"] != nil {
            self.batchOperateCardsTaskId = dict["BatchOperateCardsTaskId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EffectType") && dict["EffectType"] != nil {
            self.effectType = dict["EffectType"] as! String
        }
        if dict.keys.contains("Iccids") && dict["Iccids"] != nil {
            self.iccids = dict["Iccids"] as! [String]
        }
        if dict.keys.contains("IccidsOssFilePath") && dict["IccidsOssFilePath"] != nil {
            self.iccidsOssFilePath = dict["IccidsOssFilePath"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OperateType") && dict["OperateType"] != nil {
            self.operateType = dict["OperateType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Threshold") && dict["Threshold"] != nil {
            self.threshold = dict["Threshold"] as! Int64
        }
        if dict.keys.contains("WirelessCloudConnectorIds") && dict["WirelessCloudConnectorIds"] != nil {
            self.wirelessCloudConnectorIds = dict["WirelessCloudConnectorIds"] as! [String]
        }
    }
}

public class UpdateBatchOperateCardsTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateBatchOperateCardsTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBatchOperateCardsTaskResponseBody?

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
            var model = UpdateBatchOperateCardsTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCardRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var iccid: String?

    public var name: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class UpdateCardResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCardResponseBody?

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
            var model = UpdateCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDNSAuthorizationRuleRequest : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var clientToken: String?

    public var description_: String?

    public var destinationIp: String?

    public var dryRun: Bool?

    public var name: String?

    public var sourceDNSIp: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destinationIp != nil {
            map["DestinationIp"] = self.destinationIp!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sourceDNSIp != nil {
            map["SourceDNSIp"] = self.sourceDNSIp!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") && dict["AuthorizationRuleId"] != nil {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestinationIp") && dict["DestinationIp"] != nil {
            self.destinationIp = dict["DestinationIp"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SourceDNSIp") && dict["SourceDNSIp"] != nil {
            self.sourceDNSIp = dict["SourceDNSIp"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class UpdateDNSAuthorizationRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateDNSAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDNSAuthorizationRuleResponseBody?

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
            var model = UpdateDNSAuthorizationRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupAuthorizationRuleRequest : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var clientToken: String?

    public var description_: String?

    public var destination: String?

    public var destinationPort: String?

    public var dryRun: Bool?

    public var name: String?

    public var policy: String?

    public var protocol_: String?

    public var sourceCidr: String?

    public var wirelessCloudConnectorGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.destinationPort != nil {
            map["DestinationPort"] = self.destinationPort!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.sourceCidr != nil {
            map["SourceCidr"] = self.sourceCidr!
        }
        if self.wirelessCloudConnectorGroupId != nil {
            map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") && dict["AuthorizationRuleId"] != nil {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Destination") && dict["Destination"] != nil {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationPort") && dict["DestinationPort"] != nil {
            self.destinationPort = dict["DestinationPort"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("SourceCidr") && dict["SourceCidr"] != nil {
            self.sourceCidr = dict["SourceCidr"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
            self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
        }
    }
}

public class UpdateGroupAuthorizationRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateGroupAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupAuthorizationRuleResponseBody?

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
            var model = UpdateGroupAuthorizationRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupDnsAuthorizationRuleRequest : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var clientToken: String?

    public var description_: String?

    public var destinationIp: String?

    public var dryRun: Bool?

    public var name: String?

    public var sourceDNSIp: String?

    public var wirelessCloudConnectorGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destinationIp != nil {
            map["DestinationIp"] = self.destinationIp!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sourceDNSIp != nil {
            map["SourceDNSIp"] = self.sourceDNSIp!
        }
        if self.wirelessCloudConnectorGroupId != nil {
            map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") && dict["AuthorizationRuleId"] != nil {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestinationIp") && dict["DestinationIp"] != nil {
            self.destinationIp = dict["DestinationIp"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SourceDNSIp") && dict["SourceDNSIp"] != nil {
            self.sourceDNSIp = dict["SourceDNSIp"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
            self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
        }
    }
}

public class UpdateGroupDnsAuthorizationRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateGroupDnsAuthorizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupDnsAuthorizationRuleResponseBody?

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
            var model = UpdateGroupDnsAuthorizationRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWirelessCloudConnectorRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var name: String?

    public var wirelessCloudConnectorId: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.wirelessCloudConnectorId != nil {
            map["WirelessCloudConnectorId"] = self.wirelessCloudConnectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorId") && dict["WirelessCloudConnectorId"] != nil {
            self.wirelessCloudConnectorId = dict["WirelessCloudConnectorId"] as! String
        }
    }
}

public class UpdateWirelessCloudConnectorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateWirelessCloudConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWirelessCloudConnectorResponseBody?

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
            var model = UpdateWirelessCloudConnectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWirelessCloudConnectorGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var name: String?

    public var wirelessCloudConnectorGroupId: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.wirelessCloudConnectorGroupId != nil {
            map["WirelessCloudConnectorGroupId"] = self.wirelessCloudConnectorGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("WirelessCloudConnectorGroupId") && dict["WirelessCloudConnectorGroupId"] != nil {
            self.wirelessCloudConnectorGroupId = dict["WirelessCloudConnectorGroupId"] as! String
        }
    }
}

public class UpdateWirelessCloudConnectorGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateWirelessCloudConnectorGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWirelessCloudConnectorGroupResponseBody?

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
            var model = UpdateWirelessCloudConnectorGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
