import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddCidrToConnectionPoolRequest : Tea.TeaModel {
    public var cidrs: [String]?

    public var clientToken: String?

    public var connectionPoolId: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.cidrs != nil {
            map["Cidrs"] = self.cidrs!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.connectionPoolId != nil {
            map["ConnectionPoolId"] = self.connectionPoolId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cidrs") {
            self.cidrs = dict["Cidrs"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectionPoolId") {
            self.connectionPoolId = dict["ConnectionPoolId"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AddCidrToConnectionPoolResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AddCidrToConnectionPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCidrToConnectionPoolResponseBody?

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
            var model = AddCidrToConnectionPoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddIoTCloudConnectorToGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorGroupId: String?

    public var ioTCloudConnectorId: [String]?

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
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AddIoTCloudConnectorToGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AddIoTCloudConnectorToGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddIoTCloudConnectorToGroupResponseBody?

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
            var model = AddIoTCloudConnectorToGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateIpWithConnectionPoolRequest : Tea.TeaModel {
    public var clientToken: String?

    public var connectionPoolId: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var ips: [String]?

    public var ipsFilePath: String?

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
        if self.connectionPoolId != nil {
            map["ConnectionPoolId"] = self.connectionPoolId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.ips != nil {
            map["Ips"] = self.ips!
        }
        if self.ipsFilePath != nil {
            map["IpsFilePath"] = self.ipsFilePath!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectionPoolId") {
            self.connectionPoolId = dict["ConnectionPoolId"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("Ips") {
            self.ips = dict["Ips"] as! [String]
        }
        if dict.keys.contains("IpsFilePath") {
            self.ipsFilePath = dict["IpsFilePath"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AssociateIpWithConnectionPoolResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AssociateIpWithConnectionPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateIpWithConnectionPoolResponseBody?

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
            var model = AssociateIpWithConnectionPoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateVSwitchWithIoTCloudConnectorRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var regionId: String?

    public var vSwitchList: [String]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vSwitchList != nil {
            map["VSwitchList"] = self.vSwitchList!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VSwitchList") {
            self.vSwitchList = dict["VSwitchList"] as! [String]
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class AssociateVSwitchWithIoTCloudConnectorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AssociateVSwitchWithIoTCloudConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateVSwitchWithIoTCloudConnectorResponseBody?

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
            var model = AssociateVSwitchWithIoTCloudConnectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfirmIoTCloudConnectorRequest : Tea.TeaModel {
    public var clientToken: String?

    public var confirmStatus: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.confirmStatus != nil {
            map["ConfirmStatus"] = self.confirmStatus!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfirmStatus") {
            self.confirmStatus = dict["ConfirmStatus"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ConfirmIoTCloudConnectorResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class ConfirmIoTCloudConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmIoTCloudConnectorResponseBody?

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
            var model = ConfirmIoTCloudConnectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAuthorizationRuleRequest : Tea.TeaModel {
    public var authorizationRuleDescription: String?

    public var authorizationRuleName: String?

    public var clientToken: String?

    public var destination: String?

    public var destinationPort: String?

    public var destinationType: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var policy: String?

    public var protocol_: String?

    public var regionId: String?

    public var sourceCidrs: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleDescription != nil {
            map["AuthorizationRuleDescription"] = self.authorizationRuleDescription!
        }
        if self.authorizationRuleName != nil {
            map["AuthorizationRuleName"] = self.authorizationRuleName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceCidrs != nil {
            map["SourceCidrs"] = self.sourceCidrs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleDescription") {
            self.authorizationRuleDescription = dict["AuthorizationRuleDescription"] as! String
        }
        if dict.keys.contains("AuthorizationRuleName") {
            self.authorizationRuleName = dict["AuthorizationRuleName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationPort") {
            self.destinationPort = dict["DestinationPort"] as! String
        }
        if dict.keys.contains("DestinationType") {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceCidrs") {
            self.sourceCidrs = dict["SourceCidrs"] as! [String]
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
        if dict.keys.contains("AuthorizationRuleId") {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAuthorizationRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAuthorizationRulesRequest : Tea.TeaModel {
    public class AuthorizationRules : Tea.TeaModel {
        public var description_: String?

        public var destination: String?

        public var destinationPort: String?

        public var destinationType: String?

        public var name: String?

        public var policy: String?

        public var protocol_: String?

        public var sourceCidr: String?

        public override init() {
            super.init()
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
            if self.destination != nil {
                map["Destination"] = self.destination!
            }
            if self.destinationPort != nil {
                map["DestinationPort"] = self.destinationPort!
            }
            if self.destinationType != nil {
                map["DestinationType"] = self.destinationType!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Destination") {
                self.destination = dict["Destination"] as! String
            }
            if dict.keys.contains("DestinationPort") {
                self.destinationPort = dict["DestinationPort"] as! String
            }
            if dict.keys.contains("DestinationType") {
                self.destinationType = dict["DestinationType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Policy") {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("SourceCidr") {
                self.sourceCidr = dict["SourceCidr"] as! String
            }
        }
    }
    public var authorizationRules: [CreateAuthorizationRulesRequest.AuthorizationRules]?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.authorizationRules != nil {
            var tmp : [Any] = []
            for k in self.authorizationRules! {
                tmp.append(k.toMap())
            }
            map["AuthorizationRules"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRules") {
            self.authorizationRules = dict["AuthorizationRules"] as! [CreateAuthorizationRulesRequest.AuthorizationRules]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateAuthorizationRulesResponseBody : Tea.TeaModel {
    public var authorizationRuleIds: [String]?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleIds") {
            self.authorizationRuleIds = dict["AuthorizationRuleIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAuthorizationRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAuthorizationRulesResponseBody?

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
            var model = CreateAuthorizationRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateConnectionPoolRequest : Tea.TeaModel {
    public var cidrs: [String]?

    public var clientToken: String?

    public var connectionPoolDescription: String?

    public var connectionPoolName: String?

    public var count: Int64?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.cidrs != nil {
            map["Cidrs"] = self.cidrs!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.connectionPoolDescription != nil {
            map["ConnectionPoolDescription"] = self.connectionPoolDescription!
        }
        if self.connectionPoolName != nil {
            map["ConnectionPoolName"] = self.connectionPoolName!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cidrs") {
            self.cidrs = dict["Cidrs"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectionPoolDescription") {
            self.connectionPoolDescription = dict["ConnectionPoolDescription"] as! String
        }
        if dict.keys.contains("ConnectionPoolName") {
            self.connectionPoolName = dict["ConnectionPoolName"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int64
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateConnectionPoolResponseBody : Tea.TeaModel {
    public var connectionPoolId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionPoolId != nil {
            map["ConnectionPoolId"] = self.connectionPoolId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionPoolId") {
            self.connectionPoolId = dict["ConnectionPoolId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateConnectionPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConnectionPoolResponseBody?

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
            var model = CreateConnectionPoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDNSServiceRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var DNSServiceRuleDescription: String?

    public var DNSServiceRuleName: String?

    public var destination: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var regionId: String?

    public var serviceType: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DNSServiceRuleDescription != nil {
            map["DNSServiceRuleDescription"] = self.DNSServiceRuleDescription!
        }
        if self.DNSServiceRuleName != nil {
            map["DNSServiceRuleName"] = self.DNSServiceRuleName!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DNSServiceRuleDescription") {
            self.DNSServiceRuleDescription = dict["DNSServiceRuleDescription"] as! String
        }
        if dict.keys.contains("DNSServiceRuleName") {
            self.DNSServiceRuleName = dict["DNSServiceRuleName"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
    }
}

public class CreateDNSServiceRuleResponseBody : Tea.TeaModel {
    public var DNSServiceRuleId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DNSServiceRuleId != nil {
            map["DNSServiceRuleId"] = self.DNSServiceRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DNSServiceRuleId") {
            self.DNSServiceRuleId = dict["DNSServiceRuleId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDNSServiceRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDNSServiceRuleResponseBody?

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
            var model = CreateDNSServiceRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupAuthorizationRuleRequest : Tea.TeaModel {
    public var authorizationRuleDescription: String?

    public var authorizationRuleName: String?

    public var clientToken: String?

    public var destination: String?

    public var destinationPort: String?

    public var destinationType: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorGroupId: String?

    public var policy: String?

    public var protocol_: String?

    public var regionId: String?

    public var sourceCidrs: [String]?

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
        if self.authorizationRuleDescription != nil {
            map["AuthorizationRuleDescription"] = self.authorizationRuleDescription!
        }
        if self.authorizationRuleName != nil {
            map["AuthorizationRuleName"] = self.authorizationRuleName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
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
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceCidrs != nil {
            map["SourceCidrs"] = self.sourceCidrs!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleDescription") {
            self.authorizationRuleDescription = dict["AuthorizationRuleDescription"] as! String
        }
        if dict.keys.contains("AuthorizationRuleName") {
            self.authorizationRuleName = dict["AuthorizationRuleName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationPort") {
            self.destinationPort = dict["DestinationPort"] as! String
        }
        if dict.keys.contains("DestinationType") {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceCidrs") {
            self.sourceCidrs = dict["SourceCidrs"] as! [String]
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateGroupAuthorizationRuleResponseBody : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var ioTCloudConnectorGroupId: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateGroupAuthorizationRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupDNSServiceRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var DNSServiceRuleDescription: String?

    public var DNSServiceRuleName: String?

    public var destination: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorGroupId: String?

    public var regionId: String?

    public var serviceType: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DNSServiceRuleDescription != nil {
            map["DNSServiceRuleDescription"] = self.DNSServiceRuleDescription!
        }
        if self.DNSServiceRuleName != nil {
            map["DNSServiceRuleName"] = self.DNSServiceRuleName!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DNSServiceRuleDescription") {
            self.DNSServiceRuleDescription = dict["DNSServiceRuleDescription"] as! String
        }
        if dict.keys.contains("DNSServiceRuleName") {
            self.DNSServiceRuleName = dict["DNSServiceRuleName"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
    }
}

public class CreateGroupDNSServiceRuleResponseBody : Tea.TeaModel {
    public var DNSServiceRuleId: String?

    public var ioTCloudConnectorGroupId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DNSServiceRuleId != nil {
            map["DNSServiceRuleId"] = self.DNSServiceRuleId!
        }
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DNSServiceRuleId") {
            self.DNSServiceRuleId = dict["DNSServiceRuleId"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateGroupDNSServiceRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupDNSServiceRuleResponseBody?

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
            var model = CreateGroupDNSServiceRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupIpMappingRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var destinationIp: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorGroupId: String?

    public var ipMappingRuleDescription: String?

    public var ipMappingRuleName: String?

    public var mappingIp: String?

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
        if self.destinationIp != nil {
            map["DestinationIp"] = self.destinationIp!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.ipMappingRuleDescription != nil {
            map["IpMappingRuleDescription"] = self.ipMappingRuleDescription!
        }
        if self.ipMappingRuleName != nil {
            map["IpMappingRuleName"] = self.ipMappingRuleName!
        }
        if self.mappingIp != nil {
            map["MappingIp"] = self.mappingIp!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DestinationIp") {
            self.destinationIp = dict["DestinationIp"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("IpMappingRuleDescription") {
            self.ipMappingRuleDescription = dict["IpMappingRuleDescription"] as! String
        }
        if dict.keys.contains("IpMappingRuleName") {
            self.ipMappingRuleName = dict["IpMappingRuleName"] as! String
        }
        if dict.keys.contains("MappingIp") {
            self.mappingIp = dict["MappingIp"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateGroupIpMappingRuleResponseBody : Tea.TeaModel {
    public var groupIpMappingRuleId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupIpMappingRuleId != nil {
            map["GroupIpMappingRuleId"] = self.groupIpMappingRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupIpMappingRuleId") {
            self.groupIpMappingRuleId = dict["GroupIpMappingRuleId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateGroupIpMappingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupIpMappingRuleResponseBody?

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
            var model = CreateGroupIpMappingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateIoTCloudConnectorRequest : Tea.TeaModel {
    public var APN: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ISP: String?

    public var ioTCloudConnectorDescription: String?

    public var ioTCloudConnectorName: String?

    public var regionId: String?

    public var resourceUid: Int64?

    public var type: String?

    public var wildcardDomainEnabled: Bool?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ISP != nil {
            map["ISP"] = self.ISP!
        }
        if self.ioTCloudConnectorDescription != nil {
            map["IoTCloudConnectorDescription"] = self.ioTCloudConnectorDescription!
        }
        if self.ioTCloudConnectorName != nil {
            map["IoTCloudConnectorName"] = self.ioTCloudConnectorName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceUid != nil {
            map["ResourceUid"] = self.resourceUid!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.wildcardDomainEnabled != nil {
            map["WildcardDomainEnabled"] = self.wildcardDomainEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("APN") {
            self.APN = dict["APN"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ISP") {
            self.ISP = dict["ISP"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorDescription") {
            self.ioTCloudConnectorDescription = dict["IoTCloudConnectorDescription"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorName") {
            self.ioTCloudConnectorName = dict["IoTCloudConnectorName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceUid") {
            self.resourceUid = dict["ResourceUid"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("WildcardDomainEnabled") {
            self.wildcardDomainEnabled = dict["WildcardDomainEnabled"] as! Bool
        }
    }
}

public class CreateIoTCloudConnectorResponseBody : Tea.TeaModel {
    public var ioTCloudConnectorId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateIoTCloudConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIoTCloudConnectorResponseBody?

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
            var model = CreateIoTCloudConnectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateIoTCloudConnectorBackhaulRouteRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateIoTCloudConnectorBackhaulRouteResponseBody : Tea.TeaModel {
    public var ioTCloudConnectorId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateIoTCloudConnectorBackhaulRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateIoTCloudConnectorGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var name: String?

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
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateIoTCloudConnectorGroupResponseBody : Tea.TeaModel {
    public var ioTCloudConnectorGroupId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateIoTCloudConnectorGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIoTCloudConnectorGroupResponseBody?

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
            var model = CreateIoTCloudConnectorGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateIpMappingRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var destinationIp: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var ipMappingRuleDescription: String?

    public var ipMappingRuleName: String?

    public var mappingIp: String?

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
        if self.destinationIp != nil {
            map["DestinationIp"] = self.destinationIp!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.ipMappingRuleDescription != nil {
            map["IpMappingRuleDescription"] = self.ipMappingRuleDescription!
        }
        if self.ipMappingRuleName != nil {
            map["IpMappingRuleName"] = self.ipMappingRuleName!
        }
        if self.mappingIp != nil {
            map["MappingIp"] = self.mappingIp!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DestinationIp") {
            self.destinationIp = dict["DestinationIp"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("IpMappingRuleDescription") {
            self.ipMappingRuleDescription = dict["IpMappingRuleDescription"] as! String
        }
        if dict.keys.contains("IpMappingRuleName") {
            self.ipMappingRuleName = dict["IpMappingRuleName"] as! String
        }
        if dict.keys.contains("MappingIp") {
            self.mappingIp = dict["MappingIp"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateIpMappingRuleResponseBody : Tea.TeaModel {
    public var ipMappingRuleId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipMappingRuleId != nil {
            map["IpMappingRuleId"] = self.ipMappingRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpMappingRuleId") {
            self.ipMappingRuleId = dict["IpMappingRuleId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateIpMappingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIpMappingRuleResponseBody?

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
            var model = CreateIpMappingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var regionId: String?

    public var serviceDescription: String?

    public var serviceName: String?

    public override init() {
        super.init()
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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceDescription != nil {
            map["ServiceDescription"] = self.serviceDescription!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceDescription") {
            self.serviceDescription = dict["ServiceDescription"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
    }
}

public class CreateServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
    }
}

public class CreateServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceResponseBody?

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
            var model = CreateServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceEntryRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var regionId: String?

    public var serviceEntryDescription: String?

    public var serviceEntryName: String?

    public var serviceId: String?

    public var target: String?

    public var targetType: String?

    public override init() {
        super.init()
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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceEntryDescription != nil {
            map["ServiceEntryDescription"] = self.serviceEntryDescription!
        }
        if self.serviceEntryName != nil {
            map["ServiceEntryName"] = self.serviceEntryName!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceEntryDescription") {
            self.serviceEntryDescription = dict["ServiceEntryDescription"] as! String
        }
        if dict.keys.contains("ServiceEntryName") {
            self.serviceEntryName = dict["ServiceEntryName"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class CreateServiceEntryResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serviceEntryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceEntryId != nil {
            map["ServiceEntryId"] = self.serviceEntryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceEntryId") {
            self.serviceEntryId = dict["ServiceEntryId"] as! String
        }
    }
}

public class CreateServiceEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceEntryResponseBody?

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
            var model = CreateServiceEntryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAuthorizationRuleRequest : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAuthorizationRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteConnectionPoolRequest : Tea.TeaModel {
    public var clientToken: String?

    public var connectionPoolId: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.connectionPoolId != nil {
            map["ConnectionPoolId"] = self.connectionPoolId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectionPoolId") {
            self.connectionPoolId = dict["ConnectionPoolId"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteConnectionPoolResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteConnectionPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConnectionPoolResponseBody?

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
            var model = DeleteConnectionPoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDNSServiceRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var DNSServiceRuleId: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.DNSServiceRuleId != nil {
            map["DNSServiceRuleId"] = self.DNSServiceRuleId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DNSServiceRuleId") {
            self.DNSServiceRuleId = dict["DNSServiceRuleId"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteDNSServiceRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteDNSServiceRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDNSServiceRuleResponseBody?

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
            var model = DeleteDNSServiceRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGroupAuthorizationRuleRequest : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorGroupId: String?

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
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteGroupAuthorizationRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGroupDNSServiceRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var DNSServiceRuleId: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorGroupId: String?

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
        if self.DNSServiceRuleId != nil {
            map["DNSServiceRuleId"] = self.DNSServiceRuleId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DNSServiceRuleId") {
            self.DNSServiceRuleId = dict["DNSServiceRuleId"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteGroupDNSServiceRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteGroupDNSServiceRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGroupDNSServiceRuleResponseBody?

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
            var model = DeleteGroupDNSServiceRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGroupIpMappingRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var groupIpMappingRuleId: String?

    public var ioTCloudConnectorGroupId: String?

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
        if self.groupIpMappingRuleId != nil {
            map["GroupIpMappingRuleId"] = self.groupIpMappingRuleId!
        }
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("GroupIpMappingRuleId") {
            self.groupIpMappingRuleId = dict["GroupIpMappingRuleId"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteGroupIpMappingRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteGroupIpMappingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGroupIpMappingRuleResponseBody?

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
            var model = DeleteGroupIpMappingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIoTCloudConnectorRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteIoTCloudConnectorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteIoTCloudConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIoTCloudConnectorResponseBody?

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
            var model = DeleteIoTCloudConnectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIoTCloudConnectorGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorGroupId: String?

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
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteIoTCloudConnectorGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteIoTCloudConnectorGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIoTCloudConnectorGroupResponseBody?

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
            var model = DeleteIoTCloudConnectorGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIoTCloudConnetorBackhaulRouteRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteIoTCloudConnetorBackhaulRouteResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteIoTCloudConnetorBackhaulRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIoTCloudConnetorBackhaulRouteResponseBody?

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
            var model = DeleteIoTCloudConnetorBackhaulRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIpMappingRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var ipMappingRuleId: String?

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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.ipMappingRuleId != nil {
            map["IpMappingRuleId"] = self.ipMappingRuleId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("IpMappingRuleId") {
            self.ipMappingRuleId = dict["IpMappingRuleId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteIpMappingRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteIpMappingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIpMappingRuleResponseBody?

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
            var model = DeleteIpMappingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var regionId: String?

    public var serviceId: String?

    public override init() {
        super.init()
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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
    }
}

public class DeleteServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceResponseBody?

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
            var model = DeleteServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteServiceEntryRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var regionId: String?

    public var serviceEntryId: String?

    public var serviceId: String?

    public override init() {
        super.init()
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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceEntryId != nil {
            map["ServiceEntryId"] = self.serviceEntryId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceEntryId") {
            self.serviceEntryId = dict["ServiceEntryId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
    }
}

public class DeleteServiceEntryResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteServiceEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceEntryResponseBody?

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
            var model = DeleteServiceEntryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableIoTCloudConnectorAccessLogRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DisableIoTCloudConnectorAccessLogResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DisableIoTCloudConnectorAccessLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableIoTCloudConnectorAccessLogResponseBody?

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
            var model = DisableIoTCloudConnectorAccessLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DissociateIpFromConnectionPoolRequest : Tea.TeaModel {
    public var clientToken: String?

    public var connectionPoolId: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var ips: [String]?

    public var ipsFilePath: String?

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
        if self.connectionPoolId != nil {
            map["ConnectionPoolId"] = self.connectionPoolId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.ips != nil {
            map["Ips"] = self.ips!
        }
        if self.ipsFilePath != nil {
            map["IpsFilePath"] = self.ipsFilePath!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectionPoolId") {
            self.connectionPoolId = dict["ConnectionPoolId"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("Ips") {
            self.ips = dict["Ips"] as! [String]
        }
        if dict.keys.contains("IpsFilePath") {
            self.ipsFilePath = dict["IpsFilePath"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DissociateIpFromConnectionPoolResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DissociateIpFromConnectionPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DissociateIpFromConnectionPoolResponseBody?

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
            var model = DissociateIpFromConnectionPoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DissociateVSwitchFromIoTCloudConnectorRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DissociateVSwitchFromIoTCloudConnectorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DissociateVSwitchFromIoTCloudConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DissociateVSwitchFromIoTCloudConnectorResponseBody?

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
            var model = DissociateVSwitchFromIoTCloudConnectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableIoTCloudConnectorAccessLogRequest : Tea.TeaModel {
    public var accessLogSlsLogStore: String?

    public var accessLogSlsProject: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.accessLogSlsLogStore != nil {
            map["AccessLogSlsLogStore"] = self.accessLogSlsLogStore!
        }
        if self.accessLogSlsProject != nil {
            map["AccessLogSlsProject"] = self.accessLogSlsProject!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessLogSlsLogStore") {
            self.accessLogSlsLogStore = dict["AccessLogSlsLogStore"] as! String
        }
        if dict.keys.contains("AccessLogSlsProject") {
            self.accessLogSlsProject = dict["AccessLogSlsProject"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class EnableIoTCloudConnectorAccessLogResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class EnableIoTCloudConnectorAccessLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableIoTCloudConnectorAccessLogResponseBody?

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
            var model = EnableIoTCloudConnectorAccessLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConnectionPoolIpOperationResultRequest : Tea.TeaModel {
    public var connectionPoolId: String?

    public var ioTCloudConnectorId: String?

    public var queryRequestId: String?

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
        if self.connectionPoolId != nil {
            map["ConnectionPoolId"] = self.connectionPoolId!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.queryRequestId != nil {
            map["QueryRequestId"] = self.queryRequestId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionPoolId") {
            self.connectionPoolId = dict["ConnectionPoolId"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("QueryRequestId") {
            self.queryRequestId = dict["QueryRequestId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetConnectionPoolIpOperationResultResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resultFilePaths: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultFilePaths != nil {
            map["ResultFilePaths"] = self.resultFilePaths!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultFilePaths") {
            self.resultFilePaths = dict["ResultFilePaths"] as! [String]
        }
    }
}

public class GetConnectionPoolIpOperationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConnectionPoolIpOperationResultResponseBody?

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
            var model = GetConnectionPoolIpOperationResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDiagnoseResultForSingleCardRequest : Tea.TeaModel {
    public var diagnoseTaskId: String?

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
        if self.diagnoseTaskId != nil {
            map["DiagnoseTaskId"] = self.diagnoseTaskId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiagnoseTaskId") {
            self.diagnoseTaskId = dict["DiagnoseTaskId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetDiagnoseResultForSingleCardResponseBody : Tea.TeaModel {
    public class DiagnoseItem : Tea.TeaModel {
        public var part: String?

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
            if self.part != nil {
                map["Part"] = self.part!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Part") {
                self.part = dict["Part"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class ErrorResult : Tea.TeaModel {
        public var errorDesc: String?

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
            if dict.keys.contains("ErrorDesc") {
                self.errorDesc = dict["ErrorDesc"] as! String
            }
            if dict.keys.contains("ErrorLevel") {
                self.errorLevel = dict["ErrorLevel"] as! String
            }
            if dict.keys.contains("ErrorPart") {
                self.errorPart = dict["ErrorPart"] as! String
            }
            if dict.keys.contains("ErrorSuggestion") {
                self.errorSuggestion = dict["ErrorSuggestion"] as! String
            }
        }
    }
    public var beginTime: Int64?

    public var cardIp: String?

    public var destination: String?

    public var diagnoseItem: [GetDiagnoseResultForSingleCardResponseBody.DiagnoseItem]?

    public var endTime: Int64?

    public var errorResult: [GetDiagnoseResultForSingleCardResponseBody.ErrorResult]?

    public var iccId: String?

    public var ioTCloudConnectorId: String?

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
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.cardIp != nil {
            map["CardIp"] = self.cardIp!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
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
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CardIp") {
            self.cardIp = dict["CardIp"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DiagnoseItem") {
            self.diagnoseItem = dict["DiagnoseItem"] as! [GetDiagnoseResultForSingleCardResponseBody.DiagnoseItem]
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("ErrorResult") {
            self.errorResult = dict["ErrorResult"] as! [GetDiagnoseResultForSingleCardResponseBody.ErrorResult]
        }
        if dict.keys.contains("IccId") {
            self.iccId = dict["IccId"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDiagnoseResultForSingleCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIoTCloudConnectorAccessLogRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetIoTCloudConnectorAccessLogResponseBody : Tea.TeaModel {
    public var accessLogSlsLogStore: String?

    public var accessLogSlsProject: String?

    public var accessLogStatus: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessLogSlsLogStore != nil {
            map["AccessLogSlsLogStore"] = self.accessLogSlsLogStore!
        }
        if self.accessLogSlsProject != nil {
            map["AccessLogSlsProject"] = self.accessLogSlsProject!
        }
        if self.accessLogStatus != nil {
            map["AccessLogStatus"] = self.accessLogStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessLogSlsLogStore") {
            self.accessLogSlsLogStore = dict["AccessLogSlsLogStore"] as! String
        }
        if dict.keys.contains("AccessLogSlsProject") {
            self.accessLogSlsProject = dict["AccessLogSlsProject"] as! String
        }
        if dict.keys.contains("AccessLogStatus") {
            self.accessLogStatus = dict["AccessLogStatus"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetIoTCloudConnectorAccessLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIoTCloudConnectorAccessLogResponseBody?

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
            var model = GetIoTCloudConnectorAccessLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStsInfoAndOssPathRequest : Tea.TeaModel {
    public var clientToken: String?

    public var connectionPoolId: String?

    public var dryRun: Bool?

    public var fileName: String?

    public var ioTCloudConnectorId: String?

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
        if self.connectionPoolId != nil {
            map["ConnectionPoolId"] = self.connectionPoolId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectionPoolId") {
            self.connectionPoolId = dict["ConnectionPoolId"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetStsInfoAndOssPathResponseBody : Tea.TeaModel {
    public var accessKeyId: String?

    public var accessKeySecret: String?

    public var expiration: String?

    public var ossPath: String?

    public var requestId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKeyId != nil {
            map["AccessKeyId"] = self.accessKeyId!
        }
        if self.accessKeySecret != nil {
            map["AccessKeySecret"] = self.accessKeySecret!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.ossPath != nil {
            map["OssPath"] = self.ossPath!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKeyId") {
            self.accessKeyId = dict["AccessKeyId"] as! String
        }
        if dict.keys.contains("AccessKeySecret") {
            self.accessKeySecret = dict["AccessKeySecret"] as! String
        }
        if dict.keys.contains("Expiration") {
            self.expiration = dict["Expiration"] as! String
        }
        if dict.keys.contains("OssPath") {
            self.ossPath = dict["OssPath"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class GetStsInfoAndOssPathResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStsInfoAndOssPathResponseBody?

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
            var model = GetStsInfoAndOssPathResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GrantVirtualBorderRouterRequest : Tea.TeaModel {
    public var regionId: String?

    public var virtualBorderRouterId: String?

    public override init() {
        super.init()
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
        if self.virtualBorderRouterId != nil {
            map["VirtualBorderRouterId"] = self.virtualBorderRouterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualBorderRouterId") {
            self.virtualBorderRouterId = dict["VirtualBorderRouterId"] as! String
        }
    }
}

public class GrantVirtualBorderRouterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class GrantVirtualBorderRouterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantVirtualBorderRouterResponseBody?

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
            var model = GrantVirtualBorderRouterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAPNsRequest : Tea.TeaModel {
    public var APN: String?

    public var ISP: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("APN") {
            self.APN = dict["APN"] as! String
        }
        if dict.keys.contains("ISP") {
            self.ISP = dict["ISP"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListAPNsResponseBody : Tea.TeaModel {
    public class APNs : Tea.TeaModel {
        public var APN: String?

        public var description_: String?

        public var featureList: [String]?

        public var ISP: String?

        public var name: String?

        public var zoneList: [String]?

        public override init() {
            super.init()
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
            if self.featureList != nil {
                map["FeatureList"] = self.featureList!
            }
            if self.ISP != nil {
                map["ISP"] = self.ISP!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.zoneList != nil {
                map["ZoneList"] = self.zoneList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("APN") {
                self.APN = dict["APN"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("FeatureList") {
                self.featureList = dict["FeatureList"] as! [String]
            }
            if dict.keys.contains("ISP") {
                self.ISP = dict["ISP"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ZoneList") {
                self.zoneList = dict["ZoneList"] as! [String]
            }
        }
    }
    public var APNs: [ListAPNsResponseBody.APNs]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if dict.keys.contains("APNs") {
            self.APNs = dict["APNs"] as! [ListAPNsResponseBody.APNs]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAPNsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAuthorizationRulesRequest : Tea.TeaModel {
    public var authorizationRuleIds: [String]?

    public var authorizationRuleName: [String]?

    public var authorizationRuleStatus: [String]?

    public var authorizationRuleType: String?

    public var destination: [String]?

    public var destinationPort: [String]?

    public var destinationType: [String]?

    public var ioTCloudConnectorId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var policy: [String]?

    public var protocol_: [String]?

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
        if self.authorizationRuleIds != nil {
            map["AuthorizationRuleIds"] = self.authorizationRuleIds!
        }
        if self.authorizationRuleName != nil {
            map["AuthorizationRuleName"] = self.authorizationRuleName!
        }
        if self.authorizationRuleStatus != nil {
            map["AuthorizationRuleStatus"] = self.authorizationRuleStatus!
        }
        if self.authorizationRuleType != nil {
            map["AuthorizationRuleType"] = self.authorizationRuleType!
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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleIds") {
            self.authorizationRuleIds = dict["AuthorizationRuleIds"] as! [String]
        }
        if dict.keys.contains("AuthorizationRuleName") {
            self.authorizationRuleName = dict["AuthorizationRuleName"] as! [String]
        }
        if dict.keys.contains("AuthorizationRuleStatus") {
            self.authorizationRuleStatus = dict["AuthorizationRuleStatus"] as! [String]
        }
        if dict.keys.contains("AuthorizationRuleType") {
            self.authorizationRuleType = dict["AuthorizationRuleType"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! [String]
        }
        if dict.keys.contains("DestinationPort") {
            self.destinationPort = dict["DestinationPort"] as! [String]
        }
        if dict.keys.contains("DestinationType") {
            self.destinationType = dict["DestinationType"] as! [String]
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! [String]
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListAuthorizationRulesResponseBody : Tea.TeaModel {
    public class AuthorizationRules : Tea.TeaModel {
        public var authorizationRuleDescription: String?

        public var authorizationRuleId: String?

        public var authorizationRuleName: String?

        public var authorizationRuleStatus: String?

        public var authorizationRuleType: String?

        public var destination: String?

        public var destinationPort: String?

        public var destinationType: String?

        public var ioTCloudConnectorId: String?

        public var policy: String?

        public var protocol_: String?

        public var sourceCidrs: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorizationRuleDescription != nil {
                map["AuthorizationRuleDescription"] = self.authorizationRuleDescription!
            }
            if self.authorizationRuleId != nil {
                map["AuthorizationRuleId"] = self.authorizationRuleId!
            }
            if self.authorizationRuleName != nil {
                map["AuthorizationRuleName"] = self.authorizationRuleName!
            }
            if self.authorizationRuleStatus != nil {
                map["AuthorizationRuleStatus"] = self.authorizationRuleStatus!
            }
            if self.authorizationRuleType != nil {
                map["AuthorizationRuleType"] = self.authorizationRuleType!
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
            if self.ioTCloudConnectorId != nil {
                map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.sourceCidrs != nil {
                map["SourceCidrs"] = self.sourceCidrs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthorizationRuleDescription") {
                self.authorizationRuleDescription = dict["AuthorizationRuleDescription"] as! String
            }
            if dict.keys.contains("AuthorizationRuleId") {
                self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
            }
            if dict.keys.contains("AuthorizationRuleName") {
                self.authorizationRuleName = dict["AuthorizationRuleName"] as! String
            }
            if dict.keys.contains("AuthorizationRuleStatus") {
                self.authorizationRuleStatus = dict["AuthorizationRuleStatus"] as! String
            }
            if dict.keys.contains("AuthorizationRuleType") {
                self.authorizationRuleType = dict["AuthorizationRuleType"] as! String
            }
            if dict.keys.contains("Destination") {
                self.destination = dict["Destination"] as! String
            }
            if dict.keys.contains("DestinationPort") {
                self.destinationPort = dict["DestinationPort"] as! String
            }
            if dict.keys.contains("DestinationType") {
                self.destinationType = dict["DestinationType"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorId") {
                self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
            }
            if dict.keys.contains("Policy") {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("SourceCidrs") {
                self.sourceCidrs = dict["SourceCidrs"] as! [String]
            }
        }
    }
    public var authorizationRules: [ListAuthorizationRulesResponseBody.AuthorizationRules]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if dict.keys.contains("AuthorizationRules") {
            self.authorizationRules = dict["AuthorizationRules"] as! [ListAuthorizationRulesResponseBody.AuthorizationRules]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAuthorizationRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConnectionPoolAllIpsRequest : Tea.TeaModel {
    public var connectionPoolId: String?

    public var ioTCloudConnectorId: String?

    public var ip: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.connectionPoolId != nil {
            map["ConnectionPoolId"] = self.connectionPoolId!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionPoolId") {
            self.connectionPoolId = dict["ConnectionPoolId"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListConnectionPoolAllIpsResponseBody : Tea.TeaModel {
    public class ConnectionPoolIps : Tea.TeaModel {
        public var connectionPoolId: String?

        public var ip: String?

        public var ipNum: Int64?

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
            if self.connectionPoolId != nil {
                map["ConnectionPoolId"] = self.connectionPoolId!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.ipNum != nil {
                map["IpNum"] = self.ipNum!
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
            if dict.keys.contains("ConnectionPoolId") {
                self.connectionPoolId = dict["ConnectionPoolId"] as! String
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("IpNum") {
                self.ipNum = dict["IpNum"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var connectionPoolIps: [ListConnectionPoolAllIpsResponseBody.ConnectionPoolIps]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalIpsCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionPoolIps != nil {
            var tmp : [Any] = []
            for k in self.connectionPoolIps! {
                tmp.append(k.toMap())
            }
            map["ConnectionPoolIps"] = tmp
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
        if self.totalIpsCount != nil {
            map["TotalIpsCount"] = self.totalIpsCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionPoolIps") {
            self.connectionPoolIps = dict["ConnectionPoolIps"] as! [ListConnectionPoolAllIpsResponseBody.ConnectionPoolIps]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalIpsCount") {
            self.totalIpsCount = dict["TotalIpsCount"] as! Int32
        }
    }
}

public class ListConnectionPoolAllIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConnectionPoolAllIpsResponseBody?

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
            var model = ListConnectionPoolAllIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConnectionPoolIpsRequest : Tea.TeaModel {
    public var connectionPoolId: String?

    public var ioTCloudConnectorId: String?

    public var ip: String?

    public var maxResults: Int32?

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
        if self.connectionPoolId != nil {
            map["ConnectionPoolId"] = self.connectionPoolId!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
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
        if dict.keys.contains("ConnectionPoolId") {
            self.connectionPoolId = dict["ConnectionPoolId"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListConnectionPoolIpsResponseBody : Tea.TeaModel {
    public class ConnectionPoolIps : Tea.TeaModel {
        public var connectionPoolId: String?

        public var ip: String?

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
            if self.connectionPoolId != nil {
                map["ConnectionPoolId"] = self.connectionPoolId!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectionPoolId") {
                self.connectionPoolId = dict["ConnectionPoolId"] as! String
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var connectionPoolIps: [ListConnectionPoolIpsResponseBody.ConnectionPoolIps]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.connectionPoolIps != nil {
            var tmp : [Any] = []
            for k in self.connectionPoolIps! {
                tmp.append(k.toMap())
            }
            map["ConnectionPoolIps"] = tmp
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
        if dict.keys.contains("ConnectionPoolIps") {
            self.connectionPoolIps = dict["ConnectionPoolIps"] as! [ListConnectionPoolIpsResponseBody.ConnectionPoolIps]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListConnectionPoolIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConnectionPoolIpsResponseBody?

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
            var model = ListConnectionPoolIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConnectionPoolsRequest : Tea.TeaModel {
    public var connectionPoolIds: [String]?

    public var connectionPoolName: [String]?

    public var connectionPoolStatus: [String]?

    public var ioTCloudConnectorId: String?

    public var maxResults: Int32?

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
        if self.connectionPoolIds != nil {
            map["ConnectionPoolIds"] = self.connectionPoolIds!
        }
        if self.connectionPoolName != nil {
            map["ConnectionPoolName"] = self.connectionPoolName!
        }
        if self.connectionPoolStatus != nil {
            map["ConnectionPoolStatus"] = self.connectionPoolStatus!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
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
        if dict.keys.contains("ConnectionPoolIds") {
            self.connectionPoolIds = dict["ConnectionPoolIds"] as! [String]
        }
        if dict.keys.contains("ConnectionPoolName") {
            self.connectionPoolName = dict["ConnectionPoolName"] as! [String]
        }
        if dict.keys.contains("ConnectionPoolStatus") {
            self.connectionPoolStatus = dict["ConnectionPoolStatus"] as! [String]
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListConnectionPoolsResponseBody : Tea.TeaModel {
    public class ConnectionPools : Tea.TeaModel {
        public var cidrs: [String]?

        public var connectionPoolDescription: String?

        public var connectionPoolId: String?

        public var connectionPoolName: String?

        public var connectionPoolStatus: String?

        public var operateResultRequestID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cidrs != nil {
                map["Cidrs"] = self.cidrs!
            }
            if self.connectionPoolDescription != nil {
                map["ConnectionPoolDescription"] = self.connectionPoolDescription!
            }
            if self.connectionPoolId != nil {
                map["ConnectionPoolId"] = self.connectionPoolId!
            }
            if self.connectionPoolName != nil {
                map["ConnectionPoolName"] = self.connectionPoolName!
            }
            if self.connectionPoolStatus != nil {
                map["ConnectionPoolStatus"] = self.connectionPoolStatus!
            }
            if self.operateResultRequestID != nil {
                map["OperateResultRequestID"] = self.operateResultRequestID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cidrs") {
                self.cidrs = dict["Cidrs"] as! [String]
            }
            if dict.keys.contains("ConnectionPoolDescription") {
                self.connectionPoolDescription = dict["ConnectionPoolDescription"] as! String
            }
            if dict.keys.contains("ConnectionPoolId") {
                self.connectionPoolId = dict["ConnectionPoolId"] as! String
            }
            if dict.keys.contains("ConnectionPoolName") {
                self.connectionPoolName = dict["ConnectionPoolName"] as! String
            }
            if dict.keys.contains("ConnectionPoolStatus") {
                self.connectionPoolStatus = dict["ConnectionPoolStatus"] as! String
            }
            if dict.keys.contains("OperateResultRequestID") {
                self.operateResultRequestID = dict["OperateResultRequestID"] as! String
            }
        }
    }
    public var connectionPools: [ListConnectionPoolsResponseBody.ConnectionPools]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.connectionPools != nil {
            var tmp : [Any] = []
            for k in self.connectionPools! {
                tmp.append(k.toMap())
            }
            map["ConnectionPools"] = tmp
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
        if dict.keys.contains("ConnectionPools") {
            self.connectionPools = dict["ConnectionPools"] as! [ListConnectionPoolsResponseBody.ConnectionPools]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListConnectionPoolsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConnectionPoolsResponseBody?

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
            var model = ListConnectionPoolsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDNSServiceRulesRequest : Tea.TeaModel {
    public var DNSServiceRuleIds: [String]?

    public var DNSServiceRuleName: [String]?

    public var DNSServiceRuleStatus: [String]?

    public var destination: [String]?

    public var ioTCloudConnectorId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serviceType: String?

    public var source: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DNSServiceRuleIds != nil {
            map["DNSServiceRuleIds"] = self.DNSServiceRuleIds!
        }
        if self.DNSServiceRuleName != nil {
            map["DNSServiceRuleName"] = self.DNSServiceRuleName!
        }
        if self.DNSServiceRuleStatus != nil {
            map["DNSServiceRuleStatus"] = self.DNSServiceRuleStatus!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
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
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DNSServiceRuleIds") {
            self.DNSServiceRuleIds = dict["DNSServiceRuleIds"] as! [String]
        }
        if dict.keys.contains("DNSServiceRuleName") {
            self.DNSServiceRuleName = dict["DNSServiceRuleName"] as! [String]
        }
        if dict.keys.contains("DNSServiceRuleStatus") {
            self.DNSServiceRuleStatus = dict["DNSServiceRuleStatus"] as! [String]
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! [String]
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! [String]
        }
    }
}

public class ListDNSServiceRulesResponseBody : Tea.TeaModel {
    public class DNSServiceRules : Tea.TeaModel {
        public var DNSServiceRuleDescription: String?

        public var DNSServiceRuleId: String?

        public var DNSServiceRuleName: String?

        public var DNSServiceRuleStatus: String?

        public var destination: String?

        public var ioTCloudConnectorId: String?

        public var serviceType: String?

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
            if self.DNSServiceRuleDescription != nil {
                map["DNSServiceRuleDescription"] = self.DNSServiceRuleDescription!
            }
            if self.DNSServiceRuleId != nil {
                map["DNSServiceRuleId"] = self.DNSServiceRuleId!
            }
            if self.DNSServiceRuleName != nil {
                map["DNSServiceRuleName"] = self.DNSServiceRuleName!
            }
            if self.DNSServiceRuleStatus != nil {
                map["DNSServiceRuleStatus"] = self.DNSServiceRuleStatus!
            }
            if self.destination != nil {
                map["Destination"] = self.destination!
            }
            if self.ioTCloudConnectorId != nil {
                map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DNSServiceRuleDescription") {
                self.DNSServiceRuleDescription = dict["DNSServiceRuleDescription"] as! String
            }
            if dict.keys.contains("DNSServiceRuleId") {
                self.DNSServiceRuleId = dict["DNSServiceRuleId"] as! String
            }
            if dict.keys.contains("DNSServiceRuleName") {
                self.DNSServiceRuleName = dict["DNSServiceRuleName"] as! String
            }
            if dict.keys.contains("DNSServiceRuleStatus") {
                self.DNSServiceRuleStatus = dict["DNSServiceRuleStatus"] as! String
            }
            if dict.keys.contains("Destination") {
                self.destination = dict["Destination"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorId") {
                self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
        }
    }
    public var DNSServiceRules: [ListDNSServiceRulesResponseBody.DNSServiceRules]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.DNSServiceRules != nil {
            var tmp : [Any] = []
            for k in self.DNSServiceRules! {
                tmp.append(k.toMap())
            }
            map["DNSServiceRules"] = tmp
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
        if dict.keys.contains("DNSServiceRules") {
            self.DNSServiceRules = dict["DNSServiceRules"] as! [ListDNSServiceRulesResponseBody.DNSServiceRules]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListDNSServiceRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDNSServiceRulesResponseBody?

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
            var model = ListDNSServiceRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDiagnoseInfoForSingleCardRequest : Tea.TeaModel {
    public var ioTCloudConnectorId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var source: String?

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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
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
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class ListDiagnoseInfoForSingleCardResponseBody : Tea.TeaModel {
    public class DiagnoseInfo : Tea.TeaModel {
        public var beginTime: Int64?

        public var cardIp: String?

        public var destination: String?

        public var destinationType: String?

        public var diagnoseTime: Int64?

        public var endTime: Int64?

        public var iccId: String?

        public var ioTCloudConnectorId: String?

        public var source: String?

        public var sourceType: String?

        public var status: String?

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
            if self.diagnoseTime != nil {
                map["DiagnoseTime"] = self.diagnoseTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.iccId != nil {
                map["IccId"] = self.iccId!
            }
            if self.ioTCloudConnectorId != nil {
                map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginTime") {
                self.beginTime = dict["BeginTime"] as! Int64
            }
            if dict.keys.contains("CardIp") {
                self.cardIp = dict["CardIp"] as! String
            }
            if dict.keys.contains("Destination") {
                self.destination = dict["Destination"] as! String
            }
            if dict.keys.contains("DestinationType") {
                self.destinationType = dict["DestinationType"] as! String
            }
            if dict.keys.contains("DiagnoseTime") {
                self.diagnoseTime = dict["DiagnoseTime"] as! Int64
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("IccId") {
                self.iccId = dict["IccId"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorId") {
                self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
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
        if dict.keys.contains("DiagnoseInfo") {
            self.diagnoseInfo = dict["DiagnoseInfo"] as! [ListDiagnoseInfoForSingleCardResponseBody.DiagnoseInfo]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDiagnoseInfoForSingleCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupAuthorizationRulesRequest : Tea.TeaModel {
    public var authorizationRuleIds: [String]?

    public var authorizationRuleName: [String]?

    public var authorizationRuleStatus: [String]?

    public var destination: [String]?

    public var destinationPort: [String]?

    public var destinationType: [String]?

    public var ioTCloudConnectorGroupId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var policy: [String]?

    public var protocol_: [String]?

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
        if self.authorizationRuleIds != nil {
            map["AuthorizationRuleIds"] = self.authorizationRuleIds!
        }
        if self.authorizationRuleName != nil {
            map["AuthorizationRuleName"] = self.authorizationRuleName!
        }
        if self.authorizationRuleStatus != nil {
            map["AuthorizationRuleStatus"] = self.authorizationRuleStatus!
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
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleIds") {
            self.authorizationRuleIds = dict["AuthorizationRuleIds"] as! [String]
        }
        if dict.keys.contains("AuthorizationRuleName") {
            self.authorizationRuleName = dict["AuthorizationRuleName"] as! [String]
        }
        if dict.keys.contains("AuthorizationRuleStatus") {
            self.authorizationRuleStatus = dict["AuthorizationRuleStatus"] as! [String]
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! [String]
        }
        if dict.keys.contains("DestinationPort") {
            self.destinationPort = dict["DestinationPort"] as! [String]
        }
        if dict.keys.contains("DestinationType") {
            self.destinationType = dict["DestinationType"] as! [String]
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! [String]
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListGroupAuthorizationRulesResponseBody : Tea.TeaModel {
    public class GroupAuthorizationRules : Tea.TeaModel {
        public var authorizationRuleDescription: String?

        public var authorizationRuleId: String?

        public var authorizationRuleName: String?

        public var authorizationRuleStatus: String?

        public var destination: String?

        public var destinationPort: String?

        public var destinationType: String?

        public var ioTCloudConnectorGroupId: String?

        public var policy: String?

        public var protocol_: String?

        public var sourceCidrs: [String]?

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
            if self.authorizationRuleDescription != nil {
                map["AuthorizationRuleDescription"] = self.authorizationRuleDescription!
            }
            if self.authorizationRuleId != nil {
                map["AuthorizationRuleId"] = self.authorizationRuleId!
            }
            if self.authorizationRuleName != nil {
                map["AuthorizationRuleName"] = self.authorizationRuleName!
            }
            if self.authorizationRuleStatus != nil {
                map["AuthorizationRuleStatus"] = self.authorizationRuleStatus!
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
            if self.ioTCloudConnectorGroupId != nil {
                map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.sourceCidrs != nil {
                map["SourceCidrs"] = self.sourceCidrs!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthorizationRuleDescription") {
                self.authorizationRuleDescription = dict["AuthorizationRuleDescription"] as! String
            }
            if dict.keys.contains("AuthorizationRuleId") {
                self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
            }
            if dict.keys.contains("AuthorizationRuleName") {
                self.authorizationRuleName = dict["AuthorizationRuleName"] as! String
            }
            if dict.keys.contains("AuthorizationRuleStatus") {
                self.authorizationRuleStatus = dict["AuthorizationRuleStatus"] as! String
            }
            if dict.keys.contains("Destination") {
                self.destination = dict["Destination"] as! String
            }
            if dict.keys.contains("DestinationPort") {
                self.destinationPort = dict["DestinationPort"] as! String
            }
            if dict.keys.contains("DestinationType") {
                self.destinationType = dict["DestinationType"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorGroupId") {
                self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
            }
            if dict.keys.contains("Policy") {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("SourceCidrs") {
                self.sourceCidrs = dict["SourceCidrs"] as! [String]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var groupAuthorizationRules: [ListGroupAuthorizationRulesResponseBody.GroupAuthorizationRules]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if dict.keys.contains("GroupAuthorizationRules") {
            self.groupAuthorizationRules = dict["GroupAuthorizationRules"] as! [ListGroupAuthorizationRulesResponseBody.GroupAuthorizationRules]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListGroupAuthorizationRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupDNSServiceRulesRequest : Tea.TeaModel {
    public var DNSServiceRuleIds: [String]?

    public var DNSServiceRuleName: [String]?

    public var DNSServiceRuleStatus: [String]?

    public var destination: [String]?

    public var ioTCloudConnectorGroupId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serviceType: String?

    public var source: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DNSServiceRuleIds != nil {
            map["DNSServiceRuleIds"] = self.DNSServiceRuleIds!
        }
        if self.DNSServiceRuleName != nil {
            map["DNSServiceRuleName"] = self.DNSServiceRuleName!
        }
        if self.DNSServiceRuleStatus != nil {
            map["DNSServiceRuleStatus"] = self.DNSServiceRuleStatus!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
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
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DNSServiceRuleIds") {
            self.DNSServiceRuleIds = dict["DNSServiceRuleIds"] as! [String]
        }
        if dict.keys.contains("DNSServiceRuleName") {
            self.DNSServiceRuleName = dict["DNSServiceRuleName"] as! [String]
        }
        if dict.keys.contains("DNSServiceRuleStatus") {
            self.DNSServiceRuleStatus = dict["DNSServiceRuleStatus"] as! [String]
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! [String]
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! [String]
        }
    }
}

public class ListGroupDNSServiceRulesResponseBody : Tea.TeaModel {
    public class DNSServiceRules : Tea.TeaModel {
        public var DNSServiceRuleDescription: String?

        public var DNSServiceRuleId: String?

        public var DNSServiceRuleName: String?

        public var DNSServiceRuleStatus: String?

        public var destination: String?

        public var ioTCloudConnectorGroupId: String?

        public var serviceType: String?

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
            if self.DNSServiceRuleDescription != nil {
                map["DNSServiceRuleDescription"] = self.DNSServiceRuleDescription!
            }
            if self.DNSServiceRuleId != nil {
                map["DNSServiceRuleId"] = self.DNSServiceRuleId!
            }
            if self.DNSServiceRuleName != nil {
                map["DNSServiceRuleName"] = self.DNSServiceRuleName!
            }
            if self.DNSServiceRuleStatus != nil {
                map["DNSServiceRuleStatus"] = self.DNSServiceRuleStatus!
            }
            if self.destination != nil {
                map["Destination"] = self.destination!
            }
            if self.ioTCloudConnectorGroupId != nil {
                map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DNSServiceRuleDescription") {
                self.DNSServiceRuleDescription = dict["DNSServiceRuleDescription"] as! String
            }
            if dict.keys.contains("DNSServiceRuleId") {
                self.DNSServiceRuleId = dict["DNSServiceRuleId"] as! String
            }
            if dict.keys.contains("DNSServiceRuleName") {
                self.DNSServiceRuleName = dict["DNSServiceRuleName"] as! String
            }
            if dict.keys.contains("DNSServiceRuleStatus") {
                self.DNSServiceRuleStatus = dict["DNSServiceRuleStatus"] as! String
            }
            if dict.keys.contains("Destination") {
                self.destination = dict["Destination"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorGroupId") {
                self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
        }
    }
    public var DNSServiceRules: [ListGroupDNSServiceRulesResponseBody.DNSServiceRules]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.DNSServiceRules != nil {
            var tmp : [Any] = []
            for k in self.DNSServiceRules! {
                tmp.append(k.toMap())
            }
            map["DNSServiceRules"] = tmp
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
        if dict.keys.contains("DNSServiceRules") {
            self.DNSServiceRules = dict["DNSServiceRules"] as! [ListGroupDNSServiceRulesResponseBody.DNSServiceRules]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListGroupDNSServiceRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupDNSServiceRulesResponseBody?

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
            var model = ListGroupDNSServiceRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupIpMappingRulesRequest : Tea.TeaModel {
    public var destinationIps: [String]?

    public var ioTCloudConnectorGroupId: String?

    public var ipMappingRuleIds: [String]?

    public var ipMappingRuleNames: [String]?

    public var ipMappingRuleStatuses: [String]?

    public var mappingIps: [String]?

    public var maxResults: Int32?

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
        if self.destinationIps != nil {
            map["DestinationIps"] = self.destinationIps!
        }
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.ipMappingRuleIds != nil {
            map["IpMappingRuleIds"] = self.ipMappingRuleIds!
        }
        if self.ipMappingRuleNames != nil {
            map["IpMappingRuleNames"] = self.ipMappingRuleNames!
        }
        if self.ipMappingRuleStatuses != nil {
            map["IpMappingRuleStatuses"] = self.ipMappingRuleStatuses!
        }
        if self.mappingIps != nil {
            map["MappingIps"] = self.mappingIps!
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
        if dict.keys.contains("DestinationIps") {
            self.destinationIps = dict["DestinationIps"] as! [String]
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("IpMappingRuleIds") {
            self.ipMappingRuleIds = dict["IpMappingRuleIds"] as! [String]
        }
        if dict.keys.contains("IpMappingRuleNames") {
            self.ipMappingRuleNames = dict["IpMappingRuleNames"] as! [String]
        }
        if dict.keys.contains("IpMappingRuleStatuses") {
            self.ipMappingRuleStatuses = dict["IpMappingRuleStatuses"] as! [String]
        }
        if dict.keys.contains("MappingIps") {
            self.mappingIps = dict["MappingIps"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListGroupIpMappingRulesResponseBody : Tea.TeaModel {
    public class IpMappingRules : Tea.TeaModel {
        public var destinationIp: String?

        public var ioTCloudConnectorGroupId: String?

        public var ipMappingRuleDescription: String?

        public var ipMappingRuleId: String?

        public var ipMappingRuleName: String?

        public var ipMappingRuleStatus: String?

        public var mappingIp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.destinationIp != nil {
                map["DestinationIp"] = self.destinationIp!
            }
            if self.ioTCloudConnectorGroupId != nil {
                map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
            }
            if self.ipMappingRuleDescription != nil {
                map["IpMappingRuleDescription"] = self.ipMappingRuleDescription!
            }
            if self.ipMappingRuleId != nil {
                map["IpMappingRuleId"] = self.ipMappingRuleId!
            }
            if self.ipMappingRuleName != nil {
                map["IpMappingRuleName"] = self.ipMappingRuleName!
            }
            if self.ipMappingRuleStatus != nil {
                map["IpMappingRuleStatus"] = self.ipMappingRuleStatus!
            }
            if self.mappingIp != nil {
                map["MappingIp"] = self.mappingIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DestinationIp") {
                self.destinationIp = dict["DestinationIp"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorGroupId") {
                self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
            }
            if dict.keys.contains("IpMappingRuleDescription") {
                self.ipMappingRuleDescription = dict["IpMappingRuleDescription"] as! String
            }
            if dict.keys.contains("IpMappingRuleId") {
                self.ipMappingRuleId = dict["IpMappingRuleId"] as! String
            }
            if dict.keys.contains("IpMappingRuleName") {
                self.ipMappingRuleName = dict["IpMappingRuleName"] as! String
            }
            if dict.keys.contains("IpMappingRuleStatus") {
                self.ipMappingRuleStatus = dict["IpMappingRuleStatus"] as! String
            }
            if dict.keys.contains("MappingIp") {
                self.mappingIp = dict["MappingIp"] as! String
            }
        }
    }
    public var ipMappingRules: [ListGroupIpMappingRulesResponseBody.IpMappingRules]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.ipMappingRules != nil {
            var tmp : [Any] = []
            for k in self.ipMappingRules! {
                tmp.append(k.toMap())
            }
            map["IpMappingRules"] = tmp
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
        if dict.keys.contains("IpMappingRules") {
            self.ipMappingRules = dict["IpMappingRules"] as! [ListGroupIpMappingRulesResponseBody.IpMappingRules]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListGroupIpMappingRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupIpMappingRulesResponseBody?

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
            var model = ListGroupIpMappingRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIoTCloudConnectorAccessSessionLogsRequest : Tea.TeaModel {
    public var destinations: [String]?

    public var endTime: Int64?

    public var ioTCloudConnectorId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var sourceIps: [String]?

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
        if self.destinations != nil {
            map["Destinations"] = self.destinations!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
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
        if self.sourceIps != nil {
            map["SourceIps"] = self.sourceIps!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Destinations") {
            self.destinations = dict["Destinations"] as! [String]
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceIps") {
            self.sourceIps = dict["SourceIps"] as! [String]
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class ListIoTCloudConnectorAccessSessionLogsResponseBody : Tea.TeaModel {
    public class AccessSessionLogs : Tea.TeaModel {
        public var clientToServiceFlow: String?

        public var destinationIp: String?

        public var destinationPort: String?

        public var destinations: [String]?

        public var serviceToClientFlow: String?

        public var sourceIp: String?

        public var time: String?

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
            if self.clientToServiceFlow != nil {
                map["ClientToServiceFlow"] = self.clientToServiceFlow!
            }
            if self.destinationIp != nil {
                map["DestinationIp"] = self.destinationIp!
            }
            if self.destinationPort != nil {
                map["DestinationPort"] = self.destinationPort!
            }
            if self.destinations != nil {
                map["Destinations"] = self.destinations!
            }
            if self.serviceToClientFlow != nil {
                map["ServiceToClientFlow"] = self.serviceToClientFlow!
            }
            if self.sourceIp != nil {
                map["SourceIp"] = self.sourceIp!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientToServiceFlow") {
                self.clientToServiceFlow = dict["ClientToServiceFlow"] as! String
            }
            if dict.keys.contains("DestinationIp") {
                self.destinationIp = dict["DestinationIp"] as! String
            }
            if dict.keys.contains("DestinationPort") {
                self.destinationPort = dict["DestinationPort"] as! String
            }
            if dict.keys.contains("Destinations") {
                self.destinations = dict["Destinations"] as! [String]
            }
            if dict.keys.contains("ServiceToClientFlow") {
                self.serviceToClientFlow = dict["ServiceToClientFlow"] as! String
            }
            if dict.keys.contains("SourceIp") {
                self.sourceIp = dict["SourceIp"] as! String
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var accessSessionLogs: [ListIoTCloudConnectorAccessSessionLogsResponseBody.AccessSessionLogs]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.accessSessionLogs != nil {
            var tmp : [Any] = []
            for k in self.accessSessionLogs! {
                tmp.append(k.toMap())
            }
            map["AccessSessionLogs"] = tmp
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
        if dict.keys.contains("AccessSessionLogs") {
            self.accessSessionLogs = dict["AccessSessionLogs"] as! [ListIoTCloudConnectorAccessSessionLogsResponseBody.AccessSessionLogs]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListIoTCloudConnectorAccessSessionLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIoTCloudConnectorAccessSessionLogsResponseBody?

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
            var model = ListIoTCloudConnectorAccessSessionLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIoTCloudConnectorAvailableZonesRequest : Tea.TeaModel {
    public var ioTCloudConnectorId: String?

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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListIoTCloudConnectorAvailableZonesResponseBody : Tea.TeaModel {
    public var availableZoneList: [String]?

    public var ioTCloudConnectorId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableZoneList != nil {
            map["AvailableZoneList"] = self.availableZoneList!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableZoneList") {
            self.availableZoneList = dict["AvailableZoneList"] as! [String]
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListIoTCloudConnectorAvailableZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIoTCloudConnectorAvailableZonesResponseBody?

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
            var model = ListIoTCloudConnectorAvailableZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIoTCloudConnectorEIPsRequest : Tea.TeaModel {
    public var ioTCloudConnectorId: String?

    public var maxResults: Int32?

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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
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
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListIoTCloudConnectorEIPsResponseBody : Tea.TeaModel {
    public var EIPs: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.EIPs != nil {
            map["EIPs"] = self.EIPs!
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
        if dict.keys.contains("EIPs") {
            self.EIPs = dict["EIPs"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListIoTCloudConnectorEIPsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIoTCloudConnectorEIPsResponseBody?

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
            var model = ListIoTCloudConnectorEIPsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIoTCloudConnectorGroupsRequest : Tea.TeaModel {
    public var ioTCloudConnectorGroupIds: [String]?

    public var ioTCloudConnectorGroupName: [String]?

    public var ioTCloudConnectorGroupStatus: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.ioTCloudConnectorGroupIds != nil {
            map["IoTCloudConnectorGroupIds"] = self.ioTCloudConnectorGroupIds!
        }
        if self.ioTCloudConnectorGroupName != nil {
            map["IoTCloudConnectorGroupName"] = self.ioTCloudConnectorGroupName!
        }
        if self.ioTCloudConnectorGroupStatus != nil {
            map["IoTCloudConnectorGroupStatus"] = self.ioTCloudConnectorGroupStatus!
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IoTCloudConnectorGroupIds") {
            self.ioTCloudConnectorGroupIds = dict["IoTCloudConnectorGroupIds"] as! [String]
        }
        if dict.keys.contains("IoTCloudConnectorGroupName") {
            self.ioTCloudConnectorGroupName = dict["IoTCloudConnectorGroupName"] as! [String]
        }
        if dict.keys.contains("IoTCloudConnectorGroupStatus") {
            self.ioTCloudConnectorGroupStatus = dict["IoTCloudConnectorGroupStatus"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListIoTCloudConnectorGroupsResponseBody : Tea.TeaModel {
    public class IoTCloudConnectorGroups : Tea.TeaModel {
        public class IoTCloudConnectors : Tea.TeaModel {
            public var APN: String?

            public var createTime: Int64?

            public var ISP: String?

            public var ioTCloudConnectorDescription: String?

            public var ioTCloudConnectorId: String?

            public var ioTCloudConnectorName: String?

            public var ioTCloudConnectorStatus: String?

            public var serviceType: String?

            public override init() {
                super.init()
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
                if self.ISP != nil {
                    map["ISP"] = self.ISP!
                }
                if self.ioTCloudConnectorDescription != nil {
                    map["IoTCloudConnectorDescription"] = self.ioTCloudConnectorDescription!
                }
                if self.ioTCloudConnectorId != nil {
                    map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
                }
                if self.ioTCloudConnectorName != nil {
                    map["IoTCloudConnectorName"] = self.ioTCloudConnectorName!
                }
                if self.ioTCloudConnectorStatus != nil {
                    map["IoTCloudConnectorStatus"] = self.ioTCloudConnectorStatus!
                }
                if self.serviceType != nil {
                    map["ServiceType"] = self.serviceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("APN") {
                    self.APN = dict["APN"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("ISP") {
                    self.ISP = dict["ISP"] as! String
                }
                if dict.keys.contains("IoTCloudConnectorDescription") {
                    self.ioTCloudConnectorDescription = dict["IoTCloudConnectorDescription"] as! String
                }
                if dict.keys.contains("IoTCloudConnectorId") {
                    self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
                }
                if dict.keys.contains("IoTCloudConnectorName") {
                    self.ioTCloudConnectorName = dict["IoTCloudConnectorName"] as! String
                }
                if dict.keys.contains("IoTCloudConnectorStatus") {
                    self.ioTCloudConnectorStatus = dict["IoTCloudConnectorStatus"] as! String
                }
                if dict.keys.contains("ServiceType") {
                    self.serviceType = dict["ServiceType"] as! String
                }
            }
        }
        public var createTime: Int64?

        public var description_: String?

        public var ioTCloudConnectorGroupId: String?

        public var ioTCloudConnectorGroupStatus: String?

        public var ioTCloudConnectors: [ListIoTCloudConnectorGroupsResponseBody.IoTCloudConnectorGroups.IoTCloudConnectors]?

        public var name: String?

        public var serviceType: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.ioTCloudConnectorGroupId != nil {
                map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
            }
            if self.ioTCloudConnectorGroupStatus != nil {
                map["IoTCloudConnectorGroupStatus"] = self.ioTCloudConnectorGroupStatus!
            }
            if self.ioTCloudConnectors != nil {
                var tmp : [Any] = []
                for k in self.ioTCloudConnectors! {
                    tmp.append(k.toMap())
                }
                map["IoTCloudConnectors"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorGroupId") {
                self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorGroupStatus") {
                self.ioTCloudConnectorGroupStatus = dict["IoTCloudConnectorGroupStatus"] as! String
            }
            if dict.keys.contains("IoTCloudConnectors") {
                self.ioTCloudConnectors = dict["IoTCloudConnectors"] as! [ListIoTCloudConnectorGroupsResponseBody.IoTCloudConnectorGroups.IoTCloudConnectors]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var ioTCloudConnectorGroups: [ListIoTCloudConnectorGroupsResponseBody.IoTCloudConnectorGroups]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.ioTCloudConnectorGroups != nil {
            var tmp : [Any] = []
            for k in self.ioTCloudConnectorGroups! {
                tmp.append(k.toMap())
            }
            map["IoTCloudConnectorGroups"] = tmp
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
        if dict.keys.contains("IoTCloudConnectorGroups") {
            self.ioTCloudConnectorGroups = dict["IoTCloudConnectorGroups"] as! [ListIoTCloudConnectorGroupsResponseBody.IoTCloudConnectorGroups]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListIoTCloudConnectorGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIoTCloudConnectorGroupsResponseBody?

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
            var model = ListIoTCloudConnectorGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIoTCloudConnectorsRequest : Tea.TeaModel {
    public var APN: [String]?

    public var ISP: [String]?

    public var ioTCloudConnectorGroupId: String?

    public var ioTCloudConnectorIds: [String]?

    public var ioTCloudConnectorName: [String]?

    public var ioTCloudConnectorStatus: [String]?

    public var isInGroup: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var vpcId: [String]?

    public override init() {
        super.init()
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
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.ioTCloudConnectorIds != nil {
            map["IoTCloudConnectorIds"] = self.ioTCloudConnectorIds!
        }
        if self.ioTCloudConnectorName != nil {
            map["IoTCloudConnectorName"] = self.ioTCloudConnectorName!
        }
        if self.ioTCloudConnectorStatus != nil {
            map["IoTCloudConnectorStatus"] = self.ioTCloudConnectorStatus!
        }
        if self.isInGroup != nil {
            map["IsInGroup"] = self.isInGroup!
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
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("APN") {
            self.APN = dict["APN"] as! [String]
        }
        if dict.keys.contains("ISP") {
            self.ISP = dict["ISP"] as! [String]
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorIds") {
            self.ioTCloudConnectorIds = dict["IoTCloudConnectorIds"] as! [String]
        }
        if dict.keys.contains("IoTCloudConnectorName") {
            self.ioTCloudConnectorName = dict["IoTCloudConnectorName"] as! [String]
        }
        if dict.keys.contains("IoTCloudConnectorStatus") {
            self.ioTCloudConnectorStatus = dict["IoTCloudConnectorStatus"] as! [String]
        }
        if dict.keys.contains("IsInGroup") {
            self.isInGroup = dict["IsInGroup"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! [String]
        }
    }
}

public class ListIoTCloudConnectorsResponseBody : Tea.TeaModel {
    public class IoTCloudConnectors : Tea.TeaModel {
        public var APN: String?

        public var createTime: Int64?

        public var grantAliUid: String?

        public var ISP: String?

        public var ioTCloudConnectorBusinessStatus: String?

        public var ioTCloudConnectorDescription: String?

        public var ioTCloudConnectorGroupId: String?

        public var ioTCloudConnectorId: String?

        public var ioTCloudConnectorName: String?

        public var ioTCloudConnectorStatus: String?

        public var ipFeature: String?

        public var mode: String?

        public var modifyTime: Int64?

        public var rateLimit: Int64?

        public var serviceType: String?

        public var type: String?

        public var vSwitchList: [String]?

        public var vpcId: String?

        public var wildcardDomainEnabled: Bool?

        public override init() {
            super.init()
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
            if self.grantAliUid != nil {
                map["GrantAliUid"] = self.grantAliUid!
            }
            if self.ISP != nil {
                map["ISP"] = self.ISP!
            }
            if self.ioTCloudConnectorBusinessStatus != nil {
                map["IoTCloudConnectorBusinessStatus"] = self.ioTCloudConnectorBusinessStatus!
            }
            if self.ioTCloudConnectorDescription != nil {
                map["IoTCloudConnectorDescription"] = self.ioTCloudConnectorDescription!
            }
            if self.ioTCloudConnectorGroupId != nil {
                map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
            }
            if self.ioTCloudConnectorId != nil {
                map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
            }
            if self.ioTCloudConnectorName != nil {
                map["IoTCloudConnectorName"] = self.ioTCloudConnectorName!
            }
            if self.ioTCloudConnectorStatus != nil {
                map["IoTCloudConnectorStatus"] = self.ioTCloudConnectorStatus!
            }
            if self.ipFeature != nil {
                map["IpFeature"] = self.ipFeature!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.rateLimit != nil {
                map["RateLimit"] = self.rateLimit!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.vSwitchList != nil {
                map["VSwitchList"] = self.vSwitchList!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.wildcardDomainEnabled != nil {
                map["WildcardDomainEnabled"] = self.wildcardDomainEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("APN") {
                self.APN = dict["APN"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("GrantAliUid") {
                self.grantAliUid = dict["GrantAliUid"] as! String
            }
            if dict.keys.contains("ISP") {
                self.ISP = dict["ISP"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorBusinessStatus") {
                self.ioTCloudConnectorBusinessStatus = dict["IoTCloudConnectorBusinessStatus"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorDescription") {
                self.ioTCloudConnectorDescription = dict["IoTCloudConnectorDescription"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorGroupId") {
                self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorId") {
                self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorName") {
                self.ioTCloudConnectorName = dict["IoTCloudConnectorName"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorStatus") {
                self.ioTCloudConnectorStatus = dict["IoTCloudConnectorStatus"] as! String
            }
            if dict.keys.contains("IpFeature") {
                self.ipFeature = dict["IpFeature"] as! String
            }
            if dict.keys.contains("Mode") {
                self.mode = dict["Mode"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! Int64
            }
            if dict.keys.contains("RateLimit") {
                self.rateLimit = dict["RateLimit"] as! Int64
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("VSwitchList") {
                self.vSwitchList = dict["VSwitchList"] as! [String]
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("WildcardDomainEnabled") {
                self.wildcardDomainEnabled = dict["WildcardDomainEnabled"] as! Bool
            }
        }
    }
    public var ioTCloudConnectors: [ListIoTCloudConnectorsResponseBody.IoTCloudConnectors]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.ioTCloudConnectors != nil {
            var tmp : [Any] = []
            for k in self.ioTCloudConnectors! {
                tmp.append(k.toMap())
            }
            map["IoTCloudConnectors"] = tmp
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
        if dict.keys.contains("IoTCloudConnectors") {
            self.ioTCloudConnectors = dict["IoTCloudConnectors"] as! [ListIoTCloudConnectorsResponseBody.IoTCloudConnectors]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListIoTCloudConnectorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIoTCloudConnectorsResponseBody?

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
            var model = ListIoTCloudConnectorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIoTCoudConnectorBackhaulRouteRequest : Tea.TeaModel {
    public var ioTCloudConnectorId: String?

    public var maxResults: Int32?

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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
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
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListIoTCoudConnectorBackhaulRouteResponseBody : Tea.TeaModel {
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
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestinationCidrBlock") {
                self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
            }
            if dict.keys.contains("NextHopId") {
                self.nextHopId = dict["NextHopId"] as! String
            }
            if dict.keys.contains("NextHopType") {
                self.nextHopType = dict["NextHopType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var routes: [ListIoTCoudConnectorBackhaulRouteResponseBody.Routes]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Routes") {
            self.routes = dict["Routes"] as! [ListIoTCoudConnectorBackhaulRouteResponseBody.Routes]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListIoTCoudConnectorBackhaulRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIoTCoudConnectorBackhaulRouteResponseBody?

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
            var model = ListIoTCoudConnectorBackhaulRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIpMappingRulesRequest : Tea.TeaModel {
    public var destinationIps: [String]?

    public var ioTCloudConnectorId: String?

    public var ipMappingRuleIds: [String]?

    public var ipMappingRuleNames: [String]?

    public var ipMappingRuleStatuses: [String]?

    public var mappingIps: [String]?

    public var maxResults: Int32?

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
        if self.destinationIps != nil {
            map["DestinationIps"] = self.destinationIps!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.ipMappingRuleIds != nil {
            map["IpMappingRuleIds"] = self.ipMappingRuleIds!
        }
        if self.ipMappingRuleNames != nil {
            map["IpMappingRuleNames"] = self.ipMappingRuleNames!
        }
        if self.ipMappingRuleStatuses != nil {
            map["IpMappingRuleStatuses"] = self.ipMappingRuleStatuses!
        }
        if self.mappingIps != nil {
            map["MappingIps"] = self.mappingIps!
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
        if dict.keys.contains("DestinationIps") {
            self.destinationIps = dict["DestinationIps"] as! [String]
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("IpMappingRuleIds") {
            self.ipMappingRuleIds = dict["IpMappingRuleIds"] as! [String]
        }
        if dict.keys.contains("IpMappingRuleNames") {
            self.ipMappingRuleNames = dict["IpMappingRuleNames"] as! [String]
        }
        if dict.keys.contains("IpMappingRuleStatuses") {
            self.ipMappingRuleStatuses = dict["IpMappingRuleStatuses"] as! [String]
        }
        if dict.keys.contains("MappingIps") {
            self.mappingIps = dict["MappingIps"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListIpMappingRulesResponseBody : Tea.TeaModel {
    public class IpMappingRules : Tea.TeaModel {
        public var destinationIp: String?

        public var ioTCloudConnectorId: String?

        public var ipMappingRuleDescription: String?

        public var ipMappingRuleId: String?

        public var ipMappingRuleName: String?

        public var ipMappingRuleStatus: String?

        public var mappingIp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.destinationIp != nil {
                map["DestinationIp"] = self.destinationIp!
            }
            if self.ioTCloudConnectorId != nil {
                map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
            }
            if self.ipMappingRuleDescription != nil {
                map["IpMappingRuleDescription"] = self.ipMappingRuleDescription!
            }
            if self.ipMappingRuleId != nil {
                map["IpMappingRuleId"] = self.ipMappingRuleId!
            }
            if self.ipMappingRuleName != nil {
                map["IpMappingRuleName"] = self.ipMappingRuleName!
            }
            if self.ipMappingRuleStatus != nil {
                map["IpMappingRuleStatus"] = self.ipMappingRuleStatus!
            }
            if self.mappingIp != nil {
                map["MappingIp"] = self.mappingIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DestinationIp") {
                self.destinationIp = dict["DestinationIp"] as! String
            }
            if dict.keys.contains("IoTCloudConnectorId") {
                self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
            }
            if dict.keys.contains("IpMappingRuleDescription") {
                self.ipMappingRuleDescription = dict["IpMappingRuleDescription"] as! String
            }
            if dict.keys.contains("IpMappingRuleId") {
                self.ipMappingRuleId = dict["IpMappingRuleId"] as! String
            }
            if dict.keys.contains("IpMappingRuleName") {
                self.ipMappingRuleName = dict["IpMappingRuleName"] as! String
            }
            if dict.keys.contains("IpMappingRuleStatus") {
                self.ipMappingRuleStatus = dict["IpMappingRuleStatus"] as! String
            }
            if dict.keys.contains("MappingIp") {
                self.mappingIp = dict["MappingIp"] as! String
            }
        }
    }
    public var ipMappingRules: [ListIpMappingRulesResponseBody.IpMappingRules]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.ipMappingRules != nil {
            var tmp : [Any] = []
            for k in self.ipMappingRules! {
                tmp.append(k.toMap())
            }
            map["IpMappingRules"] = tmp
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
        if dict.keys.contains("IpMappingRules") {
            self.ipMappingRules = dict["IpMappingRules"] as! [ListIpMappingRulesResponseBody.IpMappingRules]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListIpMappingRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIpMappingRulesResponseBody?

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
            var model = ListIpMappingRulesResponseBody()
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
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

        public var regionEndpoint: String?

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
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionEndpoint") {
                self.regionEndpoint = dict["RegionEndpoint"] as! String
            }
            if dict.keys.contains("RegionId") {
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
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! [ListRegionsResponseBody.Regions]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServiceRequest : Tea.TeaModel {
    public var ioTCloudConnectorId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceStatuses: [String]?

    public var serviceIds: [String]?

    public var serviceNames: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
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
        if self.resourceStatuses != nil {
            map["ResourceStatuses"] = self.resourceStatuses!
        }
        if self.serviceIds != nil {
            map["ServiceIds"] = self.serviceIds!
        }
        if self.serviceNames != nil {
            map["ServiceNames"] = self.serviceNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceStatuses") {
            self.resourceStatuses = dict["ResourceStatuses"] as! [String]
        }
        if dict.keys.contains("ServiceIds") {
            self.serviceIds = dict["ServiceIds"] as! [String]
        }
        if dict.keys.contains("ServiceNames") {
            self.serviceNames = dict["ServiceNames"] as! [String]
        }
    }
}

public class ListServiceResponseBody : Tea.TeaModel {
    public class Services : Tea.TeaModel {
        public var ioTCloudConnectorId: String?

        public var serviceDescription: String?

        public var serviceId: String?

        public var serviceName: String?

        public var serviceStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ioTCloudConnectorId != nil {
                map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
            }
            if self.serviceDescription != nil {
                map["ServiceDescription"] = self.serviceDescription!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.serviceStatus != nil {
                map["ServiceStatus"] = self.serviceStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IoTCloudConnectorId") {
                self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
            }
            if dict.keys.contains("ServiceDescription") {
                self.serviceDescription = dict["ServiceDescription"] as! String
            }
            if dict.keys.contains("ServiceId") {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("ServiceStatus") {
                self.serviceStatus = dict["ServiceStatus"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var services: [ListServiceResponseBody.Services]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["Services"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Services") {
            self.services = dict["Services"] as! [ListServiceResponseBody.Services]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceResponseBody?

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
            var model = ListServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServiceEntriesRequest : Tea.TeaModel {
    public var ioTCloudConnectorId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serviceEntryIds: [String]?

    public var serviceEntryName: [String]?

    public var serviceEntryStatus: [String]?

    public var serviceId: String?

    public var target: [String]?

    public var targetType: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
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
        if self.serviceEntryIds != nil {
            map["ServiceEntryIds"] = self.serviceEntryIds!
        }
        if self.serviceEntryName != nil {
            map["ServiceEntryName"] = self.serviceEntryName!
        }
        if self.serviceEntryStatus != nil {
            map["ServiceEntryStatus"] = self.serviceEntryStatus!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceEntryIds") {
            self.serviceEntryIds = dict["ServiceEntryIds"] as! [String]
        }
        if dict.keys.contains("ServiceEntryName") {
            self.serviceEntryName = dict["ServiceEntryName"] as! [String]
        }
        if dict.keys.contains("ServiceEntryStatus") {
            self.serviceEntryStatus = dict["ServiceEntryStatus"] as! [String]
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! [String]
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! [String]
        }
    }
}

public class ListServiceEntriesResponseBody : Tea.TeaModel {
    public class ServiceEntries : Tea.TeaModel {
        public var serviceEntryDescription: String?

        public var serviceEntryId: String?

        public var serviceEntryName: String?

        public var serviceEntryStatus: String?

        public var serviceId: String?

        public var target: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceEntryDescription != nil {
                map["ServiceEntryDescription"] = self.serviceEntryDescription!
            }
            if self.serviceEntryId != nil {
                map["ServiceEntryId"] = self.serviceEntryId!
            }
            if self.serviceEntryName != nil {
                map["ServiceEntryName"] = self.serviceEntryName!
            }
            if self.serviceEntryStatus != nil {
                map["ServiceEntryStatus"] = self.serviceEntryStatus!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.target != nil {
                map["Target"] = self.target!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServiceEntryDescription") {
                self.serviceEntryDescription = dict["ServiceEntryDescription"] as! String
            }
            if dict.keys.contains("ServiceEntryId") {
                self.serviceEntryId = dict["ServiceEntryId"] as! String
            }
            if dict.keys.contains("ServiceEntryName") {
                self.serviceEntryName = dict["ServiceEntryName"] as! String
            }
            if dict.keys.contains("ServiceEntryStatus") {
                self.serviceEntryStatus = dict["ServiceEntryStatus"] as! String
            }
            if dict.keys.contains("ServiceId") {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("Target") {
                self.target = dict["Target"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var serviceEntries: [ListServiceEntriesResponseBody.ServiceEntries]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceEntries != nil {
            var tmp : [Any] = []
            for k in self.serviceEntries! {
                tmp.append(k.toMap())
            }
            map["ServiceEntries"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceEntries") {
            self.serviceEntries = dict["ServiceEntries"] as! [ListServiceEntriesResponseBody.ServiceEntries]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListServiceEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceEntriesResponseBody?

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
            var model = ListServiceEntriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveAuthorizationRuleToDNSServiceRequest : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class MoveAuthorizationRuleToDNSServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class MoveAuthorizationRuleToDNSServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveAuthorizationRuleToDNSServiceResponseBody?

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
            var model = MoveAuthorizationRuleToDNSServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveGroupAuthorizationRuleToDNSServiceRequest : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorGroupId: String?

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
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class MoveGroupAuthorizationRuleToDNSServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class MoveGroupAuthorizationRuleToDNSServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveGroupAuthorizationRuleToDNSServiceResponseBody?

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
            var model = MoveGroupAuthorizationRuleToDNSServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenIoTCloudConnectorServiceRequest : Tea.TeaModel {
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class OpenIoTCloudConnectorServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class OpenIoTCloudConnectorServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenIoTCloudConnectorServiceResponseBody?

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
            var model = OpenIoTCloudConnectorServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveIoTCloudConnectorFromGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorGroupId: String?

    public var ioTCloudConnectorId: [String]?

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
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RemoveIoTCloudConnectorFromGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RemoveIoTCloudConnectorFromGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveIoTCloudConnectorFromGroupResponseBody?

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
            var model = RemoveIoTCloudConnectorFromGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevertIoTCloudConnectorRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RevertIoTCloudConnectorResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class RevertIoTCloudConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevertIoTCloudConnectorResponseBody?

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
            var model = RevertIoTCloudConnectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitDiagnoseTaskForSingleCardRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var destination: String?

    public var destinationType: String?

    public var endTime: Int64?

    public var ioTCloudConnectorId: String?

    public var regionId: String?

    public var resourceUid: Int64?

    public var source: String?

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
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceUid != nil {
            map["ResourceUid"] = self.resourceUid!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationType") {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceUid") {
            self.resourceUid = dict["ResourceUid"] as! Int64
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
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
        if dict.keys.contains("DiagnoseTaskId") {
            self.diagnoseTaskId = dict["DiagnoseTaskId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SubmitDiagnoseTaskForSingleCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAuthorizationRuleAttributeRequest : Tea.TeaModel {
    public var authorizationRuleDescription: String?

    public var authorizationRuleId: String?

    public var authorizationRuleName: String?

    public var clientToken: String?

    public var destination: String?

    public var destinationPort: String?

    public var destinationType: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var policy: String?

    public var protocol_: String?

    public var regionId: String?

    public var sourceCidrs: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleDescription != nil {
            map["AuthorizationRuleDescription"] = self.authorizationRuleDescription!
        }
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.authorizationRuleName != nil {
            map["AuthorizationRuleName"] = self.authorizationRuleName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceCidrs != nil {
            map["SourceCidrs"] = self.sourceCidrs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleDescription") {
            self.authorizationRuleDescription = dict["AuthorizationRuleDescription"] as! String
        }
        if dict.keys.contains("AuthorizationRuleId") {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("AuthorizationRuleName") {
            self.authorizationRuleName = dict["AuthorizationRuleName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationPort") {
            self.destinationPort = dict["DestinationPort"] as! String
        }
        if dict.keys.contains("DestinationType") {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceCidrs") {
            self.sourceCidrs = dict["SourceCidrs"] as! [String]
        }
    }
}

public class UpdateAuthorizationRuleAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateAuthorizationRuleAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAuthorizationRuleAttributeResponseBody?

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
            var model = UpdateAuthorizationRuleAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateConnectionPoolAttributeRequest : Tea.TeaModel {
    public var cidrs: [String]?

    public var clientToken: String?

    public var connectionPoolDescription: String?

    public var connectionPoolId: String?

    public var connectionPoolName: String?

    public var count: Int64?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

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
        if self.cidrs != nil {
            map["Cidrs"] = self.cidrs!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.connectionPoolDescription != nil {
            map["ConnectionPoolDescription"] = self.connectionPoolDescription!
        }
        if self.connectionPoolId != nil {
            map["ConnectionPoolId"] = self.connectionPoolId!
        }
        if self.connectionPoolName != nil {
            map["ConnectionPoolName"] = self.connectionPoolName!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cidrs") {
            self.cidrs = dict["Cidrs"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectionPoolDescription") {
            self.connectionPoolDescription = dict["ConnectionPoolDescription"] as! String
        }
        if dict.keys.contains("ConnectionPoolId") {
            self.connectionPoolId = dict["ConnectionPoolId"] as! String
        }
        if dict.keys.contains("ConnectionPoolName") {
            self.connectionPoolName = dict["ConnectionPoolName"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int64
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateConnectionPoolAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateConnectionPoolAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConnectionPoolAttributeResponseBody?

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
            var model = UpdateConnectionPoolAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDNSServiceRuleAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var DNSServiceRuleDescription: String?

    public var DNSServiceRuleId: String?

    public var DNSServiceRuleName: String?

    public var destination: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var regionId: String?

    public var serviceType: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DNSServiceRuleDescription != nil {
            map["DNSServiceRuleDescription"] = self.DNSServiceRuleDescription!
        }
        if self.DNSServiceRuleId != nil {
            map["DNSServiceRuleId"] = self.DNSServiceRuleId!
        }
        if self.DNSServiceRuleName != nil {
            map["DNSServiceRuleName"] = self.DNSServiceRuleName!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DNSServiceRuleDescription") {
            self.DNSServiceRuleDescription = dict["DNSServiceRuleDescription"] as! String
        }
        if dict.keys.contains("DNSServiceRuleId") {
            self.DNSServiceRuleId = dict["DNSServiceRuleId"] as! String
        }
        if dict.keys.contains("DNSServiceRuleName") {
            self.DNSServiceRuleName = dict["DNSServiceRuleName"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
    }
}

public class UpdateDNSServiceRuleAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateDNSServiceRuleAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDNSServiceRuleAttributeResponseBody?

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
            var model = UpdateDNSServiceRuleAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupAuthorizationRuleAttributeRequest : Tea.TeaModel {
    public var authorizationRuleDescription: String?

    public var authorizationRuleId: String?

    public var authorizationRuleName: String?

    public var clientToken: String?

    public var destination: String?

    public var destinationPort: String?

    public var destinationType: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorGroupId: String?

    public var policy: String?

    public var protocol_: String?

    public var regionId: String?

    public var sourceCidrs: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRuleDescription != nil {
            map["AuthorizationRuleDescription"] = self.authorizationRuleDescription!
        }
        if self.authorizationRuleId != nil {
            map["AuthorizationRuleId"] = self.authorizationRuleId!
        }
        if self.authorizationRuleName != nil {
            map["AuthorizationRuleName"] = self.authorizationRuleName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
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
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceCidrs != nil {
            map["SourceCidrs"] = self.sourceCidrs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleDescription") {
            self.authorizationRuleDescription = dict["AuthorizationRuleDescription"] as! String
        }
        if dict.keys.contains("AuthorizationRuleId") {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("AuthorizationRuleName") {
            self.authorizationRuleName = dict["AuthorizationRuleName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DestinationPort") {
            self.destinationPort = dict["DestinationPort"] as! String
        }
        if dict.keys.contains("DestinationType") {
            self.destinationType = dict["DestinationType"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceCidrs") {
            self.sourceCidrs = dict["SourceCidrs"] as! [String]
        }
    }
}

public class UpdateGroupAuthorizationRuleAttributeResponseBody : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var ioTCloudConnectorGroupId: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateGroupAuthorizationRuleAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupAuthorizationRuleAttributeResponseBody?

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
            var model = UpdateGroupAuthorizationRuleAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupDNSServiceRuleAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var DNSServiceRuleDescription: String?

    public var DNSServiceRuleId: String?

    public var DNSServiceRuleName: String?

    public var destination: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorGroupId: String?

    public var regionId: String?

    public var serviceType: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DNSServiceRuleDescription != nil {
            map["DNSServiceRuleDescription"] = self.DNSServiceRuleDescription!
        }
        if self.DNSServiceRuleId != nil {
            map["DNSServiceRuleId"] = self.DNSServiceRuleId!
        }
        if self.DNSServiceRuleName != nil {
            map["DNSServiceRuleName"] = self.DNSServiceRuleName!
        }
        if self.destination != nil {
            map["Destination"] = self.destination!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DNSServiceRuleDescription") {
            self.DNSServiceRuleDescription = dict["DNSServiceRuleDescription"] as! String
        }
        if dict.keys.contains("DNSServiceRuleId") {
            self.DNSServiceRuleId = dict["DNSServiceRuleId"] as! String
        }
        if dict.keys.contains("DNSServiceRuleName") {
            self.DNSServiceRuleName = dict["DNSServiceRuleName"] as! String
        }
        if dict.keys.contains("Destination") {
            self.destination = dict["Destination"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
    }
}

public class UpdateGroupDNSServiceRuleAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateGroupDNSServiceRuleAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupDNSServiceRuleAttributeResponseBody?

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
            var model = UpdateGroupDNSServiceRuleAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupIpMappingRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var destinationIp: String?

    public var dryRun: Bool?

    public var groupIpMappingRuleId: String?

    public var ioTCloudConnectorGroupId: String?

    public var ipMappingRuleDescription: String?

    public var ipMappingRuleName: String?

    public var mappingIp: String?

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
        if self.destinationIp != nil {
            map["DestinationIp"] = self.destinationIp!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.groupIpMappingRuleId != nil {
            map["GroupIpMappingRuleId"] = self.groupIpMappingRuleId!
        }
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.ipMappingRuleDescription != nil {
            map["IpMappingRuleDescription"] = self.ipMappingRuleDescription!
        }
        if self.ipMappingRuleName != nil {
            map["IpMappingRuleName"] = self.ipMappingRuleName!
        }
        if self.mappingIp != nil {
            map["MappingIp"] = self.mappingIp!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DestinationIp") {
            self.destinationIp = dict["DestinationIp"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("GroupIpMappingRuleId") {
            self.groupIpMappingRuleId = dict["GroupIpMappingRuleId"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("IpMappingRuleDescription") {
            self.ipMappingRuleDescription = dict["IpMappingRuleDescription"] as! String
        }
        if dict.keys.contains("IpMappingRuleName") {
            self.ipMappingRuleName = dict["IpMappingRuleName"] as! String
        }
        if dict.keys.contains("MappingIp") {
            self.mappingIp = dict["MappingIp"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateGroupIpMappingRuleResponseBody : Tea.TeaModel {
    public var authorizationRuleId: String?

    public var ioTCloudConnectorGroupId: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationRuleId") {
            self.authorizationRuleId = dict["AuthorizationRuleId"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateGroupIpMappingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupIpMappingRuleResponseBody?

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
            var model = UpdateGroupIpMappingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateIoTCloudConnectorAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorDescription: String?

    public var ioTCloudConnectorId: String?

    public var ioTCloudConnectorName: String?

    public var mode: String?

    public var regionId: String?

    public var wildcardDomainEnabled: Bool?

    public override init() {
        super.init()
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
        if self.ioTCloudConnectorDescription != nil {
            map["IoTCloudConnectorDescription"] = self.ioTCloudConnectorDescription!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.ioTCloudConnectorName != nil {
            map["IoTCloudConnectorName"] = self.ioTCloudConnectorName!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.wildcardDomainEnabled != nil {
            map["WildcardDomainEnabled"] = self.wildcardDomainEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorDescription") {
            self.ioTCloudConnectorDescription = dict["IoTCloudConnectorDescription"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("IoTCloudConnectorName") {
            self.ioTCloudConnectorName = dict["IoTCloudConnectorName"] as! String
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WildcardDomainEnabled") {
            self.wildcardDomainEnabled = dict["WildcardDomainEnabled"] as! Bool
        }
    }
}

public class UpdateIoTCloudConnectorAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class UpdateIoTCloudConnectorAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIoTCloudConnectorAttributeResponseBody?

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
            var model = UpdateIoTCloudConnectorAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateIoTCloudConnectorGroupAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorGroupId: String?

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
        if self.ioTCloudConnectorGroupId != nil {
            map["IoTCloudConnectorGroupId"] = self.ioTCloudConnectorGroupId!
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorGroupId") {
            self.ioTCloudConnectorGroupId = dict["IoTCloudConnectorGroupId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateIoTCloudConnectorGroupAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateIoTCloudConnectorGroupAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIoTCloudConnectorGroupAttributeResponseBody?

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
            var model = UpdateIoTCloudConnectorGroupAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateIpMappingRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var destinationIp: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var ipMappingRuleDescription: String?

    public var ipMappingRuleId: String?

    public var ipMappingRuleName: String?

    public var mappingIp: String?

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
        if self.destinationIp != nil {
            map["DestinationIp"] = self.destinationIp!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.ipMappingRuleDescription != nil {
            map["IpMappingRuleDescription"] = self.ipMappingRuleDescription!
        }
        if self.ipMappingRuleId != nil {
            map["IpMappingRuleId"] = self.ipMappingRuleId!
        }
        if self.ipMappingRuleName != nil {
            map["IpMappingRuleName"] = self.ipMappingRuleName!
        }
        if self.mappingIp != nil {
            map["MappingIp"] = self.mappingIp!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DestinationIp") {
            self.destinationIp = dict["DestinationIp"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("IpMappingRuleDescription") {
            self.ipMappingRuleDescription = dict["IpMappingRuleDescription"] as! String
        }
        if dict.keys.contains("IpMappingRuleId") {
            self.ipMappingRuleId = dict["IpMappingRuleId"] as! String
        }
        if dict.keys.contains("IpMappingRuleName") {
            self.ipMappingRuleName = dict["IpMappingRuleName"] as! String
        }
        if dict.keys.contains("MappingIp") {
            self.mappingIp = dict["MappingIp"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateIpMappingRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateIpMappingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIpMappingRuleResponseBody?

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
            var model = UpdateIpMappingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateServiceAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var regionId: String?

    public var serviceDescription: String?

    public var serviceId: String?

    public var serviceName: String?

    public override init() {
        super.init()
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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceDescription != nil {
            map["ServiceDescription"] = self.serviceDescription!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceDescription") {
            self.serviceDescription = dict["ServiceDescription"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
    }
}

public class UpdateServiceAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateServiceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceAttributeResponseBody?

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
            var model = UpdateServiceAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateServiceEntryAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ioTCloudConnectorId: String?

    public var regionId: String?

    public var serviceEntryDescription: String?

    public var serviceEntryId: String?

    public var serviceEntryName: String?

    public var serviceId: String?

    public override init() {
        super.init()
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
        if self.ioTCloudConnectorId != nil {
            map["IoTCloudConnectorId"] = self.ioTCloudConnectorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceEntryDescription != nil {
            map["ServiceEntryDescription"] = self.serviceEntryDescription!
        }
        if self.serviceEntryId != nil {
            map["ServiceEntryId"] = self.serviceEntryId!
        }
        if self.serviceEntryName != nil {
            map["ServiceEntryName"] = self.serviceEntryName!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IoTCloudConnectorId") {
            self.ioTCloudConnectorId = dict["IoTCloudConnectorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceEntryDescription") {
            self.serviceEntryDescription = dict["ServiceEntryDescription"] as! String
        }
        if dict.keys.contains("ServiceEntryId") {
            self.serviceEntryId = dict["ServiceEntryId"] as! String
        }
        if dict.keys.contains("ServiceEntryName") {
            self.serviceEntryName = dict["ServiceEntryName"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
    }
}

public class UpdateServiceEntryAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateServiceEntryAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceEntryAttributeResponseBody?

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
            var model = UpdateServiceEntryAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
