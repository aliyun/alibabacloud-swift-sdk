import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActiveFlowLogRequest : Tea.TeaModel {
    public var cenId: String?

    public var clientToken: String?

    public var flowLogId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.flowLogId != nil {
            map["FlowLogId"] = self.flowLogId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("FlowLogId") {
            self.flowLogId = dict["FlowLogId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ActiveFlowLogResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class ActiveFlowLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActiveFlowLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ActiveFlowLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddTrafficMatchRuleToTrafficMarkingPolicyRequest : Tea.TeaModel {
    public class TrafficMatchRules : Tea.TeaModel {
        public var dstCidr: String?

        public var dstPortRange: [Int32]?

        public var matchDscp: Int32?

        public var protocol_: String?

        public var srcCidr: String?

        public var srcPortRange: [Int32]?

        public var trafficMatchRuleDescription: String?

        public var trafficMatchRuleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dstCidr != nil {
                map["DstCidr"] = self.dstCidr!
            }
            if self.dstPortRange != nil {
                map["DstPortRange"] = self.dstPortRange!
            }
            if self.matchDscp != nil {
                map["MatchDscp"] = self.matchDscp!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.srcCidr != nil {
                map["SrcCidr"] = self.srcCidr!
            }
            if self.srcPortRange != nil {
                map["SrcPortRange"] = self.srcPortRange!
            }
            if self.trafficMatchRuleDescription != nil {
                map["TrafficMatchRuleDescription"] = self.trafficMatchRuleDescription!
            }
            if self.trafficMatchRuleName != nil {
                map["TrafficMatchRuleName"] = self.trafficMatchRuleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DstCidr") {
                self.dstCidr = dict["DstCidr"] as! String
            }
            if dict.keys.contains("DstPortRange") {
                self.dstPortRange = dict["DstPortRange"] as! [Int32]
            }
            if dict.keys.contains("MatchDscp") {
                self.matchDscp = dict["MatchDscp"] as! Int32
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("SrcCidr") {
                self.srcCidr = dict["SrcCidr"] as! String
            }
            if dict.keys.contains("SrcPortRange") {
                self.srcPortRange = dict["SrcPortRange"] as! [Int32]
            }
            if dict.keys.contains("TrafficMatchRuleDescription") {
                self.trafficMatchRuleDescription = dict["TrafficMatchRuleDescription"] as! String
            }
            if dict.keys.contains("TrafficMatchRuleName") {
                self.trafficMatchRuleName = dict["TrafficMatchRuleName"] as! String
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trafficMarkingPolicyId: String?

    public var trafficMatchRules: [AddTrafficMatchRuleToTrafficMarkingPolicyRequest.TrafficMatchRules]?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.trafficMarkingPolicyId != nil {
            map["TrafficMarkingPolicyId"] = self.trafficMarkingPolicyId!
        }
        if self.trafficMatchRules != nil {
            var tmp : [Any] = []
            for k in self.trafficMatchRules! {
                tmp.append(k.toMap())
            }
            map["TrafficMatchRules"] = tmp
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TrafficMarkingPolicyId") {
            self.trafficMarkingPolicyId = dict["TrafficMarkingPolicyId"] as! String
        }
        if dict.keys.contains("TrafficMatchRules") {
            self.trafficMatchRules = dict["TrafficMatchRules"] as! [AddTrafficMatchRuleToTrafficMarkingPolicyRequest.TrafficMatchRules]
        }
    }
}

public class AddTrafficMatchRuleToTrafficMarkingPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AddTrafficMatchRuleToTrafficMarkingPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTrafficMatchRuleToTrafficMarkingPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddTrafficMatchRuleToTrafficMarkingPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddTraficMatchRuleToTrafficMarkingPolicyRequest : Tea.TeaModel {
    public class TrafficMatchRules : Tea.TeaModel {
        public var dstCidr: String?

        public var dstPortRange: [Int32]?

        public var matchDscp: Int32?

        public var protocol_: String?

        public var srcCidr: String?

        public var srcPortRange: [Int32]?

        public var trafficMatchRuleDescription: String?

        public var trafficMatchRuleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dstCidr != nil {
                map["DstCidr"] = self.dstCidr!
            }
            if self.dstPortRange != nil {
                map["DstPortRange"] = self.dstPortRange!
            }
            if self.matchDscp != nil {
                map["MatchDscp"] = self.matchDscp!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.srcCidr != nil {
                map["SrcCidr"] = self.srcCidr!
            }
            if self.srcPortRange != nil {
                map["SrcPortRange"] = self.srcPortRange!
            }
            if self.trafficMatchRuleDescription != nil {
                map["TrafficMatchRuleDescription"] = self.trafficMatchRuleDescription!
            }
            if self.trafficMatchRuleName != nil {
                map["TrafficMatchRuleName"] = self.trafficMatchRuleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DstCidr") {
                self.dstCidr = dict["DstCidr"] as! String
            }
            if dict.keys.contains("DstPortRange") {
                self.dstPortRange = dict["DstPortRange"] as! [Int32]
            }
            if dict.keys.contains("MatchDscp") {
                self.matchDscp = dict["MatchDscp"] as! Int32
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("SrcCidr") {
                self.srcCidr = dict["SrcCidr"] as! String
            }
            if dict.keys.contains("SrcPortRange") {
                self.srcPortRange = dict["SrcPortRange"] as! [Int32]
            }
            if dict.keys.contains("TrafficMatchRuleDescription") {
                self.trafficMatchRuleDescription = dict["TrafficMatchRuleDescription"] as! String
            }
            if dict.keys.contains("TrafficMatchRuleName") {
                self.trafficMatchRuleName = dict["TrafficMatchRuleName"] as! String
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trafficMarkingPolicyId: String?

    public var trafficMatchRules: [AddTraficMatchRuleToTrafficMarkingPolicyRequest.TrafficMatchRules]?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.trafficMarkingPolicyId != nil {
            map["TrafficMarkingPolicyId"] = self.trafficMarkingPolicyId!
        }
        if self.trafficMatchRules != nil {
            var tmp : [Any] = []
            for k in self.trafficMatchRules! {
                tmp.append(k.toMap())
            }
            map["TrafficMatchRules"] = tmp
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TrafficMarkingPolicyId") {
            self.trafficMarkingPolicyId = dict["TrafficMarkingPolicyId"] as! String
        }
        if dict.keys.contains("TrafficMatchRules") {
            self.trafficMatchRules = dict["TrafficMatchRules"] as! [AddTraficMatchRuleToTrafficMarkingPolicyRequest.TrafficMatchRules]
        }
    }
}

public class AddTraficMatchRuleToTrafficMarkingPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AddTraficMatchRuleToTrafficMarkingPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTraficMatchRuleToTrafficMarkingPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddTraficMatchRuleToTrafficMarkingPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateCenBandwidthPackageRequest : Tea.TeaModel {
    public var cenBandwidthPackageId: String?

    public var cenId: String?

    public var ownerAccount: String?

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
        if self.cenBandwidthPackageId != nil {
            map["CenBandwidthPackageId"] = self.cenBandwidthPackageId!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenBandwidthPackageId") {
            self.cenBandwidthPackageId = dict["CenBandwidthPackageId"] as! String
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class AssociateCenBandwidthPackageResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AssociateCenBandwidthPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateCenBandwidthPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AssociateCenBandwidthPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateTransitRouterAttachmentWithRouteTableRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public var transitRouterRouteTableId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
    }
}

public class AssociateTransitRouterAttachmentWithRouteTableResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AssociateTransitRouterAttachmentWithRouteTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateTransitRouterAttachmentWithRouteTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AssociateTransitRouterAttachmentWithRouteTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateTransitRouterMulticastDomainRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public var transitRouterMulticastDomainId: String?

    public var vSwitchIds: [String]?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterMulticastDomainId != nil {
            map["TransitRouterMulticastDomainId"] = self.transitRouterMulticastDomainId!
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterMulticastDomainId") {
            self.transitRouterMulticastDomainId = dict["TransitRouterMulticastDomainId"] as! String
        }
        if dict.keys.contains("VSwitchIds") {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
        }
    }
}

public class AssociateTransitRouterMulticastDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AssociateTransitRouterMulticastDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateTransitRouterMulticastDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AssociateTransitRouterMulticastDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachCenChildInstanceRequest : Tea.TeaModel {
    public var cenId: String?

    public var childInstanceId: String?

    public var childInstanceOwnerId: Int64?

    public var childInstanceRegionId: String?

    public var childInstanceType: String?

    public var ownerAccount: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.childInstanceId != nil {
            map["ChildInstanceId"] = self.childInstanceId!
        }
        if self.childInstanceOwnerId != nil {
            map["ChildInstanceOwnerId"] = self.childInstanceOwnerId!
        }
        if self.childInstanceRegionId != nil {
            map["ChildInstanceRegionId"] = self.childInstanceRegionId!
        }
        if self.childInstanceType != nil {
            map["ChildInstanceType"] = self.childInstanceType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ChildInstanceId") {
            self.childInstanceId = dict["ChildInstanceId"] as! String
        }
        if dict.keys.contains("ChildInstanceOwnerId") {
            self.childInstanceOwnerId = dict["ChildInstanceOwnerId"] as! Int64
        }
        if dict.keys.contains("ChildInstanceRegionId") {
            self.childInstanceRegionId = dict["ChildInstanceRegionId"] as! String
        }
        if dict.keys.contains("ChildInstanceType") {
            self.childInstanceType = dict["ChildInstanceType"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class AttachCenChildInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AttachCenChildInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachCenChildInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachCenChildInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckTransitRouterServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerAccount: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CheckTransitRouterServiceResponseBody : Tea.TeaModel {
    public var enabled: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckTransitRouterServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckTransitRouterServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CheckTransitRouterServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCenRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var protectionLevel: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.protectionLevel != nil {
            map["ProtectionLevel"] = self.protectionLevel!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProtectionLevel") {
            self.protectionLevel = dict["ProtectionLevel"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateCenResponseBody : Tea.TeaModel {
    public var cenId: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateCenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCenBandwidthPackageRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var autoRenewDuration: Int32?

    public var bandwidth: Int32?

    public var bandwidthPackageChargeType: String?

    public var clientToken: String?

    public var description_: String?

    public var geographicRegionAId: String?

    public var geographicRegionBId: String?

    public var name: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var period: Int32?

    public var pricingCycle: String?

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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.bandwidthPackageChargeType != nil {
            map["BandwidthPackageChargeType"] = self.bandwidthPackageChargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.geographicRegionAId != nil {
            map["GeographicRegionAId"] = self.geographicRegionAId!
        }
        if self.geographicRegionBId != nil {
            map["GeographicRegionBId"] = self.geographicRegionBId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! Int32
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("BandwidthPackageChargeType") {
            self.bandwidthPackageChargeType = dict["BandwidthPackageChargeType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GeographicRegionAId") {
            self.geographicRegionAId = dict["GeographicRegionAId"] as! String
        }
        if dict.keys.contains("GeographicRegionBId") {
            self.geographicRegionBId = dict["GeographicRegionBId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PricingCycle") {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateCenBandwidthPackageResponseBody : Tea.TeaModel {
    public var cenBandwidthPackageId: String?

    public var cenBandwidthPackageOrderId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cenBandwidthPackageId != nil {
            map["CenBandwidthPackageId"] = self.cenBandwidthPackageId!
        }
        if self.cenBandwidthPackageOrderId != nil {
            map["CenBandwidthPackageOrderId"] = self.cenBandwidthPackageOrderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenBandwidthPackageId") {
            self.cenBandwidthPackageId = dict["CenBandwidthPackageId"] as! String
        }
        if dict.keys.contains("CenBandwidthPackageOrderId") {
            self.cenBandwidthPackageOrderId = dict["CenBandwidthPackageOrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCenBandwidthPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCenBandwidthPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateCenBandwidthPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCenChildInstanceRouteEntryToAttachmentRequest : Tea.TeaModel {
    public var cenId: String?

    public var clientToken: String?

    public var destinationCidrBlock: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var routeTableId: String?

    public var transitRouterAttachmentId: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.routeTableId != nil {
            map["RouteTableId"] = self.routeTableId!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DestinationCidrBlock") {
            self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RouteTableId") {
            self.routeTableId = dict["RouteTableId"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
    }
}

public class CreateCenChildInstanceRouteEntryToAttachmentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class CreateCenChildInstanceRouteEntryToAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCenChildInstanceRouteEntryToAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateCenChildInstanceRouteEntryToAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCenChildInstanceRouteEntryToCenRequest : Tea.TeaModel {
    public var cenId: String?

    public var childInstanceAliUid: Int64?

    public var childInstanceId: String?

    public var childInstanceRegionId: String?

    public var childInstanceType: String?

    public var destinationCidrBlock: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.childInstanceAliUid != nil {
            map["ChildInstanceAliUid"] = self.childInstanceAliUid!
        }
        if self.childInstanceId != nil {
            map["ChildInstanceId"] = self.childInstanceId!
        }
        if self.childInstanceRegionId != nil {
            map["ChildInstanceRegionId"] = self.childInstanceRegionId!
        }
        if self.childInstanceType != nil {
            map["ChildInstanceType"] = self.childInstanceType!
        }
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.routeTableId != nil {
            map["RouteTableId"] = self.routeTableId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ChildInstanceAliUid") {
            self.childInstanceAliUid = dict["ChildInstanceAliUid"] as! Int64
        }
        if dict.keys.contains("ChildInstanceId") {
            self.childInstanceId = dict["ChildInstanceId"] as! String
        }
        if dict.keys.contains("ChildInstanceRegionId") {
            self.childInstanceRegionId = dict["ChildInstanceRegionId"] as! String
        }
        if dict.keys.contains("ChildInstanceType") {
            self.childInstanceType = dict["ChildInstanceType"] as! String
        }
        if dict.keys.contains("DestinationCidrBlock") {
            self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RouteTableId") {
            self.routeTableId = dict["RouteTableId"] as! String
        }
    }
}

public class CreateCenChildInstanceRouteEntryToCenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class CreateCenChildInstanceRouteEntryToCenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCenChildInstanceRouteEntryToCenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateCenChildInstanceRouteEntryToCenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCenInterRegionTrafficQosPolicyRequest : Tea.TeaModel {
    public class TrafficQosQueues : Tea.TeaModel {
        public var dscps: [Int32]?

        public var qosQueueDescription: String?

        public var qosQueueName: String?

        public var remainBandwidthPercent: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dscps != nil {
                map["Dscps"] = self.dscps!
            }
            if self.qosQueueDescription != nil {
                map["QosQueueDescription"] = self.qosQueueDescription!
            }
            if self.qosQueueName != nil {
                map["QosQueueName"] = self.qosQueueName!
            }
            if self.remainBandwidthPercent != nil {
                map["RemainBandwidthPercent"] = self.remainBandwidthPercent!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Dscps") {
                self.dscps = dict["Dscps"] as! [Int32]
            }
            if dict.keys.contains("QosQueueDescription") {
                self.qosQueueDescription = dict["QosQueueDescription"] as! String
            }
            if dict.keys.contains("QosQueueName") {
                self.qosQueueName = dict["QosQueueName"] as! String
            }
            if dict.keys.contains("RemainBandwidthPercent") {
                self.remainBandwidthPercent = dict["RemainBandwidthPercent"] as! String
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trafficQosPolicyDescription: String?

    public var trafficQosPolicyName: String?

    public var trafficQosQueues: [CreateCenInterRegionTrafficQosPolicyRequest.TrafficQosQueues]?

    public var transitRouterAttachmentId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.trafficQosPolicyDescription != nil {
            map["TrafficQosPolicyDescription"] = self.trafficQosPolicyDescription!
        }
        if self.trafficQosPolicyName != nil {
            map["TrafficQosPolicyName"] = self.trafficQosPolicyName!
        }
        if self.trafficQosQueues != nil {
            var tmp : [Any] = []
            for k in self.trafficQosQueues! {
                tmp.append(k.toMap())
            }
            map["TrafficQosQueues"] = tmp
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TrafficQosPolicyDescription") {
            self.trafficQosPolicyDescription = dict["TrafficQosPolicyDescription"] as! String
        }
        if dict.keys.contains("TrafficQosPolicyName") {
            self.trafficQosPolicyName = dict["TrafficQosPolicyName"] as! String
        }
        if dict.keys.contains("TrafficQosQueues") {
            self.trafficQosQueues = dict["TrafficQosQueues"] as! [CreateCenInterRegionTrafficQosPolicyRequest.TrafficQosQueues]
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
    }
}

public class CreateCenInterRegionTrafficQosPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var trafficQosPolicyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trafficQosPolicyId != nil {
            map["TrafficQosPolicyId"] = self.trafficQosPolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrafficQosPolicyId") {
            self.trafficQosPolicyId = dict["TrafficQosPolicyId"] as! String
        }
    }
}

public class CreateCenInterRegionTrafficQosPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCenInterRegionTrafficQosPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateCenInterRegionTrafficQosPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCenInterRegionTrafficQosQueueRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var dscps: [Int32]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var qosQueueDescription: String?

    public var qosQueueName: String?

    public var remainBandwidthPercent: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trafficQosPolicyId: String?

    public override init() {
        super.init()
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
        if self.dscps != nil {
            map["Dscps"] = self.dscps!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qosQueueDescription != nil {
            map["QosQueueDescription"] = self.qosQueueDescription!
        }
        if self.qosQueueName != nil {
            map["QosQueueName"] = self.qosQueueName!
        }
        if self.remainBandwidthPercent != nil {
            map["RemainBandwidthPercent"] = self.remainBandwidthPercent!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.trafficQosPolicyId != nil {
            map["TrafficQosPolicyId"] = self.trafficQosPolicyId!
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
        if dict.keys.contains("Dscps") {
            self.dscps = dict["Dscps"] as! [Int32]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("QosQueueDescription") {
            self.qosQueueDescription = dict["QosQueueDescription"] as! String
        }
        if dict.keys.contains("QosQueueName") {
            self.qosQueueName = dict["QosQueueName"] as! String
        }
        if dict.keys.contains("RemainBandwidthPercent") {
            self.remainBandwidthPercent = dict["RemainBandwidthPercent"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TrafficQosPolicyId") {
            self.trafficQosPolicyId = dict["TrafficQosPolicyId"] as! String
        }
    }
}

public class CreateCenInterRegionTrafficQosQueueResponseBody : Tea.TeaModel {
    public var qosQueueId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.qosQueueId != nil {
            map["QosQueueId"] = self.qosQueueId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QosQueueId") {
            self.qosQueueId = dict["QosQueueId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCenInterRegionTrafficQosQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCenInterRegionTrafficQosQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateCenInterRegionTrafficQosQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCenRouteMapRequest : Tea.TeaModel {
    public var asPathMatchMode: String?

    public var cenId: String?

    public var cenRegionId: String?

    public var cidrMatchMode: String?

    public var communityMatchMode: String?

    public var communityOperateMode: String?

    public var description_: String?

    public var destinationChildInstanceTypes: [String]?

    public var destinationCidrBlocks: [String]?

    public var destinationInstanceIds: [String]?

    public var destinationInstanceIdsReverseMatch: Bool?

    public var destinationRouteTableIds: [String]?

    public var mapResult: String?

    public var matchAddressType: String?

    public var matchAsns: [Int64]?

    public var matchCommunitySet: [String]?

    public var nextPriority: Int32?

    public var operateCommunitySet: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var preference: Int32?

    public var prependAsPath: [Int64]?

    public var priority: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var routeTypes: [String]?

    public var sourceChildInstanceTypes: [String]?

    public var sourceInstanceIds: [String]?

    public var sourceInstanceIdsReverseMatch: Bool?

    public var sourceRegionIds: [String]?

    public var sourceRouteTableIds: [String]?

    public var transitRouterRouteTableId: String?

    public var transmitDirection: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asPathMatchMode != nil {
            map["AsPathMatchMode"] = self.asPathMatchMode!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.cenRegionId != nil {
            map["CenRegionId"] = self.cenRegionId!
        }
        if self.cidrMatchMode != nil {
            map["CidrMatchMode"] = self.cidrMatchMode!
        }
        if self.communityMatchMode != nil {
            map["CommunityMatchMode"] = self.communityMatchMode!
        }
        if self.communityOperateMode != nil {
            map["CommunityOperateMode"] = self.communityOperateMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destinationChildInstanceTypes != nil {
            map["DestinationChildInstanceTypes"] = self.destinationChildInstanceTypes!
        }
        if self.destinationCidrBlocks != nil {
            map["DestinationCidrBlocks"] = self.destinationCidrBlocks!
        }
        if self.destinationInstanceIds != nil {
            map["DestinationInstanceIds"] = self.destinationInstanceIds!
        }
        if self.destinationInstanceIdsReverseMatch != nil {
            map["DestinationInstanceIdsReverseMatch"] = self.destinationInstanceIdsReverseMatch!
        }
        if self.destinationRouteTableIds != nil {
            map["DestinationRouteTableIds"] = self.destinationRouteTableIds!
        }
        if self.mapResult != nil {
            map["MapResult"] = self.mapResult!
        }
        if self.matchAddressType != nil {
            map["MatchAddressType"] = self.matchAddressType!
        }
        if self.matchAsns != nil {
            map["MatchAsns"] = self.matchAsns!
        }
        if self.matchCommunitySet != nil {
            map["MatchCommunitySet"] = self.matchCommunitySet!
        }
        if self.nextPriority != nil {
            map["NextPriority"] = self.nextPriority!
        }
        if self.operateCommunitySet != nil {
            map["OperateCommunitySet"] = self.operateCommunitySet!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.preference != nil {
            map["Preference"] = self.preference!
        }
        if self.prependAsPath != nil {
            map["PrependAsPath"] = self.prependAsPath!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.routeTypes != nil {
            map["RouteTypes"] = self.routeTypes!
        }
        if self.sourceChildInstanceTypes != nil {
            map["SourceChildInstanceTypes"] = self.sourceChildInstanceTypes!
        }
        if self.sourceInstanceIds != nil {
            map["SourceInstanceIds"] = self.sourceInstanceIds!
        }
        if self.sourceInstanceIdsReverseMatch != nil {
            map["SourceInstanceIdsReverseMatch"] = self.sourceInstanceIdsReverseMatch!
        }
        if self.sourceRegionIds != nil {
            map["SourceRegionIds"] = self.sourceRegionIds!
        }
        if self.sourceRouteTableIds != nil {
            map["SourceRouteTableIds"] = self.sourceRouteTableIds!
        }
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
        }
        if self.transmitDirection != nil {
            map["TransmitDirection"] = self.transmitDirection!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AsPathMatchMode") {
            self.asPathMatchMode = dict["AsPathMatchMode"] as! String
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CenRegionId") {
            self.cenRegionId = dict["CenRegionId"] as! String
        }
        if dict.keys.contains("CidrMatchMode") {
            self.cidrMatchMode = dict["CidrMatchMode"] as! String
        }
        if dict.keys.contains("CommunityMatchMode") {
            self.communityMatchMode = dict["CommunityMatchMode"] as! String
        }
        if dict.keys.contains("CommunityOperateMode") {
            self.communityOperateMode = dict["CommunityOperateMode"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestinationChildInstanceTypes") {
            self.destinationChildInstanceTypes = dict["DestinationChildInstanceTypes"] as! [String]
        }
        if dict.keys.contains("DestinationCidrBlocks") {
            self.destinationCidrBlocks = dict["DestinationCidrBlocks"] as! [String]
        }
        if dict.keys.contains("DestinationInstanceIds") {
            self.destinationInstanceIds = dict["DestinationInstanceIds"] as! [String]
        }
        if dict.keys.contains("DestinationInstanceIdsReverseMatch") {
            self.destinationInstanceIdsReverseMatch = dict["DestinationInstanceIdsReverseMatch"] as! Bool
        }
        if dict.keys.contains("DestinationRouteTableIds") {
            self.destinationRouteTableIds = dict["DestinationRouteTableIds"] as! [String]
        }
        if dict.keys.contains("MapResult") {
            self.mapResult = dict["MapResult"] as! String
        }
        if dict.keys.contains("MatchAddressType") {
            self.matchAddressType = dict["MatchAddressType"] as! String
        }
        if dict.keys.contains("MatchAsns") {
            self.matchAsns = dict["MatchAsns"] as! [Int64]
        }
        if dict.keys.contains("MatchCommunitySet") {
            self.matchCommunitySet = dict["MatchCommunitySet"] as! [String]
        }
        if dict.keys.contains("NextPriority") {
            self.nextPriority = dict["NextPriority"] as! Int32
        }
        if dict.keys.contains("OperateCommunitySet") {
            self.operateCommunitySet = dict["OperateCommunitySet"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Preference") {
            self.preference = dict["Preference"] as! Int32
        }
        if dict.keys.contains("PrependAsPath") {
            self.prependAsPath = dict["PrependAsPath"] as! [Int64]
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RouteTypes") {
            self.routeTypes = dict["RouteTypes"] as! [String]
        }
        if dict.keys.contains("SourceChildInstanceTypes") {
            self.sourceChildInstanceTypes = dict["SourceChildInstanceTypes"] as! [String]
        }
        if dict.keys.contains("SourceInstanceIds") {
            self.sourceInstanceIds = dict["SourceInstanceIds"] as! [String]
        }
        if dict.keys.contains("SourceInstanceIdsReverseMatch") {
            self.sourceInstanceIdsReverseMatch = dict["SourceInstanceIdsReverseMatch"] as! Bool
        }
        if dict.keys.contains("SourceRegionIds") {
            self.sourceRegionIds = dict["SourceRegionIds"] as! [String]
        }
        if dict.keys.contains("SourceRouteTableIds") {
            self.sourceRouteTableIds = dict["SourceRouteTableIds"] as! [String]
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
        if dict.keys.contains("TransmitDirection") {
            self.transmitDirection = dict["TransmitDirection"] as! String
        }
    }
}

public class CreateCenRouteMapResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var routeMapId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.routeMapId != nil {
            map["RouteMapId"] = self.routeMapId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RouteMapId") {
            self.routeMapId = dict["RouteMapId"] as! String
        }
    }
}

public class CreateCenRouteMapResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCenRouteMapResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateCenRouteMapResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFlowlogRequest : Tea.TeaModel {
    public var cenId: String?

    public var clientToken: String?

    public var description_: String?

    public var flowLogName: String?

    public var interval: Int64?

    public var logStoreName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var projectName: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.flowLogName != nil {
            map["FlowLogName"] = self.flowLogName!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FlowLogName") {
            self.flowLogName = dict["FlowLogName"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("LogStoreName") {
            self.logStoreName = dict["LogStoreName"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
    }
}

public class CreateFlowlogResponseBody : Tea.TeaModel {
    public var flowLogId: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowLogId != nil {
            map["FlowLogId"] = self.flowLogId!
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
        if dict.keys.contains("FlowLogId") {
            self.flowLogId = dict["FlowLogId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class CreateFlowlogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlowlogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateFlowlogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTrafficMarkingPolicyRequest : Tea.TeaModel {
    public class TrafficMatchRules : Tea.TeaModel {
        public var dstCidr: String?

        public var dstPortRange: [Int32]?

        public var matchDscp: Int32?

        public var protocol_: String?

        public var srcCidr: String?

        public var srcPortRange: [Int32]?

        public var trafficMatchRuleDescription: String?

        public var trafficMatchRuleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dstCidr != nil {
                map["DstCidr"] = self.dstCidr!
            }
            if self.dstPortRange != nil {
                map["DstPortRange"] = self.dstPortRange!
            }
            if self.matchDscp != nil {
                map["MatchDscp"] = self.matchDscp!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.srcCidr != nil {
                map["SrcCidr"] = self.srcCidr!
            }
            if self.srcPortRange != nil {
                map["SrcPortRange"] = self.srcPortRange!
            }
            if self.trafficMatchRuleDescription != nil {
                map["TrafficMatchRuleDescription"] = self.trafficMatchRuleDescription!
            }
            if self.trafficMatchRuleName != nil {
                map["TrafficMatchRuleName"] = self.trafficMatchRuleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DstCidr") {
                self.dstCidr = dict["DstCidr"] as! String
            }
            if dict.keys.contains("DstPortRange") {
                self.dstPortRange = dict["DstPortRange"] as! [Int32]
            }
            if dict.keys.contains("MatchDscp") {
                self.matchDscp = dict["MatchDscp"] as! Int32
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("SrcCidr") {
                self.srcCidr = dict["SrcCidr"] as! String
            }
            if dict.keys.contains("SrcPortRange") {
                self.srcPortRange = dict["SrcPortRange"] as! [Int32]
            }
            if dict.keys.contains("TrafficMatchRuleDescription") {
                self.trafficMatchRuleDescription = dict["TrafficMatchRuleDescription"] as! String
            }
            if dict.keys.contains("TrafficMatchRuleName") {
                self.trafficMatchRuleName = dict["TrafficMatchRuleName"] as! String
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var markingDscp: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var priority: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trafficMarkingPolicyDescription: String?

    public var trafficMarkingPolicyName: String?

    public var trafficMatchRules: [CreateTrafficMarkingPolicyRequest.TrafficMatchRules]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.markingDscp != nil {
            map["MarkingDscp"] = self.markingDscp!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.trafficMarkingPolicyDescription != nil {
            map["TrafficMarkingPolicyDescription"] = self.trafficMarkingPolicyDescription!
        }
        if self.trafficMarkingPolicyName != nil {
            map["TrafficMarkingPolicyName"] = self.trafficMarkingPolicyName!
        }
        if self.trafficMatchRules != nil {
            var tmp : [Any] = []
            for k in self.trafficMatchRules! {
                tmp.append(k.toMap())
            }
            map["TrafficMatchRules"] = tmp
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
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
        if dict.keys.contains("MarkingDscp") {
            self.markingDscp = dict["MarkingDscp"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TrafficMarkingPolicyDescription") {
            self.trafficMarkingPolicyDescription = dict["TrafficMarkingPolicyDescription"] as! String
        }
        if dict.keys.contains("TrafficMarkingPolicyName") {
            self.trafficMarkingPolicyName = dict["TrafficMarkingPolicyName"] as! String
        }
        if dict.keys.contains("TrafficMatchRules") {
            self.trafficMatchRules = dict["TrafficMatchRules"] as! [CreateTrafficMarkingPolicyRequest.TrafficMatchRules]
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
    }
}

public class CreateTrafficMarkingPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var trafficMarkingPolicyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trafficMarkingPolicyId != nil {
            map["TrafficMarkingPolicyId"] = self.trafficMarkingPolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrafficMarkingPolicyId") {
            self.trafficMarkingPolicyId = dict["TrafficMarkingPolicyId"] as! String
        }
    }
}

public class CreateTrafficMarkingPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTrafficMarkingPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateTrafficMarkingPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTransitRouterRequest : Tea.TeaModel {
    public var cenId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var supportMulticast: Bool?

    public var transitRouterDescription: String?

    public var transitRouterName: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.supportMulticast != nil {
            map["SupportMulticast"] = self.supportMulticast!
        }
        if self.transitRouterDescription != nil {
            map["TransitRouterDescription"] = self.transitRouterDescription!
        }
        if self.transitRouterName != nil {
            map["TransitRouterName"] = self.transitRouterName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SupportMulticast") {
            self.supportMulticast = dict["SupportMulticast"] as! Bool
        }
        if dict.keys.contains("TransitRouterDescription") {
            self.transitRouterDescription = dict["TransitRouterDescription"] as! String
        }
        if dict.keys.contains("TransitRouterName") {
            self.transitRouterName = dict["TransitRouterName"] as! String
        }
    }
}

public class CreateTransitRouterResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
    }
}

public class CreateTransitRouterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTransitRouterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateTransitRouterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTransitRouterMulticastDomainRequest : Tea.TeaModel {
    public var cenId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterId: String?

    public var transitRouterMulticastDomainDescription: String?

    public var transitRouterMulticastDomainName: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        if self.transitRouterMulticastDomainDescription != nil {
            map["TransitRouterMulticastDomainDescription"] = self.transitRouterMulticastDomainDescription!
        }
        if self.transitRouterMulticastDomainName != nil {
            map["TransitRouterMulticastDomainName"] = self.transitRouterMulticastDomainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
        if dict.keys.contains("TransitRouterMulticastDomainDescription") {
            self.transitRouterMulticastDomainDescription = dict["TransitRouterMulticastDomainDescription"] as! String
        }
        if dict.keys.contains("TransitRouterMulticastDomainName") {
            self.transitRouterMulticastDomainName = dict["TransitRouterMulticastDomainName"] as! String
        }
    }
}

public class CreateTransitRouterMulticastDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var transitRouterMulticastDomainId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.transitRouterMulticastDomainId != nil {
            map["TransitRouterMulticastDomainId"] = self.transitRouterMulticastDomainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TransitRouterMulticastDomainId") {
            self.transitRouterMulticastDomainId = dict["TransitRouterMulticastDomainId"] as! String
        }
    }
}

public class CreateTransitRouterMulticastDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTransitRouterMulticastDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateTransitRouterMulticastDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTransitRouterPeerAttachmentRequest : Tea.TeaModel {
    public var autoPublishRouteEnabled: Bool?

    public var bandwidth: Int32?

    public var bandwidthType: String?

    public var cenBandwidthPackageId: String?

    public var cenId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var peerTransitRouterId: String?

    public var peerTransitRouterRegionId: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentDescription: String?

    public var transitRouterAttachmentName: String?

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
        if self.autoPublishRouteEnabled != nil {
            map["AutoPublishRouteEnabled"] = self.autoPublishRouteEnabled!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.bandwidthType != nil {
            map["BandwidthType"] = self.bandwidthType!
        }
        if self.cenBandwidthPackageId != nil {
            map["CenBandwidthPackageId"] = self.cenBandwidthPackageId!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.peerTransitRouterId != nil {
            map["PeerTransitRouterId"] = self.peerTransitRouterId!
        }
        if self.peerTransitRouterRegionId != nil {
            map["PeerTransitRouterRegionId"] = self.peerTransitRouterRegionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterAttachmentDescription != nil {
            map["TransitRouterAttachmentDescription"] = self.transitRouterAttachmentDescription!
        }
        if self.transitRouterAttachmentName != nil {
            map["TransitRouterAttachmentName"] = self.transitRouterAttachmentName!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPublishRouteEnabled") {
            self.autoPublishRouteEnabled = dict["AutoPublishRouteEnabled"] as! Bool
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("BandwidthType") {
            self.bandwidthType = dict["BandwidthType"] as! String
        }
        if dict.keys.contains("CenBandwidthPackageId") {
            self.cenBandwidthPackageId = dict["CenBandwidthPackageId"] as! String
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PeerTransitRouterId") {
            self.peerTransitRouterId = dict["PeerTransitRouterId"] as! String
        }
        if dict.keys.contains("PeerTransitRouterRegionId") {
            self.peerTransitRouterRegionId = dict["PeerTransitRouterRegionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentDescription") {
            self.transitRouterAttachmentDescription = dict["TransitRouterAttachmentDescription"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentName") {
            self.transitRouterAttachmentName = dict["TransitRouterAttachmentName"] as! String
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
    }
}

public class CreateTransitRouterPeerAttachmentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var transitRouterAttachmentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
    }
}

public class CreateTransitRouterPeerAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTransitRouterPeerAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateTransitRouterPeerAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTransitRouterPrefixListAssociationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var nextHop: String?

    public var nextHopType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var ownerUid: Int64?

    public var prefixListId: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterId: String?

    public var transitRouterTableId: String?

    public override init() {
        super.init()
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
        if self.nextHop != nil {
            map["NextHop"] = self.nextHop!
        }
        if self.nextHopType != nil {
            map["NextHopType"] = self.nextHopType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.ownerUid != nil {
            map["OwnerUid"] = self.ownerUid!
        }
        if self.prefixListId != nil {
            map["PrefixListId"] = self.prefixListId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        if self.transitRouterTableId != nil {
            map["TransitRouterTableId"] = self.transitRouterTableId!
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
        if dict.keys.contains("NextHop") {
            self.nextHop = dict["NextHop"] as! String
        }
        if dict.keys.contains("NextHopType") {
            self.nextHopType = dict["NextHopType"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("OwnerUid") {
            self.ownerUid = dict["OwnerUid"] as! Int64
        }
        if dict.keys.contains("PrefixListId") {
            self.prefixListId = dict["PrefixListId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
        if dict.keys.contains("TransitRouterTableId") {
            self.transitRouterTableId = dict["TransitRouterTableId"] as! String
        }
    }
}

public class CreateTransitRouterPrefixListAssociationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class CreateTransitRouterPrefixListAssociationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTransitRouterPrefixListAssociationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateTransitRouterPrefixListAssociationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTransitRouterRouteEntryRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterRouteEntryDescription: String?

    public var transitRouterRouteEntryDestinationCidrBlock: String?

    public var transitRouterRouteEntryName: String?

    public var transitRouterRouteEntryNextHopId: String?

    public var transitRouterRouteEntryNextHopType: String?

    public var transitRouterRouteTableId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterRouteEntryDescription != nil {
            map["TransitRouterRouteEntryDescription"] = self.transitRouterRouteEntryDescription!
        }
        if self.transitRouterRouteEntryDestinationCidrBlock != nil {
            map["TransitRouterRouteEntryDestinationCidrBlock"] = self.transitRouterRouteEntryDestinationCidrBlock!
        }
        if self.transitRouterRouteEntryName != nil {
            map["TransitRouterRouteEntryName"] = self.transitRouterRouteEntryName!
        }
        if self.transitRouterRouteEntryNextHopId != nil {
            map["TransitRouterRouteEntryNextHopId"] = self.transitRouterRouteEntryNextHopId!
        }
        if self.transitRouterRouteEntryNextHopType != nil {
            map["TransitRouterRouteEntryNextHopType"] = self.transitRouterRouteEntryNextHopType!
        }
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterRouteEntryDescription") {
            self.transitRouterRouteEntryDescription = dict["TransitRouterRouteEntryDescription"] as! String
        }
        if dict.keys.contains("TransitRouterRouteEntryDestinationCidrBlock") {
            self.transitRouterRouteEntryDestinationCidrBlock = dict["TransitRouterRouteEntryDestinationCidrBlock"] as! String
        }
        if dict.keys.contains("TransitRouterRouteEntryName") {
            self.transitRouterRouteEntryName = dict["TransitRouterRouteEntryName"] as! String
        }
        if dict.keys.contains("TransitRouterRouteEntryNextHopId") {
            self.transitRouterRouteEntryNextHopId = dict["TransitRouterRouteEntryNextHopId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteEntryNextHopType") {
            self.transitRouterRouteEntryNextHopType = dict["TransitRouterRouteEntryNextHopType"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
    }
}

public class CreateTransitRouterRouteEntryResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var transitRouterRouteEntryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.transitRouterRouteEntryId != nil {
            map["TransitRouterRouteEntryId"] = self.transitRouterRouteEntryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteEntryId") {
            self.transitRouterRouteEntryId = dict["TransitRouterRouteEntryId"] as! String
        }
    }
}

public class CreateTransitRouterRouteEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTransitRouterRouteEntryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateTransitRouterRouteEntryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTransitRouterRouteTableRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterId: String?

    public var transitRouterRouteTableDescription: String?

    public var transitRouterRouteTableName: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        if self.transitRouterRouteTableDescription != nil {
            map["TransitRouterRouteTableDescription"] = self.transitRouterRouteTableDescription!
        }
        if self.transitRouterRouteTableName != nil {
            map["TransitRouterRouteTableName"] = self.transitRouterRouteTableName!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableDescription") {
            self.transitRouterRouteTableDescription = dict["TransitRouterRouteTableDescription"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableName") {
            self.transitRouterRouteTableName = dict["TransitRouterRouteTableName"] as! String
        }
    }
}

public class CreateTransitRouterRouteTableResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var transitRouterRouteTableId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
    }
}

public class CreateTransitRouterRouteTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTransitRouterRouteTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateTransitRouterRouteTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTransitRouterVbrAttachmentRequest : Tea.TeaModel {
    public var autoPublishRouteEnabled: Bool?

    public var cenId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentDescription: String?

    public var transitRouterAttachmentName: String?

    public var transitRouterId: String?

    public var vbrId: String?

    public var vbrOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPublishRouteEnabled != nil {
            map["AutoPublishRouteEnabled"] = self.autoPublishRouteEnabled!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterAttachmentDescription != nil {
            map["TransitRouterAttachmentDescription"] = self.transitRouterAttachmentDescription!
        }
        if self.transitRouterAttachmentName != nil {
            map["TransitRouterAttachmentName"] = self.transitRouterAttachmentName!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        if self.vbrId != nil {
            map["VbrId"] = self.vbrId!
        }
        if self.vbrOwnerId != nil {
            map["VbrOwnerId"] = self.vbrOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPublishRouteEnabled") {
            self.autoPublishRouteEnabled = dict["AutoPublishRouteEnabled"] as! Bool
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentDescription") {
            self.transitRouterAttachmentDescription = dict["TransitRouterAttachmentDescription"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentName") {
            self.transitRouterAttachmentName = dict["TransitRouterAttachmentName"] as! String
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
        if dict.keys.contains("VbrId") {
            self.vbrId = dict["VbrId"] as! String
        }
        if dict.keys.contains("VbrOwnerId") {
            self.vbrOwnerId = dict["VbrOwnerId"] as! Int64
        }
    }
}

public class CreateTransitRouterVbrAttachmentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var transitRouterAttachmentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
    }
}

public class CreateTransitRouterVbrAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTransitRouterVbrAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateTransitRouterVbrAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTransitRouterVpcAttachmentRequest : Tea.TeaModel {
    public class ZoneMappings : Tea.TeaModel {
        public var vSwitchId: String?

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
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var cenId: String?

    public var chargeType: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentDescription: String?

    public var transitRouterAttachmentName: String?

    public var transitRouterId: String?

    public var vpcId: String?

    public var vpcOwnerId: Int64?

    public var zoneMappings: [CreateTransitRouterVpcAttachmentRequest.ZoneMappings]?

    public override init() {
        super.init()
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
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterAttachmentDescription != nil {
            map["TransitRouterAttachmentDescription"] = self.transitRouterAttachmentDescription!
        }
        if self.transitRouterAttachmentName != nil {
            map["TransitRouterAttachmentName"] = self.transitRouterAttachmentName!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vpcOwnerId != nil {
            map["VpcOwnerId"] = self.vpcOwnerId!
        }
        if self.zoneMappings != nil {
            var tmp : [Any] = []
            for k in self.zoneMappings! {
                tmp.append(k.toMap())
            }
            map["ZoneMappings"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentDescription") {
            self.transitRouterAttachmentDescription = dict["TransitRouterAttachmentDescription"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentName") {
            self.transitRouterAttachmentName = dict["TransitRouterAttachmentName"] as! String
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VpcOwnerId") {
            self.vpcOwnerId = dict["VpcOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneMappings") {
            self.zoneMappings = dict["ZoneMappings"] as! [CreateTransitRouterVpcAttachmentRequest.ZoneMappings]
        }
    }
}

public class CreateTransitRouterVpcAttachmentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var transitRouterAttachmentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
    }
}

public class CreateTransitRouterVpcAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTransitRouterVpcAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateTransitRouterVpcAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTransitRouterVpnAttachmentRequest : Tea.TeaModel {
    public class Zone : Tea.TeaModel {
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
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var autoPublishRouteEnabled: Bool?

    public var cenId: String?

    public var chargeType: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentDescription: String?

    public var transitRouterAttachmentName: String?

    public var transitRouterId: String?

    public var vpnId: String?

    public var vpnOwnerId: Int64?

    public var zone: [CreateTransitRouterVpnAttachmentRequest.Zone]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPublishRouteEnabled != nil {
            map["AutoPublishRouteEnabled"] = self.autoPublishRouteEnabled!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterAttachmentDescription != nil {
            map["TransitRouterAttachmentDescription"] = self.transitRouterAttachmentDescription!
        }
        if self.transitRouterAttachmentName != nil {
            map["TransitRouterAttachmentName"] = self.transitRouterAttachmentName!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        if self.vpnId != nil {
            map["VpnId"] = self.vpnId!
        }
        if self.vpnOwnerId != nil {
            map["VpnOwnerId"] = self.vpnOwnerId!
        }
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
        if dict.keys.contains("AutoPublishRouteEnabled") {
            self.autoPublishRouteEnabled = dict["AutoPublishRouteEnabled"] as! Bool
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentDescription") {
            self.transitRouterAttachmentDescription = dict["TransitRouterAttachmentDescription"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentName") {
            self.transitRouterAttachmentName = dict["TransitRouterAttachmentName"] as! String
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
        if dict.keys.contains("VpnId") {
            self.vpnId = dict["VpnId"] as! String
        }
        if dict.keys.contains("VpnOwnerId") {
            self.vpnOwnerId = dict["VpnOwnerId"] as! Int64
        }
        if dict.keys.contains("Zone") {
            self.zone = dict["Zone"] as! [CreateTransitRouterVpnAttachmentRequest.Zone]
        }
    }
}

public class CreateTransitRouterVpnAttachmentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var transitRouterAttachmentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
    }
}

public class CreateTransitRouterVpnAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTransitRouterVpnAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateTransitRouterVpnAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeactiveFlowLogRequest : Tea.TeaModel {
    public var cenId: String?

    public var clientToken: String?

    public var flowLogId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.flowLogId != nil {
            map["FlowLogId"] = self.flowLogId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("FlowLogId") {
            self.flowLogId = dict["FlowLogId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeactiveFlowLogResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class DeactiveFlowLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeactiveFlowLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeactiveFlowLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCenRequest : Tea.TeaModel {
    public var cenId: String?

    public var ownerAccount: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteCenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteCenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteCenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCenBandwidthPackageRequest : Tea.TeaModel {
    public var cenBandwidthPackageId: String?

    public var ownerAccount: String?

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
        if self.cenBandwidthPackageId != nil {
            map["CenBandwidthPackageId"] = self.cenBandwidthPackageId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenBandwidthPackageId") {
            self.cenBandwidthPackageId = dict["CenBandwidthPackageId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteCenBandwidthPackageResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteCenBandwidthPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCenBandwidthPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteCenBandwidthPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCenChildInstanceRouteEntryToAttachmentRequest : Tea.TeaModel {
    public var cenId: String?

    public var clientToken: String?

    public var destinationCidrBlock: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var routeTableId: String?

    public var transitRouterAttachmentId: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.routeTableId != nil {
            map["RouteTableId"] = self.routeTableId!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DestinationCidrBlock") {
            self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RouteTableId") {
            self.routeTableId = dict["RouteTableId"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
    }
}

public class DeleteCenChildInstanceRouteEntryToAttachmentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteCenChildInstanceRouteEntryToAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCenChildInstanceRouteEntryToAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteCenChildInstanceRouteEntryToAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCenChildInstanceRouteEntryToCenRequest : Tea.TeaModel {
    public var cenId: String?

    public var childInstanceAliUid: Int64?

    public var childInstanceId: String?

    public var childInstanceRegionId: String?

    public var childInstanceType: String?

    public var destinationCidrBlock: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.childInstanceAliUid != nil {
            map["ChildInstanceAliUid"] = self.childInstanceAliUid!
        }
        if self.childInstanceId != nil {
            map["ChildInstanceId"] = self.childInstanceId!
        }
        if self.childInstanceRegionId != nil {
            map["ChildInstanceRegionId"] = self.childInstanceRegionId!
        }
        if self.childInstanceType != nil {
            map["ChildInstanceType"] = self.childInstanceType!
        }
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.routeTableId != nil {
            map["RouteTableId"] = self.routeTableId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ChildInstanceAliUid") {
            self.childInstanceAliUid = dict["ChildInstanceAliUid"] as! Int64
        }
        if dict.keys.contains("ChildInstanceId") {
            self.childInstanceId = dict["ChildInstanceId"] as! String
        }
        if dict.keys.contains("ChildInstanceRegionId") {
            self.childInstanceRegionId = dict["ChildInstanceRegionId"] as! String
        }
        if dict.keys.contains("ChildInstanceType") {
            self.childInstanceType = dict["ChildInstanceType"] as! String
        }
        if dict.keys.contains("DestinationCidrBlock") {
            self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RouteTableId") {
            self.routeTableId = dict["RouteTableId"] as! String
        }
    }
}

public class DeleteCenChildInstanceRouteEntryToCenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteCenChildInstanceRouteEntryToCenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCenChildInstanceRouteEntryToCenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteCenChildInstanceRouteEntryToCenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCenInterRegionTrafficQosPolicyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trafficQosPolicyId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.trafficQosPolicyId != nil {
            map["TrafficQosPolicyId"] = self.trafficQosPolicyId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TrafficQosPolicyId") {
            self.trafficQosPolicyId = dict["TrafficQosPolicyId"] as! String
        }
    }
}

public class DeleteCenInterRegionTrafficQosPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteCenInterRegionTrafficQosPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCenInterRegionTrafficQosPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteCenInterRegionTrafficQosPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCenInterRegionTrafficQosQueueRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var qosQueueId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qosQueueId != nil {
            map["QosQueueId"] = self.qosQueueId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("QosQueueId") {
            self.qosQueueId = dict["QosQueueId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteCenInterRegionTrafficQosQueueResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteCenInterRegionTrafficQosQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCenInterRegionTrafficQosQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteCenInterRegionTrafficQosQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCenRouteMapRequest : Tea.TeaModel {
    public var cenId: String?

    public var cenRegionId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var routeMapId: String?

    public override init() {
        super.init()
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
        if self.cenRegionId != nil {
            map["CenRegionId"] = self.cenRegionId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.routeMapId != nil {
            map["RouteMapId"] = self.routeMapId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CenRegionId") {
            self.cenRegionId = dict["CenRegionId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RouteMapId") {
            self.routeMapId = dict["RouteMapId"] as! String
        }
    }
}

public class DeleteCenRouteMapResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteCenRouteMapResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCenRouteMapResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteCenRouteMapResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFlowlogRequest : Tea.TeaModel {
    public var cenId: String?

    public var clientToken: String?

    public var flowLogId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.flowLogId != nil {
            map["FlowLogId"] = self.flowLogId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("FlowLogId") {
            self.flowLogId = dict["FlowLogId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteFlowlogResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class DeleteFlowlogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlowlogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteFlowlogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRouteServiceInCenRequest : Tea.TeaModel {
    public var accessRegionId: String?

    public var cenId: String?

    public var host: String?

    public var hostRegionId: String?

    public var hostVpcId: String?

    public var ownerAccount: String?

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
        if self.accessRegionId != nil {
            map["AccessRegionId"] = self.accessRegionId!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.hostRegionId != nil {
            map["HostRegionId"] = self.hostRegionId!
        }
        if self.hostVpcId != nil {
            map["HostVpcId"] = self.hostVpcId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessRegionId") {
            self.accessRegionId = dict["AccessRegionId"] as! String
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("HostRegionId") {
            self.hostRegionId = dict["HostRegionId"] as! String
        }
        if dict.keys.contains("HostVpcId") {
            self.hostVpcId = dict["HostVpcId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteRouteServiceInCenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteRouteServiceInCenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRouteServiceInCenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteRouteServiceInCenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTrafficMarkingPolicyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trafficMarkingPolicyId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.trafficMarkingPolicyId != nil {
            map["TrafficMarkingPolicyId"] = self.trafficMarkingPolicyId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TrafficMarkingPolicyId") {
            self.trafficMarkingPolicyId = dict["TrafficMarkingPolicyId"] as! String
        }
    }
}

public class DeleteTrafficMarkingPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteTrafficMarkingPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTrafficMarkingPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteTrafficMarkingPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTransitRouterRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
    }
}

public class DeleteTransitRouterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteTransitRouterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTransitRouterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteTransitRouterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTransitRouterMulticastDomainRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterMulticastDomainId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterMulticastDomainId != nil {
            map["TransitRouterMulticastDomainId"] = self.transitRouterMulticastDomainId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterMulticastDomainId") {
            self.transitRouterMulticastDomainId = dict["TransitRouterMulticastDomainId"] as! String
        }
    }
}

public class DeleteTransitRouterMulticastDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteTransitRouterMulticastDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTransitRouterMulticastDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteTransitRouterMulticastDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTransitRouterPeerAttachmentRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
    }
}

public class DeleteTransitRouterPeerAttachmentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteTransitRouterPeerAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTransitRouterPeerAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteTransitRouterPeerAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTransitRouterPrefixListAssociationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var nextHop: String?

    public var nextHopType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var prefixListId: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterId: String?

    public var transitRouterTableId: String?

    public override init() {
        super.init()
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
        if self.nextHop != nil {
            map["NextHop"] = self.nextHop!
        }
        if self.nextHopType != nil {
            map["NextHopType"] = self.nextHopType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prefixListId != nil {
            map["PrefixListId"] = self.prefixListId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        if self.transitRouterTableId != nil {
            map["TransitRouterTableId"] = self.transitRouterTableId!
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
        if dict.keys.contains("NextHop") {
            self.nextHop = dict["NextHop"] as! String
        }
        if dict.keys.contains("NextHopType") {
            self.nextHopType = dict["NextHopType"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PrefixListId") {
            self.prefixListId = dict["PrefixListId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
        if dict.keys.contains("TransitRouterTableId") {
            self.transitRouterTableId = dict["TransitRouterTableId"] as! String
        }
    }
}

public class DeleteTransitRouterPrefixListAssociationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteTransitRouterPrefixListAssociationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTransitRouterPrefixListAssociationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteTransitRouterPrefixListAssociationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTransitRouterRouteEntryRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterRouteEntryDestinationCidrBlock: String?

    public var transitRouterRouteEntryId: String?

    public var transitRouterRouteEntryNextHopId: String?

    public var transitRouterRouteEntryNextHopType: String?

    public var transitRouterRouteTableId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterRouteEntryDestinationCidrBlock != nil {
            map["TransitRouterRouteEntryDestinationCidrBlock"] = self.transitRouterRouteEntryDestinationCidrBlock!
        }
        if self.transitRouterRouteEntryId != nil {
            map["TransitRouterRouteEntryId"] = self.transitRouterRouteEntryId!
        }
        if self.transitRouterRouteEntryNextHopId != nil {
            map["TransitRouterRouteEntryNextHopId"] = self.transitRouterRouteEntryNextHopId!
        }
        if self.transitRouterRouteEntryNextHopType != nil {
            map["TransitRouterRouteEntryNextHopType"] = self.transitRouterRouteEntryNextHopType!
        }
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterRouteEntryDestinationCidrBlock") {
            self.transitRouterRouteEntryDestinationCidrBlock = dict["TransitRouterRouteEntryDestinationCidrBlock"] as! String
        }
        if dict.keys.contains("TransitRouterRouteEntryId") {
            self.transitRouterRouteEntryId = dict["TransitRouterRouteEntryId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteEntryNextHopId") {
            self.transitRouterRouteEntryNextHopId = dict["TransitRouterRouteEntryNextHopId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteEntryNextHopType") {
            self.transitRouterRouteEntryNextHopType = dict["TransitRouterRouteEntryNextHopType"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
    }
}

public class DeleteTransitRouterRouteEntryResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteTransitRouterRouteEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTransitRouterRouteEntryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteTransitRouterRouteEntryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTransitRouterRouteTableRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterRouteTableId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
    }
}

public class DeleteTransitRouterRouteTableResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteTransitRouterRouteTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTransitRouterRouteTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteTransitRouterRouteTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTransitRouterVbrAttachmentRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
    }
}

public class DeleteTransitRouterVbrAttachmentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteTransitRouterVbrAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTransitRouterVbrAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteTransitRouterVbrAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTransitRouterVpcAttachmentRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
    }
}

public class DeleteTransitRouterVpcAttachmentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteTransitRouterVpcAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTransitRouterVpcAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteTransitRouterVpcAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTransitRouterVpnAttachmentRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
    }
}

public class DeleteTransitRouterVpnAttachmentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteTransitRouterVpnAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTransitRouterVpnAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteTransitRouterVpnAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeregisterTransitRouterMulticastGroupMembersRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var groupIpAddress: String?

    public var networkInterfaceIds: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var peerTransitRouterMulticastDomains: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterMulticastDomainId: String?

    public override init() {
        super.init()
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
        if self.groupIpAddress != nil {
            map["GroupIpAddress"] = self.groupIpAddress!
        }
        if self.networkInterfaceIds != nil {
            map["NetworkInterfaceIds"] = self.networkInterfaceIds!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.peerTransitRouterMulticastDomains != nil {
            map["PeerTransitRouterMulticastDomains"] = self.peerTransitRouterMulticastDomains!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterMulticastDomainId != nil {
            map["TransitRouterMulticastDomainId"] = self.transitRouterMulticastDomainId!
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
        if dict.keys.contains("GroupIpAddress") {
            self.groupIpAddress = dict["GroupIpAddress"] as! String
        }
        if dict.keys.contains("NetworkInterfaceIds") {
            self.networkInterfaceIds = dict["NetworkInterfaceIds"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PeerTransitRouterMulticastDomains") {
            self.peerTransitRouterMulticastDomains = dict["PeerTransitRouterMulticastDomains"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterMulticastDomainId") {
            self.transitRouterMulticastDomainId = dict["TransitRouterMulticastDomainId"] as! String
        }
    }
}

public class DeregisterTransitRouterMulticastGroupMembersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeregisterTransitRouterMulticastGroupMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeregisterTransitRouterMulticastGroupMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeregisterTransitRouterMulticastGroupMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeregisterTransitRouterMulticastGroupSourcesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var groupIpAddress: String?

    public var networkInterfaceIds: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterMulticastDomainId: String?

    public override init() {
        super.init()
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
        if self.groupIpAddress != nil {
            map["GroupIpAddress"] = self.groupIpAddress!
        }
        if self.networkInterfaceIds != nil {
            map["NetworkInterfaceIds"] = self.networkInterfaceIds!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterMulticastDomainId != nil {
            map["TransitRouterMulticastDomainId"] = self.transitRouterMulticastDomainId!
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
        if dict.keys.contains("GroupIpAddress") {
            self.groupIpAddress = dict["GroupIpAddress"] as! String
        }
        if dict.keys.contains("NetworkInterfaceIds") {
            self.networkInterfaceIds = dict["NetworkInterfaceIds"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterMulticastDomainId") {
            self.transitRouterMulticastDomainId = dict["TransitRouterMulticastDomainId"] as! String
        }
    }
}

public class DeregisterTransitRouterMulticastGroupSourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeregisterTransitRouterMulticastGroupSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeregisterTransitRouterMulticastGroupSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeregisterTransitRouterMulticastGroupSourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCenAttachedChildInstanceAttributeRequest : Tea.TeaModel {
    public var cenId: String?

    public var childInstanceId: String?

    public var childInstanceRegionId: String?

    public var childInstanceType: String?

    public var ownerAccount: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.childInstanceId != nil {
            map["ChildInstanceId"] = self.childInstanceId!
        }
        if self.childInstanceRegionId != nil {
            map["ChildInstanceRegionId"] = self.childInstanceRegionId!
        }
        if self.childInstanceType != nil {
            map["ChildInstanceType"] = self.childInstanceType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ChildInstanceId") {
            self.childInstanceId = dict["ChildInstanceId"] as! String
        }
        if dict.keys.contains("ChildInstanceRegionId") {
            self.childInstanceRegionId = dict["ChildInstanceRegionId"] as! String
        }
        if dict.keys.contains("ChildInstanceType") {
            self.childInstanceType = dict["ChildInstanceType"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeCenAttachedChildInstanceAttributeResponseBody : Tea.TeaModel {
    public var cenId: String?

    public var childInstanceAttachTime: String?

    public var childInstanceId: String?

    public var childInstanceName: String?

    public var childInstanceOwnerId: Int64?

    public var childInstanceRegionId: String?

    public var childInstanceType: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.childInstanceAttachTime != nil {
            map["ChildInstanceAttachTime"] = self.childInstanceAttachTime!
        }
        if self.childInstanceId != nil {
            map["ChildInstanceId"] = self.childInstanceId!
        }
        if self.childInstanceName != nil {
            map["ChildInstanceName"] = self.childInstanceName!
        }
        if self.childInstanceOwnerId != nil {
            map["ChildInstanceOwnerId"] = self.childInstanceOwnerId!
        }
        if self.childInstanceRegionId != nil {
            map["ChildInstanceRegionId"] = self.childInstanceRegionId!
        }
        if self.childInstanceType != nil {
            map["ChildInstanceType"] = self.childInstanceType!
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
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ChildInstanceAttachTime") {
            self.childInstanceAttachTime = dict["ChildInstanceAttachTime"] as! String
        }
        if dict.keys.contains("ChildInstanceId") {
            self.childInstanceId = dict["ChildInstanceId"] as! String
        }
        if dict.keys.contains("ChildInstanceName") {
            self.childInstanceName = dict["ChildInstanceName"] as! String
        }
        if dict.keys.contains("ChildInstanceOwnerId") {
            self.childInstanceOwnerId = dict["ChildInstanceOwnerId"] as! Int64
        }
        if dict.keys.contains("ChildInstanceRegionId") {
            self.childInstanceRegionId = dict["ChildInstanceRegionId"] as! String
        }
        if dict.keys.contains("ChildInstanceType") {
            self.childInstanceType = dict["ChildInstanceType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeCenAttachedChildInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCenAttachedChildInstanceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCenAttachedChildInstanceAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCenAttachedChildInstancesRequest : Tea.TeaModel {
    public var cenId: String?

    public var childInstanceRegionId: String?

    public var childInstanceType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.childInstanceRegionId != nil {
            map["ChildInstanceRegionId"] = self.childInstanceRegionId!
        }
        if self.childInstanceType != nil {
            map["ChildInstanceType"] = self.childInstanceType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ChildInstanceRegionId") {
            self.childInstanceRegionId = dict["ChildInstanceRegionId"] as! String
        }
        if dict.keys.contains("ChildInstanceType") {
            self.childInstanceType = dict["ChildInstanceType"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeCenAttachedChildInstancesResponseBody : Tea.TeaModel {
    public class ChildInstances : Tea.TeaModel {
        public class ChildInstance : Tea.TeaModel {
            public var cenId: String?

            public var childInstanceAttachTime: String?

            public var childInstanceId: String?

            public var childInstanceOwnerId: Int64?

            public var childInstanceRegionId: String?

            public var childInstanceType: String?

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
                if self.cenId != nil {
                    map["CenId"] = self.cenId!
                }
                if self.childInstanceAttachTime != nil {
                    map["ChildInstanceAttachTime"] = self.childInstanceAttachTime!
                }
                if self.childInstanceId != nil {
                    map["ChildInstanceId"] = self.childInstanceId!
                }
                if self.childInstanceOwnerId != nil {
                    map["ChildInstanceOwnerId"] = self.childInstanceOwnerId!
                }
                if self.childInstanceRegionId != nil {
                    map["ChildInstanceRegionId"] = self.childInstanceRegionId!
                }
                if self.childInstanceType != nil {
                    map["ChildInstanceType"] = self.childInstanceType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CenId") {
                    self.cenId = dict["CenId"] as! String
                }
                if dict.keys.contains("ChildInstanceAttachTime") {
                    self.childInstanceAttachTime = dict["ChildInstanceAttachTime"] as! String
                }
                if dict.keys.contains("ChildInstanceId") {
                    self.childInstanceId = dict["ChildInstanceId"] as! String
                }
                if dict.keys.contains("ChildInstanceOwnerId") {
                    self.childInstanceOwnerId = dict["ChildInstanceOwnerId"] as! Int64
                }
                if dict.keys.contains("ChildInstanceRegionId") {
                    self.childInstanceRegionId = dict["ChildInstanceRegionId"] as! String
                }
                if dict.keys.contains("ChildInstanceType") {
                    self.childInstanceType = dict["ChildInstanceType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var childInstance: [DescribeCenAttachedChildInstancesResponseBody.ChildInstances.ChildInstance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.childInstance != nil {
                var tmp : [Any] = []
                for k in self.childInstance! {
                    tmp.append(k.toMap())
                }
                map["ChildInstance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChildInstance") {
                self.childInstance = dict["ChildInstance"] as! [DescribeCenAttachedChildInstancesResponseBody.ChildInstances.ChildInstance]
            }
        }
    }
    public var childInstances: DescribeCenAttachedChildInstancesResponseBody.ChildInstances?

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
        try self.childInstances?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.childInstances != nil {
            map["ChildInstances"] = self.childInstances?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChildInstances") {
            var model = DescribeCenAttachedChildInstancesResponseBody.ChildInstances()
            model.fromMap(dict["ChildInstances"] as! [String: Any])
            self.childInstances = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCenAttachedChildInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCenAttachedChildInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCenAttachedChildInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCenBandwidthPackagesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var key: String?

        public var value: [String]?

        public override init() {
            super.init()
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
                self.value = dict["Value"] as! [String]
            }
        }
    }
    public var filter: [DescribeCenBandwidthPackagesRequest.Filter]?

    public var includeReservationData: Bool?

    public var isOrKey: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

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
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.includeReservationData != nil {
            map["IncludeReservationData"] = self.includeReservationData!
        }
        if self.isOrKey != nil {
            map["IsOrKey"] = self.isOrKey!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! [DescribeCenBandwidthPackagesRequest.Filter]
        }
        if dict.keys.contains("IncludeReservationData") {
            self.includeReservationData = dict["IncludeReservationData"] as! Bool
        }
        if dict.keys.contains("IsOrKey") {
            self.isOrKey = dict["IsOrKey"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeCenBandwidthPackagesResponseBody : Tea.TeaModel {
    public class CenBandwidthPackages : Tea.TeaModel {
        public class CenBandwidthPackage : Tea.TeaModel {
            public class CenIds : Tea.TeaModel {
                public var cenId: [String]?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CenId") {
                        self.cenId = dict["CenId"] as! [String]
                    }
                }
            }
            public class OrginInterRegionBandwidthLimits : Tea.TeaModel {
                public class OrginInterRegionBandwidthLimit : Tea.TeaModel {
                    public var bandwidthLimit: String?

                    public var geographicSpanId: String?

                    public var localRegionId: String?

                    public var oppositeRegionId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.bandwidthLimit != nil {
                            map["BandwidthLimit"] = self.bandwidthLimit!
                        }
                        if self.geographicSpanId != nil {
                            map["GeographicSpanId"] = self.geographicSpanId!
                        }
                        if self.localRegionId != nil {
                            map["LocalRegionId"] = self.localRegionId!
                        }
                        if self.oppositeRegionId != nil {
                            map["OppositeRegionId"] = self.oppositeRegionId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BandwidthLimit") {
                            self.bandwidthLimit = dict["BandwidthLimit"] as! String
                        }
                        if dict.keys.contains("GeographicSpanId") {
                            self.geographicSpanId = dict["GeographicSpanId"] as! String
                        }
                        if dict.keys.contains("LocalRegionId") {
                            self.localRegionId = dict["LocalRegionId"] as! String
                        }
                        if dict.keys.contains("OppositeRegionId") {
                            self.oppositeRegionId = dict["OppositeRegionId"] as! String
                        }
                    }
                }
                public var orginInterRegionBandwidthLimit: [DescribeCenBandwidthPackagesResponseBody.CenBandwidthPackages.CenBandwidthPackage.OrginInterRegionBandwidthLimits.OrginInterRegionBandwidthLimit]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.orginInterRegionBandwidthLimit != nil {
                        var tmp : [Any] = []
                        for k in self.orginInterRegionBandwidthLimit! {
                            tmp.append(k.toMap())
                        }
                        map["OrginInterRegionBandwidthLimit"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OrginInterRegionBandwidthLimit") {
                        self.orginInterRegionBandwidthLimit = dict["OrginInterRegionBandwidthLimit"] as! [DescribeCenBandwidthPackagesResponseBody.CenBandwidthPackages.CenBandwidthPackage.OrginInterRegionBandwidthLimits.OrginInterRegionBandwidthLimit]
                    }
                }
            }
            public var bandwidth: Int64?

            public var bandwidthPackageChargeType: String?

            public var businessStatus: String?

            public var cenBandwidthPackageId: String?

            public var cenIds: DescribeCenBandwidthPackagesResponseBody.CenBandwidthPackages.CenBandwidthPackage.CenIds?

            public var creationTime: String?

            public var description_: String?

            public var expiredTime: String?

            public var geographicRegionAId: String?

            public var geographicRegionBId: String?

            public var geographicSpanId: String?

            public var hasReservationData: String?

            public var isCrossBorder: Bool?

            public var name: String?

            public var orginInterRegionBandwidthLimits: DescribeCenBandwidthPackagesResponseBody.CenBandwidthPackages.CenBandwidthPackage.OrginInterRegionBandwidthLimits?

            public var reservationActiveTime: String?

            public var reservationBandwidth: String?

            public var reservationInternetChargeType: String?

            public var reservationOrderType: String?

            public var status: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cenIds?.validate()
                try self.orginInterRegionBandwidthLimits?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bandwidth != nil {
                    map["Bandwidth"] = self.bandwidth!
                }
                if self.bandwidthPackageChargeType != nil {
                    map["BandwidthPackageChargeType"] = self.bandwidthPackageChargeType!
                }
                if self.businessStatus != nil {
                    map["BusinessStatus"] = self.businessStatus!
                }
                if self.cenBandwidthPackageId != nil {
                    map["CenBandwidthPackageId"] = self.cenBandwidthPackageId!
                }
                if self.cenIds != nil {
                    map["CenIds"] = self.cenIds?.toMap()
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.geographicRegionAId != nil {
                    map["GeographicRegionAId"] = self.geographicRegionAId!
                }
                if self.geographicRegionBId != nil {
                    map["GeographicRegionBId"] = self.geographicRegionBId!
                }
                if self.geographicSpanId != nil {
                    map["GeographicSpanId"] = self.geographicSpanId!
                }
                if self.hasReservationData != nil {
                    map["HasReservationData"] = self.hasReservationData!
                }
                if self.isCrossBorder != nil {
                    map["IsCrossBorder"] = self.isCrossBorder!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.orginInterRegionBandwidthLimits != nil {
                    map["OrginInterRegionBandwidthLimits"] = self.orginInterRegionBandwidthLimits?.toMap()
                }
                if self.reservationActiveTime != nil {
                    map["ReservationActiveTime"] = self.reservationActiveTime!
                }
                if self.reservationBandwidth != nil {
                    map["ReservationBandwidth"] = self.reservationBandwidth!
                }
                if self.reservationInternetChargeType != nil {
                    map["ReservationInternetChargeType"] = self.reservationInternetChargeType!
                }
                if self.reservationOrderType != nil {
                    map["ReservationOrderType"] = self.reservationOrderType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bandwidth") {
                    self.bandwidth = dict["Bandwidth"] as! Int64
                }
                if dict.keys.contains("BandwidthPackageChargeType") {
                    self.bandwidthPackageChargeType = dict["BandwidthPackageChargeType"] as! String
                }
                if dict.keys.contains("BusinessStatus") {
                    self.businessStatus = dict["BusinessStatus"] as! String
                }
                if dict.keys.contains("CenBandwidthPackageId") {
                    self.cenBandwidthPackageId = dict["CenBandwidthPackageId"] as! String
                }
                if dict.keys.contains("CenIds") {
                    var model = DescribeCenBandwidthPackagesResponseBody.CenBandwidthPackages.CenBandwidthPackage.CenIds()
                    model.fromMap(dict["CenIds"] as! [String: Any])
                    self.cenIds = model
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! String
                }
                if dict.keys.contains("GeographicRegionAId") {
                    self.geographicRegionAId = dict["GeographicRegionAId"] as! String
                }
                if dict.keys.contains("GeographicRegionBId") {
                    self.geographicRegionBId = dict["GeographicRegionBId"] as! String
                }
                if dict.keys.contains("GeographicSpanId") {
                    self.geographicSpanId = dict["GeographicSpanId"] as! String
                }
                if dict.keys.contains("HasReservationData") {
                    self.hasReservationData = dict["HasReservationData"] as! String
                }
                if dict.keys.contains("IsCrossBorder") {
                    self.isCrossBorder = dict["IsCrossBorder"] as! Bool
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OrginInterRegionBandwidthLimits") {
                    var model = DescribeCenBandwidthPackagesResponseBody.CenBandwidthPackages.CenBandwidthPackage.OrginInterRegionBandwidthLimits()
                    model.fromMap(dict["OrginInterRegionBandwidthLimits"] as! [String: Any])
                    self.orginInterRegionBandwidthLimits = model
                }
                if dict.keys.contains("ReservationActiveTime") {
                    self.reservationActiveTime = dict["ReservationActiveTime"] as! String
                }
                if dict.keys.contains("ReservationBandwidth") {
                    self.reservationBandwidth = dict["ReservationBandwidth"] as! String
                }
                if dict.keys.contains("ReservationInternetChargeType") {
                    self.reservationInternetChargeType = dict["ReservationInternetChargeType"] as! String
                }
                if dict.keys.contains("ReservationOrderType") {
                    self.reservationOrderType = dict["ReservationOrderType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var cenBandwidthPackage: [DescribeCenBandwidthPackagesResponseBody.CenBandwidthPackages.CenBandwidthPackage]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cenBandwidthPackage != nil {
                var tmp : [Any] = []
                for k in self.cenBandwidthPackage! {
                    tmp.append(k.toMap())
                }
                map["CenBandwidthPackage"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CenBandwidthPackage") {
                self.cenBandwidthPackage = dict["CenBandwidthPackage"] as! [DescribeCenBandwidthPackagesResponseBody.CenBandwidthPackages.CenBandwidthPackage]
            }
        }
    }
    public var cenBandwidthPackages: DescribeCenBandwidthPackagesResponseBody.CenBandwidthPackages?

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
        try self.cenBandwidthPackages?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cenBandwidthPackages != nil {
            map["CenBandwidthPackages"] = self.cenBandwidthPackages?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenBandwidthPackages") {
            var model = DescribeCenBandwidthPackagesResponseBody.CenBandwidthPackages()
            model.fromMap(dict["CenBandwidthPackages"] as! [String: Any])
            self.cenBandwidthPackages = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCenBandwidthPackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCenBandwidthPackagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCenBandwidthPackagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCenChildInstanceRouteEntriesRequest : Tea.TeaModel {
    public var cenId: String?

    public var childInstanceId: String?

    public var childInstanceRegionId: String?

    public var childInstanceType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.childInstanceId != nil {
            map["ChildInstanceId"] = self.childInstanceId!
        }
        if self.childInstanceRegionId != nil {
            map["ChildInstanceRegionId"] = self.childInstanceRegionId!
        }
        if self.childInstanceType != nil {
            map["ChildInstanceType"] = self.childInstanceType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ChildInstanceId") {
            self.childInstanceId = dict["ChildInstanceId"] as! String
        }
        if dict.keys.contains("ChildInstanceRegionId") {
            self.childInstanceRegionId = dict["ChildInstanceRegionId"] as! String
        }
        if dict.keys.contains("ChildInstanceType") {
            self.childInstanceType = dict["ChildInstanceType"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeCenChildInstanceRouteEntriesResponseBody : Tea.TeaModel {
    public class CenRouteEntries : Tea.TeaModel {
        public class CenRouteEntry : Tea.TeaModel {
            public class AsPaths : Tea.TeaModel {
                public var asPath: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.asPath != nil {
                        map["AsPath"] = self.asPath!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AsPath") {
                        self.asPath = dict["AsPath"] as! [String]
                    }
                }
            }
            public class CenRouteMapRecords : Tea.TeaModel {
                public class CenRouteMapRecord : Tea.TeaModel {
                    public var regionId: String?

                    public var routeMapId: String?

                    public override init() {
                        super.init()
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
                        if self.routeMapId != nil {
                            map["RouteMapId"] = self.routeMapId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("RegionId") {
                            self.regionId = dict["RegionId"] as! String
                        }
                        if dict.keys.contains("RouteMapId") {
                            self.routeMapId = dict["RouteMapId"] as! String
                        }
                    }
                }
                public var cenRouteMapRecord: [DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.CenRouteMapRecords.CenRouteMapRecord]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cenRouteMapRecord != nil {
                        var tmp : [Any] = []
                        for k in self.cenRouteMapRecord! {
                            tmp.append(k.toMap())
                        }
                        map["CenRouteMapRecord"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CenRouteMapRecord") {
                        self.cenRouteMapRecord = dict["CenRouteMapRecord"] as! [DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.CenRouteMapRecords.CenRouteMapRecord]
                    }
                }
            }
            public class Communities : Tea.TeaModel {
                public var community: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.community != nil {
                        map["Community"] = self.community!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Community") {
                        self.community = dict["Community"] as! [String]
                    }
                }
            }
            public class Conflicts : Tea.TeaModel {
                public class Conflict : Tea.TeaModel {
                    public var destinationCidrBlock: String?

                    public var instanceId: String?

                    public var instanceType: String?

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
                        if self.destinationCidrBlock != nil {
                            map["DestinationCidrBlock"] = self.destinationCidrBlock!
                        }
                        if self.instanceId != nil {
                            map["InstanceId"] = self.instanceId!
                        }
                        if self.instanceType != nil {
                            map["InstanceType"] = self.instanceType!
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
                        if dict.keys.contains("DestinationCidrBlock") {
                            self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
                        }
                        if dict.keys.contains("InstanceId") {
                            self.instanceId = dict["InstanceId"] as! String
                        }
                        if dict.keys.contains("InstanceType") {
                            self.instanceType = dict["InstanceType"] as! String
                        }
                        if dict.keys.contains("RegionId") {
                            self.regionId = dict["RegionId"] as! String
                        }
                        if dict.keys.contains("Status") {
                            self.status = dict["Status"] as! String
                        }
                    }
                }
                public var conflict: [DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.Conflicts.Conflict]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.conflict != nil {
                        var tmp : [Any] = []
                        for k in self.conflict! {
                            tmp.append(k.toMap())
                        }
                        map["Conflict"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Conflict") {
                        self.conflict = dict["Conflict"] as! [DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.Conflicts.Conflict]
                    }
                }
            }
            public var asPaths: DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.AsPaths?

            public var cenRouteMapRecords: DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.CenRouteMapRecords?

            public var communities: DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.Communities?

            public var conflicts: DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.Conflicts?

            public var destinationCidrBlock: String?

            public var nextHopInstanceId: String?

            public var nextHopRegionId: String?

            public var nextHopType: String?

            public var operationalMode: Bool?

            public var publishStatus: String?

            public var routeTableId: String?

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
                try self.asPaths?.validate()
                try self.cenRouteMapRecords?.validate()
                try self.communities?.validate()
                try self.conflicts?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.asPaths != nil {
                    map["AsPaths"] = self.asPaths?.toMap()
                }
                if self.cenRouteMapRecords != nil {
                    map["CenRouteMapRecords"] = self.cenRouteMapRecords?.toMap()
                }
                if self.communities != nil {
                    map["Communities"] = self.communities?.toMap()
                }
                if self.conflicts != nil {
                    map["Conflicts"] = self.conflicts?.toMap()
                }
                if self.destinationCidrBlock != nil {
                    map["DestinationCidrBlock"] = self.destinationCidrBlock!
                }
                if self.nextHopInstanceId != nil {
                    map["NextHopInstanceId"] = self.nextHopInstanceId!
                }
                if self.nextHopRegionId != nil {
                    map["NextHopRegionId"] = self.nextHopRegionId!
                }
                if self.nextHopType != nil {
                    map["NextHopType"] = self.nextHopType!
                }
                if self.operationalMode != nil {
                    map["OperationalMode"] = self.operationalMode!
                }
                if self.publishStatus != nil {
                    map["PublishStatus"] = self.publishStatus!
                }
                if self.routeTableId != nil {
                    map["RouteTableId"] = self.routeTableId!
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
                if dict.keys.contains("AsPaths") {
                    var model = DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.AsPaths()
                    model.fromMap(dict["AsPaths"] as! [String: Any])
                    self.asPaths = model
                }
                if dict.keys.contains("CenRouteMapRecords") {
                    var model = DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.CenRouteMapRecords()
                    model.fromMap(dict["CenRouteMapRecords"] as! [String: Any])
                    self.cenRouteMapRecords = model
                }
                if dict.keys.contains("Communities") {
                    var model = DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.Communities()
                    model.fromMap(dict["Communities"] as! [String: Any])
                    self.communities = model
                }
                if dict.keys.contains("Conflicts") {
                    var model = DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.Conflicts()
                    model.fromMap(dict["Conflicts"] as! [String: Any])
                    self.conflicts = model
                }
                if dict.keys.contains("DestinationCidrBlock") {
                    self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
                }
                if dict.keys.contains("NextHopInstanceId") {
                    self.nextHopInstanceId = dict["NextHopInstanceId"] as! String
                }
                if dict.keys.contains("NextHopRegionId") {
                    self.nextHopRegionId = dict["NextHopRegionId"] as! String
                }
                if dict.keys.contains("NextHopType") {
                    self.nextHopType = dict["NextHopType"] as! String
                }
                if dict.keys.contains("OperationalMode") {
                    self.operationalMode = dict["OperationalMode"] as! Bool
                }
                if dict.keys.contains("PublishStatus") {
                    self.publishStatus = dict["PublishStatus"] as! String
                }
                if dict.keys.contains("RouteTableId") {
                    self.routeTableId = dict["RouteTableId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var cenRouteEntry: [DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cenRouteEntry != nil {
                var tmp : [Any] = []
                for k in self.cenRouteEntry! {
                    tmp.append(k.toMap())
                }
                map["CenRouteEntry"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CenRouteEntry") {
                self.cenRouteEntry = dict["CenRouteEntry"] as! [DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry]
            }
        }
    }
    public var cenRouteEntries: DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries?

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
        try self.cenRouteEntries?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cenRouteEntries != nil {
            map["CenRouteEntries"] = self.cenRouteEntries?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenRouteEntries") {
            var model = DescribeCenChildInstanceRouteEntriesResponseBody.CenRouteEntries()
            model.fromMap(dict["CenRouteEntries"] as! [String: Any])
            self.cenRouteEntries = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCenChildInstanceRouteEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCenChildInstanceRouteEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCenChildInstanceRouteEntriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCenGeographicSpanRemainingBandwidthRequest : Tea.TeaModel {
    public var cenId: String?

    public var geographicRegionAId: String?

    public var geographicRegionBId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.geographicRegionAId != nil {
            map["GeographicRegionAId"] = self.geographicRegionAId!
        }
        if self.geographicRegionBId != nil {
            map["GeographicRegionBId"] = self.geographicRegionBId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("GeographicRegionAId") {
            self.geographicRegionAId = dict["GeographicRegionAId"] as! String
        }
        if dict.keys.contains("GeographicRegionBId") {
            self.geographicRegionBId = dict["GeographicRegionBId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeCenGeographicSpanRemainingBandwidthResponseBody : Tea.TeaModel {
    public var remainingBandwidth: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.remainingBandwidth != nil {
            map["RemainingBandwidth"] = self.remainingBandwidth!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RemainingBandwidth") {
            self.remainingBandwidth = dict["RemainingBandwidth"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCenGeographicSpanRemainingBandwidthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCenGeographicSpanRemainingBandwidthResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCenGeographicSpanRemainingBandwidthResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCenGeographicSpansRequest : Tea.TeaModel {
    public var geographicSpanId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

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
        if self.geographicSpanId != nil {
            map["GeographicSpanId"] = self.geographicSpanId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GeographicSpanId") {
            self.geographicSpanId = dict["GeographicSpanId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeCenGeographicSpansResponseBody : Tea.TeaModel {
    public class GeographicSpanModels : Tea.TeaModel {
        public class GeographicSpanModel : Tea.TeaModel {
            public var geographicSpanId: String?

            public var localGeoRegionId: String?

            public var oppositeGeoRegionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.geographicSpanId != nil {
                    map["GeographicSpanId"] = self.geographicSpanId!
                }
                if self.localGeoRegionId != nil {
                    map["LocalGeoRegionId"] = self.localGeoRegionId!
                }
                if self.oppositeGeoRegionId != nil {
                    map["OppositeGeoRegionId"] = self.oppositeGeoRegionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GeographicSpanId") {
                    self.geographicSpanId = dict["GeographicSpanId"] as! String
                }
                if dict.keys.contains("LocalGeoRegionId") {
                    self.localGeoRegionId = dict["LocalGeoRegionId"] as! String
                }
                if dict.keys.contains("OppositeGeoRegionId") {
                    self.oppositeGeoRegionId = dict["OppositeGeoRegionId"] as! String
                }
            }
        }
        public var geographicSpanModel: [DescribeCenGeographicSpansResponseBody.GeographicSpanModels.GeographicSpanModel]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.geographicSpanModel != nil {
                var tmp : [Any] = []
                for k in self.geographicSpanModel! {
                    tmp.append(k.toMap())
                }
                map["GeographicSpanModel"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GeographicSpanModel") {
                self.geographicSpanModel = dict["GeographicSpanModel"] as! [DescribeCenGeographicSpansResponseBody.GeographicSpanModels.GeographicSpanModel]
            }
        }
    }
    public var geographicSpanModels: DescribeCenGeographicSpansResponseBody.GeographicSpanModels?

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
        try self.geographicSpanModels?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.geographicSpanModels != nil {
            map["GeographicSpanModels"] = self.geographicSpanModels?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GeographicSpanModels") {
            var model = DescribeCenGeographicSpansResponseBody.GeographicSpanModels()
            model.fromMap(dict["GeographicSpanModels"] as! [String: Any])
            self.geographicSpanModels = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCenGeographicSpansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCenGeographicSpansResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCenGeographicSpansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCenInterRegionBandwidthLimitsRequest : Tea.TeaModel {
    public var cenId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeCenInterRegionBandwidthLimitsResponseBody : Tea.TeaModel {
    public class CenInterRegionBandwidthLimits : Tea.TeaModel {
        public class CenInterRegionBandwidthLimit : Tea.TeaModel {
            public var bandwidthLimit: Int64?

            public var bandwidthPackageId: String?

            public var cenId: String?

            public var geographicSpanId: String?

            public var localRegionId: String?

            public var oppositeRegionId: String?

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
                if self.bandwidthLimit != nil {
                    map["BandwidthLimit"] = self.bandwidthLimit!
                }
                if self.bandwidthPackageId != nil {
                    map["BandwidthPackageId"] = self.bandwidthPackageId!
                }
                if self.cenId != nil {
                    map["CenId"] = self.cenId!
                }
                if self.geographicSpanId != nil {
                    map["GeographicSpanId"] = self.geographicSpanId!
                }
                if self.localRegionId != nil {
                    map["LocalRegionId"] = self.localRegionId!
                }
                if self.oppositeRegionId != nil {
                    map["OppositeRegionId"] = self.oppositeRegionId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BandwidthLimit") {
                    self.bandwidthLimit = dict["BandwidthLimit"] as! Int64
                }
                if dict.keys.contains("BandwidthPackageId") {
                    self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
                }
                if dict.keys.contains("CenId") {
                    self.cenId = dict["CenId"] as! String
                }
                if dict.keys.contains("GeographicSpanId") {
                    self.geographicSpanId = dict["GeographicSpanId"] as! String
                }
                if dict.keys.contains("LocalRegionId") {
                    self.localRegionId = dict["LocalRegionId"] as! String
                }
                if dict.keys.contains("OppositeRegionId") {
                    self.oppositeRegionId = dict["OppositeRegionId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var cenInterRegionBandwidthLimit: [DescribeCenInterRegionBandwidthLimitsResponseBody.CenInterRegionBandwidthLimits.CenInterRegionBandwidthLimit]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cenInterRegionBandwidthLimit != nil {
                var tmp : [Any] = []
                for k in self.cenInterRegionBandwidthLimit! {
                    tmp.append(k.toMap())
                }
                map["CenInterRegionBandwidthLimit"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CenInterRegionBandwidthLimit") {
                self.cenInterRegionBandwidthLimit = dict["CenInterRegionBandwidthLimit"] as! [DescribeCenInterRegionBandwidthLimitsResponseBody.CenInterRegionBandwidthLimits.CenInterRegionBandwidthLimit]
            }
        }
    }
    public var cenInterRegionBandwidthLimits: DescribeCenInterRegionBandwidthLimitsResponseBody.CenInterRegionBandwidthLimits?

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
        try self.cenInterRegionBandwidthLimits?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cenInterRegionBandwidthLimits != nil {
            map["CenInterRegionBandwidthLimits"] = self.cenInterRegionBandwidthLimits?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenInterRegionBandwidthLimits") {
            var model = DescribeCenInterRegionBandwidthLimitsResponseBody.CenInterRegionBandwidthLimits()
            model.fromMap(dict["CenInterRegionBandwidthLimits"] as! [String: Any])
            self.cenInterRegionBandwidthLimits = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCenInterRegionBandwidthLimitsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCenInterRegionBandwidthLimitsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCenInterRegionBandwidthLimitsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCenPrivateZoneRoutesRequest : Tea.TeaModel {
    public var accessRegionId: String?

    public var cenId: String?

    public var hostRegionId: String?

    public var pageNumber: Int32?

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
        if self.accessRegionId != nil {
            map["AccessRegionId"] = self.accessRegionId!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.hostRegionId != nil {
            map["HostRegionId"] = self.hostRegionId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessRegionId") {
            self.accessRegionId = dict["AccessRegionId"] as! String
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("HostRegionId") {
            self.hostRegionId = dict["HostRegionId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeCenPrivateZoneRoutesResponseBody : Tea.TeaModel {
    public class PrivateZoneInfos : Tea.TeaModel {
        public class PrivateZoneInfo : Tea.TeaModel {
            public var accessRegionId: String?

            public var hostRegionId: String?

            public var hostVpcId: String?

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
                if self.accessRegionId != nil {
                    map["AccessRegionId"] = self.accessRegionId!
                }
                if self.hostRegionId != nil {
                    map["HostRegionId"] = self.hostRegionId!
                }
                if self.hostVpcId != nil {
                    map["HostVpcId"] = self.hostVpcId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessRegionId") {
                    self.accessRegionId = dict["AccessRegionId"] as! String
                }
                if dict.keys.contains("HostRegionId") {
                    self.hostRegionId = dict["HostRegionId"] as! String
                }
                if dict.keys.contains("HostVpcId") {
                    self.hostVpcId = dict["HostVpcId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var privateZoneInfo: [DescribeCenPrivateZoneRoutesResponseBody.PrivateZoneInfos.PrivateZoneInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.privateZoneInfo != nil {
                var tmp : [Any] = []
                for k in self.privateZoneInfo! {
                    tmp.append(k.toMap())
                }
                map["PrivateZoneInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PrivateZoneInfo") {
                self.privateZoneInfo = dict["PrivateZoneInfo"] as! [DescribeCenPrivateZoneRoutesResponseBody.PrivateZoneInfos.PrivateZoneInfo]
            }
        }
    }
    public var cenId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var privateZoneDnsServers: String?

    public var privateZoneInfos: DescribeCenPrivateZoneRoutesResponseBody.PrivateZoneInfos?

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
        try self.privateZoneInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.privateZoneDnsServers != nil {
            map["PrivateZoneDnsServers"] = self.privateZoneDnsServers!
        }
        if self.privateZoneInfos != nil {
            map["PrivateZoneInfos"] = self.privateZoneInfos?.toMap()
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
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrivateZoneDnsServers") {
            self.privateZoneDnsServers = dict["PrivateZoneDnsServers"] as! String
        }
        if dict.keys.contains("PrivateZoneInfos") {
            var model = DescribeCenPrivateZoneRoutesResponseBody.PrivateZoneInfos()
            model.fromMap(dict["PrivateZoneInfos"] as! [String: Any])
            self.privateZoneInfos = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCenPrivateZoneRoutesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCenPrivateZoneRoutesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCenPrivateZoneRoutesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCenRegionDomainRouteEntriesRequest : Tea.TeaModel {
    public var cenId: String?

    public var cenRegionId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.cenRegionId != nil {
            map["CenRegionId"] = self.cenRegionId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CenRegionId") {
            self.cenRegionId = dict["CenRegionId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeCenRegionDomainRouteEntriesResponseBody : Tea.TeaModel {
    public class CenRouteEntries : Tea.TeaModel {
        public class CenRouteEntry : Tea.TeaModel {
            public class AsPaths : Tea.TeaModel {
                public var asPath: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.asPath != nil {
                        map["AsPath"] = self.asPath!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AsPath") {
                        self.asPath = dict["AsPath"] as! [String]
                    }
                }
            }
            public class CenOutRouteMapRecords : Tea.TeaModel {
                public class CenOutRouteMapRecord : Tea.TeaModel {
                    public var regionId: String?

                    public var routeMapId: String?

                    public override init() {
                        super.init()
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
                        if self.routeMapId != nil {
                            map["RouteMapId"] = self.routeMapId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("RegionId") {
                            self.regionId = dict["RegionId"] as! String
                        }
                        if dict.keys.contains("RouteMapId") {
                            self.routeMapId = dict["RouteMapId"] as! String
                        }
                    }
                }
                public var cenOutRouteMapRecord: [DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.CenOutRouteMapRecords.CenOutRouteMapRecord]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cenOutRouteMapRecord != nil {
                        var tmp : [Any] = []
                        for k in self.cenOutRouteMapRecord! {
                            tmp.append(k.toMap())
                        }
                        map["CenOutRouteMapRecord"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CenOutRouteMapRecord") {
                        self.cenOutRouteMapRecord = dict["CenOutRouteMapRecord"] as! [DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.CenOutRouteMapRecords.CenOutRouteMapRecord]
                    }
                }
            }
            public class CenRouteMapRecords : Tea.TeaModel {
                public class CenRouteMapRecord : Tea.TeaModel {
                    public var regionId: String?

                    public var routeMapId: String?

                    public override init() {
                        super.init()
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
                        if self.routeMapId != nil {
                            map["RouteMapId"] = self.routeMapId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("RegionId") {
                            self.regionId = dict["RegionId"] as! String
                        }
                        if dict.keys.contains("RouteMapId") {
                            self.routeMapId = dict["RouteMapId"] as! String
                        }
                    }
                }
                public var cenRouteMapRecord: [DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.CenRouteMapRecords.CenRouteMapRecord]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cenRouteMapRecord != nil {
                        var tmp : [Any] = []
                        for k in self.cenRouteMapRecord! {
                            tmp.append(k.toMap())
                        }
                        map["CenRouteMapRecord"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CenRouteMapRecord") {
                        self.cenRouteMapRecord = dict["CenRouteMapRecord"] as! [DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.CenRouteMapRecords.CenRouteMapRecord]
                    }
                }
            }
            public class Communities : Tea.TeaModel {
                public var community: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.community != nil {
                        map["Community"] = self.community!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Community") {
                        self.community = dict["Community"] as! [String]
                    }
                }
            }
            public var asPaths: DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.AsPaths?

            public var cenOutRouteMapRecords: DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.CenOutRouteMapRecords?

            public var cenRouteMapRecords: DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.CenRouteMapRecords?

            public var communities: DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.Communities?

            public var destinationCidrBlock: String?

            public var nextHopInstanceId: String?

            public var nextHopRegionId: String?

            public var nextHopType: String?

            public var preference: Int32?

            public var status: String?

            public var toOtherRegionStatus: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.asPaths?.validate()
                try self.cenOutRouteMapRecords?.validate()
                try self.cenRouteMapRecords?.validate()
                try self.communities?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.asPaths != nil {
                    map["AsPaths"] = self.asPaths?.toMap()
                }
                if self.cenOutRouteMapRecords != nil {
                    map["CenOutRouteMapRecords"] = self.cenOutRouteMapRecords?.toMap()
                }
                if self.cenRouteMapRecords != nil {
                    map["CenRouteMapRecords"] = self.cenRouteMapRecords?.toMap()
                }
                if self.communities != nil {
                    map["Communities"] = self.communities?.toMap()
                }
                if self.destinationCidrBlock != nil {
                    map["DestinationCidrBlock"] = self.destinationCidrBlock!
                }
                if self.nextHopInstanceId != nil {
                    map["NextHopInstanceId"] = self.nextHopInstanceId!
                }
                if self.nextHopRegionId != nil {
                    map["NextHopRegionId"] = self.nextHopRegionId!
                }
                if self.nextHopType != nil {
                    map["NextHopType"] = self.nextHopType!
                }
                if self.preference != nil {
                    map["Preference"] = self.preference!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.toOtherRegionStatus != nil {
                    map["ToOtherRegionStatus"] = self.toOtherRegionStatus!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AsPaths") {
                    var model = DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.AsPaths()
                    model.fromMap(dict["AsPaths"] as! [String: Any])
                    self.asPaths = model
                }
                if dict.keys.contains("CenOutRouteMapRecords") {
                    var model = DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.CenOutRouteMapRecords()
                    model.fromMap(dict["CenOutRouteMapRecords"] as! [String: Any])
                    self.cenOutRouteMapRecords = model
                }
                if dict.keys.contains("CenRouteMapRecords") {
                    var model = DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.CenRouteMapRecords()
                    model.fromMap(dict["CenRouteMapRecords"] as! [String: Any])
                    self.cenRouteMapRecords = model
                }
                if dict.keys.contains("Communities") {
                    var model = DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry.Communities()
                    model.fromMap(dict["Communities"] as! [String: Any])
                    self.communities = model
                }
                if dict.keys.contains("DestinationCidrBlock") {
                    self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
                }
                if dict.keys.contains("NextHopInstanceId") {
                    self.nextHopInstanceId = dict["NextHopInstanceId"] as! String
                }
                if dict.keys.contains("NextHopRegionId") {
                    self.nextHopRegionId = dict["NextHopRegionId"] as! String
                }
                if dict.keys.contains("NextHopType") {
                    self.nextHopType = dict["NextHopType"] as! String
                }
                if dict.keys.contains("Preference") {
                    self.preference = dict["Preference"] as! Int32
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("ToOtherRegionStatus") {
                    self.toOtherRegionStatus = dict["ToOtherRegionStatus"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var cenRouteEntry: [DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cenRouteEntry != nil {
                var tmp : [Any] = []
                for k in self.cenRouteEntry! {
                    tmp.append(k.toMap())
                }
                map["CenRouteEntry"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CenRouteEntry") {
                self.cenRouteEntry = dict["CenRouteEntry"] as! [DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries.CenRouteEntry]
            }
        }
    }
    public var cenRouteEntries: DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries?

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
        try self.cenRouteEntries?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cenRouteEntries != nil {
            map["CenRouteEntries"] = self.cenRouteEntries?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenRouteEntries") {
            var model = DescribeCenRegionDomainRouteEntriesResponseBody.CenRouteEntries()
            model.fromMap(dict["CenRouteEntries"] as! [String: Any])
            self.cenRouteEntries = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCenRegionDomainRouteEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCenRegionDomainRouteEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCenRegionDomainRouteEntriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCenRouteMapsRequest : Tea.TeaModel {
    public var cenId: String?

    public var cenRegionId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var routeMapId: String?

    public var transitRouterRouteTableId: String?

    public var transmitDirection: String?

    public override init() {
        super.init()
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
        if self.cenRegionId != nil {
            map["CenRegionId"] = self.cenRegionId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.routeMapId != nil {
            map["RouteMapId"] = self.routeMapId!
        }
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
        }
        if self.transmitDirection != nil {
            map["TransmitDirection"] = self.transmitDirection!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CenRegionId") {
            self.cenRegionId = dict["CenRegionId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RouteMapId") {
            self.routeMapId = dict["RouteMapId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
        if dict.keys.contains("TransmitDirection") {
            self.transmitDirection = dict["TransmitDirection"] as! String
        }
    }
}

public class DescribeCenRouteMapsResponseBody : Tea.TeaModel {
    public class RouteMaps : Tea.TeaModel {
        public class RouteMap : Tea.TeaModel {
            public class DestinationChildInstanceTypes : Tea.TeaModel {
                public var destinationChildInstanceType: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.destinationChildInstanceType != nil {
                        map["DestinationChildInstanceType"] = self.destinationChildInstanceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DestinationChildInstanceType") {
                        self.destinationChildInstanceType = dict["DestinationChildInstanceType"] as! [String]
                    }
                }
            }
            public class DestinationCidrBlocks : Tea.TeaModel {
                public var destinationCidrBlock: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.destinationCidrBlock != nil {
                        map["DestinationCidrBlock"] = self.destinationCidrBlock!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DestinationCidrBlock") {
                        self.destinationCidrBlock = dict["DestinationCidrBlock"] as! [String]
                    }
                }
            }
            public class DestinationInstanceIds : Tea.TeaModel {
                public var destinationInstanceId: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.destinationInstanceId != nil {
                        map["DestinationInstanceId"] = self.destinationInstanceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DestinationInstanceId") {
                        self.destinationInstanceId = dict["DestinationInstanceId"] as! [String]
                    }
                }
            }
            public class DestinationRouteTableIds : Tea.TeaModel {
                public var destinationRouteTableId: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.destinationRouteTableId != nil {
                        map["DestinationRouteTableId"] = self.destinationRouteTableId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DestinationRouteTableId") {
                        self.destinationRouteTableId = dict["DestinationRouteTableId"] as! [String]
                    }
                }
            }
            public class MatchAsns : Tea.TeaModel {
                public var matchAsn: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.matchAsn != nil {
                        map["MatchAsn"] = self.matchAsn!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MatchAsn") {
                        self.matchAsn = dict["MatchAsn"] as! [String]
                    }
                }
            }
            public class MatchCommunitySet : Tea.TeaModel {
                public var matchCommunity: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.matchCommunity != nil {
                        map["MatchCommunity"] = self.matchCommunity!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MatchCommunity") {
                        self.matchCommunity = dict["MatchCommunity"] as! [String]
                    }
                }
            }
            public class OperateCommunitySet : Tea.TeaModel {
                public var operateCommunity: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.operateCommunity != nil {
                        map["OperateCommunity"] = self.operateCommunity!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OperateCommunity") {
                        self.operateCommunity = dict["OperateCommunity"] as! [String]
                    }
                }
            }
            public class PrependAsPath : Tea.TeaModel {
                public var asPath: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.asPath != nil {
                        map["AsPath"] = self.asPath!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AsPath") {
                        self.asPath = dict["AsPath"] as! [String]
                    }
                }
            }
            public class RouteTypes : Tea.TeaModel {
                public var routeType: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.routeType != nil {
                        map["RouteType"] = self.routeType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RouteType") {
                        self.routeType = dict["RouteType"] as! [String]
                    }
                }
            }
            public class SourceChildInstanceTypes : Tea.TeaModel {
                public var sourceChildInstanceType: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.sourceChildInstanceType != nil {
                        map["SourceChildInstanceType"] = self.sourceChildInstanceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SourceChildInstanceType") {
                        self.sourceChildInstanceType = dict["SourceChildInstanceType"] as! [String]
                    }
                }
            }
            public class SourceInstanceIds : Tea.TeaModel {
                public var sourceInstanceId: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.sourceInstanceId != nil {
                        map["SourceInstanceId"] = self.sourceInstanceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SourceInstanceId") {
                        self.sourceInstanceId = dict["SourceInstanceId"] as! [String]
                    }
                }
            }
            public class SourceRegionIds : Tea.TeaModel {
                public var sourceRegionId: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.sourceRegionId != nil {
                        map["SourceRegionId"] = self.sourceRegionId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SourceRegionId") {
                        self.sourceRegionId = dict["SourceRegionId"] as! [String]
                    }
                }
            }
            public class SourceRouteTableIds : Tea.TeaModel {
                public var sourceRouteTableId: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.sourceRouteTableId != nil {
                        map["SourceRouteTableId"] = self.sourceRouteTableId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SourceRouteTableId") {
                        self.sourceRouteTableId = dict["SourceRouteTableId"] as! [String]
                    }
                }
            }
            public var asPathMatchMode: String?

            public var cenId: String?

            public var cenRegionId: String?

            public var cidrMatchMode: String?

            public var communityMatchMode: String?

            public var communityOperateMode: String?

            public var description_: String?

            public var destinationChildInstanceTypes: DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.DestinationChildInstanceTypes?

            public var destinationCidrBlocks: DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.DestinationCidrBlocks?

            public var destinationInstanceIds: DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.DestinationInstanceIds?

            public var destinationInstanceIdsReverseMatch: Bool?

            public var destinationRouteTableIds: DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.DestinationRouteTableIds?

            public var mapResult: String?

            public var matchAddressType: String?

            public var matchAsns: DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.MatchAsns?

            public var matchCommunitySet: DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.MatchCommunitySet?

            public var nextPriority: Int32?

            public var operateCommunitySet: DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.OperateCommunitySet?

            public var preference: Int32?

            public var prependAsPath: DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.PrependAsPath?

            public var priority: Int32?

            public var routeMapId: String?

            public var routeTypes: DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.RouteTypes?

            public var sourceChildInstanceTypes: DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.SourceChildInstanceTypes?

            public var sourceInstanceIds: DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.SourceInstanceIds?

            public var sourceInstanceIdsReverseMatch: Bool?

            public var sourceRegionIds: DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.SourceRegionIds?

            public var sourceRouteTableIds: DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.SourceRouteTableIds?

            public var status: String?

            public var transitRouterRouteTableId: String?

            public var transmitDirection: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.destinationChildInstanceTypes?.validate()
                try self.destinationCidrBlocks?.validate()
                try self.destinationInstanceIds?.validate()
                try self.destinationRouteTableIds?.validate()
                try self.matchAsns?.validate()
                try self.matchCommunitySet?.validate()
                try self.operateCommunitySet?.validate()
                try self.prependAsPath?.validate()
                try self.routeTypes?.validate()
                try self.sourceChildInstanceTypes?.validate()
                try self.sourceInstanceIds?.validate()
                try self.sourceRegionIds?.validate()
                try self.sourceRouteTableIds?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.asPathMatchMode != nil {
                    map["AsPathMatchMode"] = self.asPathMatchMode!
                }
                if self.cenId != nil {
                    map["CenId"] = self.cenId!
                }
                if self.cenRegionId != nil {
                    map["CenRegionId"] = self.cenRegionId!
                }
                if self.cidrMatchMode != nil {
                    map["CidrMatchMode"] = self.cidrMatchMode!
                }
                if self.communityMatchMode != nil {
                    map["CommunityMatchMode"] = self.communityMatchMode!
                }
                if self.communityOperateMode != nil {
                    map["CommunityOperateMode"] = self.communityOperateMode!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.destinationChildInstanceTypes != nil {
                    map["DestinationChildInstanceTypes"] = self.destinationChildInstanceTypes?.toMap()
                }
                if self.destinationCidrBlocks != nil {
                    map["DestinationCidrBlocks"] = self.destinationCidrBlocks?.toMap()
                }
                if self.destinationInstanceIds != nil {
                    map["DestinationInstanceIds"] = self.destinationInstanceIds?.toMap()
                }
                if self.destinationInstanceIdsReverseMatch != nil {
                    map["DestinationInstanceIdsReverseMatch"] = self.destinationInstanceIdsReverseMatch!
                }
                if self.destinationRouteTableIds != nil {
                    map["DestinationRouteTableIds"] = self.destinationRouteTableIds?.toMap()
                }
                if self.mapResult != nil {
                    map["MapResult"] = self.mapResult!
                }
                if self.matchAddressType != nil {
                    map["MatchAddressType"] = self.matchAddressType!
                }
                if self.matchAsns != nil {
                    map["MatchAsns"] = self.matchAsns?.toMap()
                }
                if self.matchCommunitySet != nil {
                    map["MatchCommunitySet"] = self.matchCommunitySet?.toMap()
                }
                if self.nextPriority != nil {
                    map["NextPriority"] = self.nextPriority!
                }
                if self.operateCommunitySet != nil {
                    map["OperateCommunitySet"] = self.operateCommunitySet?.toMap()
                }
                if self.preference != nil {
                    map["Preference"] = self.preference!
                }
                if self.prependAsPath != nil {
                    map["PrependAsPath"] = self.prependAsPath?.toMap()
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.routeMapId != nil {
                    map["RouteMapId"] = self.routeMapId!
                }
                if self.routeTypes != nil {
                    map["RouteTypes"] = self.routeTypes?.toMap()
                }
                if self.sourceChildInstanceTypes != nil {
                    map["SourceChildInstanceTypes"] = self.sourceChildInstanceTypes?.toMap()
                }
                if self.sourceInstanceIds != nil {
                    map["SourceInstanceIds"] = self.sourceInstanceIds?.toMap()
                }
                if self.sourceInstanceIdsReverseMatch != nil {
                    map["SourceInstanceIdsReverseMatch"] = self.sourceInstanceIdsReverseMatch!
                }
                if self.sourceRegionIds != nil {
                    map["SourceRegionIds"] = self.sourceRegionIds?.toMap()
                }
                if self.sourceRouteTableIds != nil {
                    map["SourceRouteTableIds"] = self.sourceRouteTableIds?.toMap()
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.transitRouterRouteTableId != nil {
                    map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
                }
                if self.transmitDirection != nil {
                    map["TransmitDirection"] = self.transmitDirection!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AsPathMatchMode") {
                    self.asPathMatchMode = dict["AsPathMatchMode"] as! String
                }
                if dict.keys.contains("CenId") {
                    self.cenId = dict["CenId"] as! String
                }
                if dict.keys.contains("CenRegionId") {
                    self.cenRegionId = dict["CenRegionId"] as! String
                }
                if dict.keys.contains("CidrMatchMode") {
                    self.cidrMatchMode = dict["CidrMatchMode"] as! String
                }
                if dict.keys.contains("CommunityMatchMode") {
                    self.communityMatchMode = dict["CommunityMatchMode"] as! String
                }
                if dict.keys.contains("CommunityOperateMode") {
                    self.communityOperateMode = dict["CommunityOperateMode"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DestinationChildInstanceTypes") {
                    var model = DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.DestinationChildInstanceTypes()
                    model.fromMap(dict["DestinationChildInstanceTypes"] as! [String: Any])
                    self.destinationChildInstanceTypes = model
                }
                if dict.keys.contains("DestinationCidrBlocks") {
                    var model = DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.DestinationCidrBlocks()
                    model.fromMap(dict["DestinationCidrBlocks"] as! [String: Any])
                    self.destinationCidrBlocks = model
                }
                if dict.keys.contains("DestinationInstanceIds") {
                    var model = DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.DestinationInstanceIds()
                    model.fromMap(dict["DestinationInstanceIds"] as! [String: Any])
                    self.destinationInstanceIds = model
                }
                if dict.keys.contains("DestinationInstanceIdsReverseMatch") {
                    self.destinationInstanceIdsReverseMatch = dict["DestinationInstanceIdsReverseMatch"] as! Bool
                }
                if dict.keys.contains("DestinationRouteTableIds") {
                    var model = DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.DestinationRouteTableIds()
                    model.fromMap(dict["DestinationRouteTableIds"] as! [String: Any])
                    self.destinationRouteTableIds = model
                }
                if dict.keys.contains("MapResult") {
                    self.mapResult = dict["MapResult"] as! String
                }
                if dict.keys.contains("MatchAddressType") {
                    self.matchAddressType = dict["MatchAddressType"] as! String
                }
                if dict.keys.contains("MatchAsns") {
                    var model = DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.MatchAsns()
                    model.fromMap(dict["MatchAsns"] as! [String: Any])
                    self.matchAsns = model
                }
                if dict.keys.contains("MatchCommunitySet") {
                    var model = DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.MatchCommunitySet()
                    model.fromMap(dict["MatchCommunitySet"] as! [String: Any])
                    self.matchCommunitySet = model
                }
                if dict.keys.contains("NextPriority") {
                    self.nextPriority = dict["NextPriority"] as! Int32
                }
                if dict.keys.contains("OperateCommunitySet") {
                    var model = DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.OperateCommunitySet()
                    model.fromMap(dict["OperateCommunitySet"] as! [String: Any])
                    self.operateCommunitySet = model
                }
                if dict.keys.contains("Preference") {
                    self.preference = dict["Preference"] as! Int32
                }
                if dict.keys.contains("PrependAsPath") {
                    var model = DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.PrependAsPath()
                    model.fromMap(dict["PrependAsPath"] as! [String: Any])
                    self.prependAsPath = model
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! Int32
                }
                if dict.keys.contains("RouteMapId") {
                    self.routeMapId = dict["RouteMapId"] as! String
                }
                if dict.keys.contains("RouteTypes") {
                    var model = DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.RouteTypes()
                    model.fromMap(dict["RouteTypes"] as! [String: Any])
                    self.routeTypes = model
                }
                if dict.keys.contains("SourceChildInstanceTypes") {
                    var model = DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.SourceChildInstanceTypes()
                    model.fromMap(dict["SourceChildInstanceTypes"] as! [String: Any])
                    self.sourceChildInstanceTypes = model
                }
                if dict.keys.contains("SourceInstanceIds") {
                    var model = DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.SourceInstanceIds()
                    model.fromMap(dict["SourceInstanceIds"] as! [String: Any])
                    self.sourceInstanceIds = model
                }
                if dict.keys.contains("SourceInstanceIdsReverseMatch") {
                    self.sourceInstanceIdsReverseMatch = dict["SourceInstanceIdsReverseMatch"] as! Bool
                }
                if dict.keys.contains("SourceRegionIds") {
                    var model = DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.SourceRegionIds()
                    model.fromMap(dict["SourceRegionIds"] as! [String: Any])
                    self.sourceRegionIds = model
                }
                if dict.keys.contains("SourceRouteTableIds") {
                    var model = DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap.SourceRouteTableIds()
                    model.fromMap(dict["SourceRouteTableIds"] as! [String: Any])
                    self.sourceRouteTableIds = model
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TransitRouterRouteTableId") {
                    self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
                }
                if dict.keys.contains("TransmitDirection") {
                    self.transmitDirection = dict["TransmitDirection"] as! String
                }
            }
        }
        public var routeMap: [DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.routeMap != nil {
                var tmp : [Any] = []
                for k in self.routeMap! {
                    tmp.append(k.toMap())
                }
                map["RouteMap"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RouteMap") {
                self.routeMap = dict["RouteMap"] as! [DescribeCenRouteMapsResponseBody.RouteMaps.RouteMap]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var routeMaps: DescribeCenRouteMapsResponseBody.RouteMaps?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.routeMaps?.validate()
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
        if self.routeMaps != nil {
            map["RouteMaps"] = self.routeMaps?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RouteMaps") {
            var model = DescribeCenRouteMapsResponseBody.RouteMaps()
            model.fromMap(dict["RouteMaps"] as! [String: Any])
            self.routeMaps = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCenRouteMapsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCenRouteMapsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCenRouteMapsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCenVbrHealthCheckRequest : Tea.TeaModel {
    public var cenId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var vbrInstanceId: String?

    public var vbrInstanceOwnerId: Int64?

    public var vbrInstanceRegionId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.vbrInstanceId != nil {
            map["VbrInstanceId"] = self.vbrInstanceId!
        }
        if self.vbrInstanceOwnerId != nil {
            map["VbrInstanceOwnerId"] = self.vbrInstanceOwnerId!
        }
        if self.vbrInstanceRegionId != nil {
            map["VbrInstanceRegionId"] = self.vbrInstanceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("VbrInstanceId") {
            self.vbrInstanceId = dict["VbrInstanceId"] as! String
        }
        if dict.keys.contains("VbrInstanceOwnerId") {
            self.vbrInstanceOwnerId = dict["VbrInstanceOwnerId"] as! Int64
        }
        if dict.keys.contains("VbrInstanceRegionId") {
            self.vbrInstanceRegionId = dict["VbrInstanceRegionId"] as! String
        }
    }
}

public class DescribeCenVbrHealthCheckResponseBody : Tea.TeaModel {
    public class VbrHealthChecks : Tea.TeaModel {
        public class VbrHealthCheck : Tea.TeaModel {
            public var cenId: String?

            public var healthCheckInterval: Int32?

            public var healthCheckOnly: Bool?

            public var healthCheckSourceIp: String?

            public var healthCheckTargetIp: String?

            public var healthyThreshold: Int32?

            public var vbrInstanceId: String?

            public var vbrInstanceRegionId: String?

            public override init() {
                super.init()
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
                if self.healthCheckInterval != nil {
                    map["HealthCheckInterval"] = self.healthCheckInterval!
                }
                if self.healthCheckOnly != nil {
                    map["HealthCheckOnly"] = self.healthCheckOnly!
                }
                if self.healthCheckSourceIp != nil {
                    map["HealthCheckSourceIp"] = self.healthCheckSourceIp!
                }
                if self.healthCheckTargetIp != nil {
                    map["HealthCheckTargetIp"] = self.healthCheckTargetIp!
                }
                if self.healthyThreshold != nil {
                    map["HealthyThreshold"] = self.healthyThreshold!
                }
                if self.vbrInstanceId != nil {
                    map["VbrInstanceId"] = self.vbrInstanceId!
                }
                if self.vbrInstanceRegionId != nil {
                    map["VbrInstanceRegionId"] = self.vbrInstanceRegionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CenId") {
                    self.cenId = dict["CenId"] as! String
                }
                if dict.keys.contains("HealthCheckInterval") {
                    self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
                }
                if dict.keys.contains("HealthCheckOnly") {
                    self.healthCheckOnly = dict["HealthCheckOnly"] as! Bool
                }
                if dict.keys.contains("HealthCheckSourceIp") {
                    self.healthCheckSourceIp = dict["HealthCheckSourceIp"] as! String
                }
                if dict.keys.contains("HealthCheckTargetIp") {
                    self.healthCheckTargetIp = dict["HealthCheckTargetIp"] as! String
                }
                if dict.keys.contains("HealthyThreshold") {
                    self.healthyThreshold = dict["HealthyThreshold"] as! Int32
                }
                if dict.keys.contains("VbrInstanceId") {
                    self.vbrInstanceId = dict["VbrInstanceId"] as! String
                }
                if dict.keys.contains("VbrInstanceRegionId") {
                    self.vbrInstanceRegionId = dict["VbrInstanceRegionId"] as! String
                }
            }
        }
        public var vbrHealthCheck: [DescribeCenVbrHealthCheckResponseBody.VbrHealthChecks.VbrHealthCheck]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vbrHealthCheck != nil {
                var tmp : [Any] = []
                for k in self.vbrHealthCheck! {
                    tmp.append(k.toMap())
                }
                map["VbrHealthCheck"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VbrHealthCheck") {
                self.vbrHealthCheck = dict["VbrHealthCheck"] as! [DescribeCenVbrHealthCheckResponseBody.VbrHealthChecks.VbrHealthCheck]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var vbrHealthChecks: DescribeCenVbrHealthCheckResponseBody.VbrHealthChecks?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.vbrHealthChecks?.validate()
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
        if self.vbrHealthChecks != nil {
            map["VbrHealthChecks"] = self.vbrHealthChecks?.toMap()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("VbrHealthChecks") {
            var model = DescribeCenVbrHealthCheckResponseBody.VbrHealthChecks()
            model.fromMap(dict["VbrHealthChecks"] as! [String: Any])
            self.vbrHealthChecks = model
        }
    }
}

public class DescribeCenVbrHealthCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCenVbrHealthCheckResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCenVbrHealthCheckResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCenVpcFlowStatisticSwitchRequest : Tea.TeaModel {
    public var cenId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeCenVpcFlowStatisticSwitchResponseBody : Tea.TeaModel {
    public var cenId: String?

    public var invalidDate: String?

    public var regionId: String?

    public var requestId: String?

    public var state: String?

    public override init() {
        super.init()
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
        if self.invalidDate != nil {
            map["InvalidDate"] = self.invalidDate!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("InvalidDate") {
            self.invalidDate = dict["InvalidDate"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class DescribeCenVpcFlowStatisticSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCenVpcFlowStatisticSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCenVpcFlowStatisticSwitchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCensRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var key: String?

        public var value: [String]?

        public override init() {
            super.init()
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
                self.value = dict["Value"] as! [String]
            }
        }
    }
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
    public var filter: [DescribeCensRequest.Filter]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tag: [DescribeCensRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! [DescribeCensRequest.Filter]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [DescribeCensRequest.Tag]
        }
    }
}

public class DescribeCensResponseBody : Tea.TeaModel {
    public class Cens : Tea.TeaModel {
        public class Cen : Tea.TeaModel {
            public class CenBandwidthPackageIds : Tea.TeaModel {
                public var cenBandwidthPackageId: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cenBandwidthPackageId != nil {
                        map["CenBandwidthPackageId"] = self.cenBandwidthPackageId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CenBandwidthPackageId") {
                        self.cenBandwidthPackageId = dict["CenBandwidthPackageId"] as! [String]
                    }
                }
            }
            public class Tags : Tea.TeaModel {
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
                public var tag: [DescribeCensResponseBody.Cens.Cen.Tags.Tag]?

                public override init() {
                    super.init()
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
                        map["Tag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! [DescribeCensResponseBody.Cens.Cen.Tags.Tag]
                    }
                }
            }
            public var cenBandwidthPackageIds: DescribeCensResponseBody.Cens.Cen.CenBandwidthPackageIds?

            public var cenId: String?

            public var creationTime: String?

            public var description_: String?

            public var ipv6Level: String?

            public var name: String?

            public var protectionLevel: String?

            public var resourceGroupId: String?

            public var status: String?

            public var tags: DescribeCensResponseBody.Cens.Cen.Tags?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cenBandwidthPackageIds?.validate()
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cenBandwidthPackageIds != nil {
                    map["CenBandwidthPackageIds"] = self.cenBandwidthPackageIds?.toMap()
                }
                if self.cenId != nil {
                    map["CenId"] = self.cenId!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.ipv6Level != nil {
                    map["Ipv6Level"] = self.ipv6Level!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.protectionLevel != nil {
                    map["ProtectionLevel"] = self.protectionLevel!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CenBandwidthPackageIds") {
                    var model = DescribeCensResponseBody.Cens.Cen.CenBandwidthPackageIds()
                    model.fromMap(dict["CenBandwidthPackageIds"] as! [String: Any])
                    self.cenBandwidthPackageIds = model
                }
                if dict.keys.contains("CenId") {
                    self.cenId = dict["CenId"] as! String
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Ipv6Level") {
                    self.ipv6Level = dict["Ipv6Level"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ProtectionLevel") {
                    self.protectionLevel = dict["ProtectionLevel"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeCensResponseBody.Cens.Cen.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
            }
        }
        public var cen: [DescribeCensResponseBody.Cens.Cen]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cen != nil {
                var tmp : [Any] = []
                for k in self.cen! {
                    tmp.append(k.toMap())
                }
                map["Cen"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cen") {
                self.cen = dict["Cen"] as! [DescribeCensResponseBody.Cens.Cen]
            }
        }
    }
    public var cens: DescribeCensResponseBody.Cens?

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
        try self.cens?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cens != nil {
            map["Cens"] = self.cens?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cens") {
            var model = DescribeCensResponseBody.Cens()
            model.fromMap(dict["Cens"] as! [String: Any])
            self.cens = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCensResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCensResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCensResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChildInstanceRegionsRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var productType: String?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeChildInstanceRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
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
                if dict.keys.contains("LocalName") {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var region: [DescribeChildInstanceRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
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
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! [DescribeChildInstanceRegionsResponseBody.Regions.Region]
            }
        }
    }
    public var regions: DescribeChildInstanceRegionsResponseBody.Regions?

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
        if dict.keys.contains("Regions") {
            var model = DescribeChildInstanceRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeChildInstanceRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChildInstanceRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeChildInstanceRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFlowlogsRequest : Tea.TeaModel {
    public var cenId: String?

    public var clientToken: String?

    public var description_: String?

    public var flowLogId: String?

    public var flowLogName: String?

    public var logStoreName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectName: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.flowLogId != nil {
            map["FlowLogId"] = self.flowLogId!
        }
        if self.flowLogName != nil {
            map["FlowLogName"] = self.flowLogName!
        }
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FlowLogId") {
            self.flowLogId = dict["FlowLogId"] as! String
        }
        if dict.keys.contains("FlowLogName") {
            self.flowLogName = dict["FlowLogName"] as! String
        }
        if dict.keys.contains("LogStoreName") {
            self.logStoreName = dict["LogStoreName"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeFlowlogsResponseBody : Tea.TeaModel {
    public class FlowLogs : Tea.TeaModel {
        public class FlowLog : Tea.TeaModel {
            public var cenId: String?

            public var creationTime: String?

            public var description_: String?

            public var flowLogId: String?

            public var flowLogName: String?

            public var logStoreName: String?

            public var projectName: String?

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
                if self.cenId != nil {
                    map["CenId"] = self.cenId!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.flowLogId != nil {
                    map["FlowLogId"] = self.flowLogId!
                }
                if self.flowLogName != nil {
                    map["FlowLogName"] = self.flowLogName!
                }
                if self.logStoreName != nil {
                    map["LogStoreName"] = self.logStoreName!
                }
                if self.projectName != nil {
                    map["ProjectName"] = self.projectName!
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
                if dict.keys.contains("CenId") {
                    self.cenId = dict["CenId"] as! String
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("FlowLogId") {
                    self.flowLogId = dict["FlowLogId"] as! String
                }
                if dict.keys.contains("FlowLogName") {
                    self.flowLogName = dict["FlowLogName"] as! String
                }
                if dict.keys.contains("LogStoreName") {
                    self.logStoreName = dict["LogStoreName"] as! String
                }
                if dict.keys.contains("ProjectName") {
                    self.projectName = dict["ProjectName"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var flowLog: [DescribeFlowlogsResponseBody.FlowLogs.FlowLog]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flowLog != nil {
                var tmp : [Any] = []
                for k in self.flowLog! {
                    tmp.append(k.toMap())
                }
                map["FlowLog"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FlowLog") {
                self.flowLog = dict["FlowLog"] as! [DescribeFlowlogsResponseBody.FlowLogs.FlowLog]
            }
        }
    }
    public var flowLogs: DescribeFlowlogsResponseBody.FlowLogs?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var success: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.flowLogs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowLogs != nil {
            map["FlowLogs"] = self.flowLogs?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FlowLogs") {
            var model = DescribeFlowlogsResponseBody.FlowLogs()
            model.fromMap(dict["FlowLogs"] as! [String: Any])
            self.flowLogs = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class DescribeFlowlogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFlowlogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeFlowlogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGeographicRegionMembershipRequest : Tea.TeaModel {
    public var geographicRegionId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

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
        if self.geographicRegionId != nil {
            map["GeographicRegionId"] = self.geographicRegionId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GeographicRegionId") {
            self.geographicRegionId = dict["GeographicRegionId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeGeographicRegionMembershipResponseBody : Tea.TeaModel {
    public class RegionIds : Tea.TeaModel {
        public class RegionId : Tea.TeaModel {
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
        public var regionId: [DescribeGeographicRegionMembershipResponseBody.RegionIds.RegionId]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.regionId! {
                    tmp.append(k.toMap())
                }
                map["RegionId"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! [DescribeGeographicRegionMembershipResponseBody.RegionIds.RegionId]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionIds: DescribeGeographicRegionMembershipResponseBody.RegionIds?

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
        try self.regionIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionIds != nil {
            map["RegionIds"] = self.regionIds?.toMap()
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
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionIds") {
            var model = DescribeGeographicRegionMembershipResponseBody.RegionIds()
            model.fromMap(dict["RegionIds"] as! [String: Any])
            self.regionIds = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeGeographicRegionMembershipResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGeographicRegionMembershipResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeGeographicRegionMembershipResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGrantRulesToCenRequest : Tea.TeaModel {
    public var cenId: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var productType: String?

    public var regionId: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeGrantRulesToCenResponseBody : Tea.TeaModel {
    public class GrantRules : Tea.TeaModel {
        public class GrantRule : Tea.TeaModel {
            public var cenId: String?

            public var cenOwnerId: Int64?

            public var childInstanceId: String?

            public var childInstanceOwnerId: Int64?

            public var childInstanceRegionId: String?

            public var childInstanceType: String?

            public var orderType: String?

            public override init() {
                super.init()
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
                if self.cenOwnerId != nil {
                    map["CenOwnerId"] = self.cenOwnerId!
                }
                if self.childInstanceId != nil {
                    map["ChildInstanceId"] = self.childInstanceId!
                }
                if self.childInstanceOwnerId != nil {
                    map["ChildInstanceOwnerId"] = self.childInstanceOwnerId!
                }
                if self.childInstanceRegionId != nil {
                    map["ChildInstanceRegionId"] = self.childInstanceRegionId!
                }
                if self.childInstanceType != nil {
                    map["ChildInstanceType"] = self.childInstanceType!
                }
                if self.orderType != nil {
                    map["OrderType"] = self.orderType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CenId") {
                    self.cenId = dict["CenId"] as! String
                }
                if dict.keys.contains("CenOwnerId") {
                    self.cenOwnerId = dict["CenOwnerId"] as! Int64
                }
                if dict.keys.contains("ChildInstanceId") {
                    self.childInstanceId = dict["ChildInstanceId"] as! String
                }
                if dict.keys.contains("ChildInstanceOwnerId") {
                    self.childInstanceOwnerId = dict["ChildInstanceOwnerId"] as! Int64
                }
                if dict.keys.contains("ChildInstanceRegionId") {
                    self.childInstanceRegionId = dict["ChildInstanceRegionId"] as! String
                }
                if dict.keys.contains("ChildInstanceType") {
                    self.childInstanceType = dict["ChildInstanceType"] as! String
                }
                if dict.keys.contains("OrderType") {
                    self.orderType = dict["OrderType"] as! String
                }
            }
        }
        public var grantRule: [DescribeGrantRulesToCenResponseBody.GrantRules.GrantRule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.grantRule != nil {
                var tmp : [Any] = []
                for k in self.grantRule! {
                    tmp.append(k.toMap())
                }
                map["GrantRule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GrantRule") {
                self.grantRule = dict["GrantRule"] as! [DescribeGrantRulesToCenResponseBody.GrantRules.GrantRule]
            }
        }
    }
    public var grantRules: DescribeGrantRulesToCenResponseBody.GrantRules?

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
        try self.grantRules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.grantRules != nil {
            map["GrantRules"] = self.grantRules?.toMap()
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
        if dict.keys.contains("GrantRules") {
            var model = DescribeGrantRulesToCenResponseBody.GrantRules()
            model.fromMap(dict["GrantRules"] as! [String: Any])
            self.grantRules = model
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

public class DescribeGrantRulesToCenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGrantRulesToCenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeGrantRulesToCenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGrantRulesToResourceRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var productType: String?

    public var regionId: String?

    public var resourceId: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeGrantRulesToResourceResponseBody : Tea.TeaModel {
    public class GrantRules : Tea.TeaModel {
        public var cenId: String?

        public var cenOwnerId: Int64?

        public var orderType: String?

        public override init() {
            super.init()
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
            if self.cenOwnerId != nil {
                map["CenOwnerId"] = self.cenOwnerId!
            }
            if self.orderType != nil {
                map["OrderType"] = self.orderType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CenId") {
                self.cenId = dict["CenId"] as! String
            }
            if dict.keys.contains("CenOwnerId") {
                self.cenOwnerId = dict["CenOwnerId"] as! Int64
            }
            if dict.keys.contains("OrderType") {
                self.orderType = dict["OrderType"] as! String
            }
        }
    }
    public var grantRules: [DescribeGrantRulesToResourceResponseBody.GrantRules]?

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
        if self.grantRules != nil {
            var tmp : [Any] = []
            for k in self.grantRules! {
                tmp.append(k.toMap())
            }
            map["GrantRules"] = tmp
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
        if dict.keys.contains("GrantRules") {
            self.grantRules = dict["GrantRules"] as! [DescribeGrantRulesToResourceResponseBody.GrantRules]
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

public class DescribeGrantRulesToResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGrantRulesToResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeGrantRulesToResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePublishedRouteEntriesRequest : Tea.TeaModel {
    public var cenId: String?

    public var childInstanceId: String?

    public var childInstanceRegionId: String?

    public var childInstanceRouteTableId: String?

    public var childInstanceType: String?

    public var destinationCidrBlock: String?

    public var pageNumber: Int32?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.childInstanceId != nil {
            map["ChildInstanceId"] = self.childInstanceId!
        }
        if self.childInstanceRegionId != nil {
            map["ChildInstanceRegionId"] = self.childInstanceRegionId!
        }
        if self.childInstanceRouteTableId != nil {
            map["ChildInstanceRouteTableId"] = self.childInstanceRouteTableId!
        }
        if self.childInstanceType != nil {
            map["ChildInstanceType"] = self.childInstanceType!
        }
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ChildInstanceId") {
            self.childInstanceId = dict["ChildInstanceId"] as! String
        }
        if dict.keys.contains("ChildInstanceRegionId") {
            self.childInstanceRegionId = dict["ChildInstanceRegionId"] as! String
        }
        if dict.keys.contains("ChildInstanceRouteTableId") {
            self.childInstanceRouteTableId = dict["ChildInstanceRouteTableId"] as! String
        }
        if dict.keys.contains("ChildInstanceType") {
            self.childInstanceType = dict["ChildInstanceType"] as! String
        }
        if dict.keys.contains("DestinationCidrBlock") {
            self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribePublishedRouteEntriesResponseBody : Tea.TeaModel {
    public class PublishedRouteEntries : Tea.TeaModel {
        public class PublishedRouteEntry : Tea.TeaModel {
            public class Conflicts : Tea.TeaModel {
                public class Conflict : Tea.TeaModel {
                    public var destinationCidrBlock: String?

                    public var instanceId: String?

                    public var instanceType: String?

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
                        if self.destinationCidrBlock != nil {
                            map["DestinationCidrBlock"] = self.destinationCidrBlock!
                        }
                        if self.instanceId != nil {
                            map["InstanceId"] = self.instanceId!
                        }
                        if self.instanceType != nil {
                            map["InstanceType"] = self.instanceType!
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
                        if dict.keys.contains("DestinationCidrBlock") {
                            self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
                        }
                        if dict.keys.contains("InstanceId") {
                            self.instanceId = dict["InstanceId"] as! String
                        }
                        if dict.keys.contains("InstanceType") {
                            self.instanceType = dict["InstanceType"] as! String
                        }
                        if dict.keys.contains("RegionId") {
                            self.regionId = dict["RegionId"] as! String
                        }
                        if dict.keys.contains("Status") {
                            self.status = dict["Status"] as! String
                        }
                    }
                }
                public var conflict: [DescribePublishedRouteEntriesResponseBody.PublishedRouteEntries.PublishedRouteEntry.Conflicts.Conflict]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.conflict != nil {
                        var tmp : [Any] = []
                        for k in self.conflict! {
                            tmp.append(k.toMap())
                        }
                        map["Conflict"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Conflict") {
                        self.conflict = dict["Conflict"] as! [DescribePublishedRouteEntriesResponseBody.PublishedRouteEntries.PublishedRouteEntry.Conflicts.Conflict]
                    }
                }
            }
            public var childInstanceRouteTableId: String?

            public var conflicts: DescribePublishedRouteEntriesResponseBody.PublishedRouteEntries.PublishedRouteEntry.Conflicts?

            public var destinationCidrBlock: String?

            public var nextHopId: String?

            public var nextHopType: String?

            public var operationalMode: Bool?

            public var publishStatus: String?

            public var routeType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.conflicts?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.childInstanceRouteTableId != nil {
                    map["ChildInstanceRouteTableId"] = self.childInstanceRouteTableId!
                }
                if self.conflicts != nil {
                    map["Conflicts"] = self.conflicts?.toMap()
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
                if self.operationalMode != nil {
                    map["OperationalMode"] = self.operationalMode!
                }
                if self.publishStatus != nil {
                    map["PublishStatus"] = self.publishStatus!
                }
                if self.routeType != nil {
                    map["RouteType"] = self.routeType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChildInstanceRouteTableId") {
                    self.childInstanceRouteTableId = dict["ChildInstanceRouteTableId"] as! String
                }
                if dict.keys.contains("Conflicts") {
                    var model = DescribePublishedRouteEntriesResponseBody.PublishedRouteEntries.PublishedRouteEntry.Conflicts()
                    model.fromMap(dict["Conflicts"] as! [String: Any])
                    self.conflicts = model
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
                if dict.keys.contains("OperationalMode") {
                    self.operationalMode = dict["OperationalMode"] as! Bool
                }
                if dict.keys.contains("PublishStatus") {
                    self.publishStatus = dict["PublishStatus"] as! String
                }
                if dict.keys.contains("RouteType") {
                    self.routeType = dict["RouteType"] as! String
                }
            }
        }
        public var publishedRouteEntry: [DescribePublishedRouteEntriesResponseBody.PublishedRouteEntries.PublishedRouteEntry]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.publishedRouteEntry != nil {
                var tmp : [Any] = []
                for k in self.publishedRouteEntry! {
                    tmp.append(k.toMap())
                }
                map["PublishedRouteEntry"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PublishedRouteEntry") {
                self.publishedRouteEntry = dict["PublishedRouteEntry"] as! [DescribePublishedRouteEntriesResponseBody.PublishedRouteEntries.PublishedRouteEntry]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var publishedRouteEntries: DescribePublishedRouteEntriesResponseBody.PublishedRouteEntries?

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
        try self.publishedRouteEntries?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.publishedRouteEntries != nil {
            map["PublishedRouteEntries"] = self.publishedRouteEntries?.toMap()
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
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PublishedRouteEntries") {
            var model = DescribePublishedRouteEntriesResponseBody.PublishedRouteEntries()
            model.fromMap(dict["PublishedRouteEntries"] as! [String: Any])
            self.publishedRouteEntries = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribePublishedRouteEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePublishedRouteEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribePublishedRouteEntriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRouteConflictRequest : Tea.TeaModel {
    public var childInstanceId: String?

    public var childInstanceRegionId: String?

    public var childInstanceRouteTableId: String?

    public var childInstanceType: String?

    public var destinationCidrBlock: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

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
        if self.childInstanceId != nil {
            map["ChildInstanceId"] = self.childInstanceId!
        }
        if self.childInstanceRegionId != nil {
            map["ChildInstanceRegionId"] = self.childInstanceRegionId!
        }
        if self.childInstanceRouteTableId != nil {
            map["ChildInstanceRouteTableId"] = self.childInstanceRouteTableId!
        }
        if self.childInstanceType != nil {
            map["ChildInstanceType"] = self.childInstanceType!
        }
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChildInstanceId") {
            self.childInstanceId = dict["ChildInstanceId"] as! String
        }
        if dict.keys.contains("ChildInstanceRegionId") {
            self.childInstanceRegionId = dict["ChildInstanceRegionId"] as! String
        }
        if dict.keys.contains("ChildInstanceRouteTableId") {
            self.childInstanceRouteTableId = dict["ChildInstanceRouteTableId"] as! String
        }
        if dict.keys.contains("ChildInstanceType") {
            self.childInstanceType = dict["ChildInstanceType"] as! String
        }
        if dict.keys.contains("DestinationCidrBlock") {
            self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeRouteConflictResponseBody : Tea.TeaModel {
    public class RouteConflicts : Tea.TeaModel {
        public class RouteConflict : Tea.TeaModel {
            public var destinationCidrBlock: String?

            public var instanceId: String?

            public var instanceType: String?

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
                if self.destinationCidrBlock != nil {
                    map["DestinationCidrBlock"] = self.destinationCidrBlock!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
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
                if dict.keys.contains("DestinationCidrBlock") {
                    self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var routeConflict: [DescribeRouteConflictResponseBody.RouteConflicts.RouteConflict]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.routeConflict != nil {
                var tmp : [Any] = []
                for k in self.routeConflict! {
                    tmp.append(k.toMap())
                }
                map["RouteConflict"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RouteConflict") {
                self.routeConflict = dict["RouteConflict"] as! [DescribeRouteConflictResponseBody.RouteConflicts.RouteConflict]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var routeConflicts: DescribeRouteConflictResponseBody.RouteConflicts?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.routeConflicts?.validate()
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
        if self.routeConflicts != nil {
            map["RouteConflicts"] = self.routeConflicts?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RouteConflicts") {
            var model = DescribeRouteConflictResponseBody.RouteConflicts()
            model.fromMap(dict["RouteConflicts"] as! [String: Any])
            self.routeConflicts = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeRouteConflictResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRouteConflictResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeRouteConflictResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRouteServicesInCenRequest : Tea.TeaModel {
    public var accessRegionId: String?

    public var cenId: String?

    public var host: String?

    public var hostRegionId: String?

    public var hostVpcId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

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
        if self.accessRegionId != nil {
            map["AccessRegionId"] = self.accessRegionId!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.hostRegionId != nil {
            map["HostRegionId"] = self.hostRegionId!
        }
        if self.hostVpcId != nil {
            map["HostVpcId"] = self.hostVpcId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessRegionId") {
            self.accessRegionId = dict["AccessRegionId"] as! String
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("HostRegionId") {
            self.hostRegionId = dict["HostRegionId"] as! String
        }
        if dict.keys.contains("HostVpcId") {
            self.hostVpcId = dict["HostVpcId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeRouteServicesInCenResponseBody : Tea.TeaModel {
    public class RouteServiceEntries : Tea.TeaModel {
        public class RouteServiceEntry : Tea.TeaModel {
            public class Cidrs : Tea.TeaModel {
                public var cidr: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cidr != nil {
                        map["Cidr"] = self.cidr!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cidr") {
                        self.cidr = dict["Cidr"] as! [String]
                    }
                }
            }
            public var accessRegionId: String?

            public var cenId: String?

            public var cidrs: DescribeRouteServicesInCenResponseBody.RouteServiceEntries.RouteServiceEntry.Cidrs?

            public var description_: String?

            public var host: String?

            public var hostRegionId: String?

            public var hostVpcId: String?

            public var status: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cidrs?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessRegionId != nil {
                    map["AccessRegionId"] = self.accessRegionId!
                }
                if self.cenId != nil {
                    map["CenId"] = self.cenId!
                }
                if self.cidrs != nil {
                    map["Cidrs"] = self.cidrs?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.host != nil {
                    map["Host"] = self.host!
                }
                if self.hostRegionId != nil {
                    map["HostRegionId"] = self.hostRegionId!
                }
                if self.hostVpcId != nil {
                    map["HostVpcId"] = self.hostVpcId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessRegionId") {
                    self.accessRegionId = dict["AccessRegionId"] as! String
                }
                if dict.keys.contains("CenId") {
                    self.cenId = dict["CenId"] as! String
                }
                if dict.keys.contains("Cidrs") {
                    var model = DescribeRouteServicesInCenResponseBody.RouteServiceEntries.RouteServiceEntry.Cidrs()
                    model.fromMap(dict["Cidrs"] as! [String: Any])
                    self.cidrs = model
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Host") {
                    self.host = dict["Host"] as! String
                }
                if dict.keys.contains("HostRegionId") {
                    self.hostRegionId = dict["HostRegionId"] as! String
                }
                if dict.keys.contains("HostVpcId") {
                    self.hostVpcId = dict["HostVpcId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var routeServiceEntry: [DescribeRouteServicesInCenResponseBody.RouteServiceEntries.RouteServiceEntry]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.routeServiceEntry != nil {
                var tmp : [Any] = []
                for k in self.routeServiceEntry! {
                    tmp.append(k.toMap())
                }
                map["RouteServiceEntry"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RouteServiceEntry") {
                self.routeServiceEntry = dict["RouteServiceEntry"] as! [DescribeRouteServicesInCenResponseBody.RouteServiceEntries.RouteServiceEntry]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var routeServiceEntries: DescribeRouteServicesInCenResponseBody.RouteServiceEntries?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.routeServiceEntries?.validate()
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
        if self.routeServiceEntries != nil {
            map["RouteServiceEntries"] = self.routeServiceEntries?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RouteServiceEntries") {
            var model = DescribeRouteServicesInCenResponseBody.RouteServiceEntries()
            model.fromMap(dict["RouteServiceEntries"] as! [String: Any])
            self.routeServiceEntries = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeRouteServicesInCenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRouteServicesInCenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeRouteServicesInCenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachCenChildInstanceRequest : Tea.TeaModel {
    public var cenId: String?

    public var cenOwnerId: Int64?

    public var childInstanceId: String?

    public var childInstanceOwnerId: Int64?

    public var childInstanceRegionId: String?

    public var childInstanceType: String?

    public var ownerAccount: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.cenOwnerId != nil {
            map["CenOwnerId"] = self.cenOwnerId!
        }
        if self.childInstanceId != nil {
            map["ChildInstanceId"] = self.childInstanceId!
        }
        if self.childInstanceOwnerId != nil {
            map["ChildInstanceOwnerId"] = self.childInstanceOwnerId!
        }
        if self.childInstanceRegionId != nil {
            map["ChildInstanceRegionId"] = self.childInstanceRegionId!
        }
        if self.childInstanceType != nil {
            map["ChildInstanceType"] = self.childInstanceType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CenOwnerId") {
            self.cenOwnerId = dict["CenOwnerId"] as! Int64
        }
        if dict.keys.contains("ChildInstanceId") {
            self.childInstanceId = dict["ChildInstanceId"] as! String
        }
        if dict.keys.contains("ChildInstanceOwnerId") {
            self.childInstanceOwnerId = dict["ChildInstanceOwnerId"] as! Int64
        }
        if dict.keys.contains("ChildInstanceRegionId") {
            self.childInstanceRegionId = dict["ChildInstanceRegionId"] as! String
        }
        if dict.keys.contains("ChildInstanceType") {
            self.childInstanceType = dict["ChildInstanceType"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DetachCenChildInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DetachCenChildInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachCenChildInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetachCenChildInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableCenVbrHealthCheckRequest : Tea.TeaModel {
    public var cenId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var vbrInstanceId: String?

    public var vbrInstanceOwnerId: Int64?

    public var vbrInstanceRegionId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.vbrInstanceId != nil {
            map["VbrInstanceId"] = self.vbrInstanceId!
        }
        if self.vbrInstanceOwnerId != nil {
            map["VbrInstanceOwnerId"] = self.vbrInstanceOwnerId!
        }
        if self.vbrInstanceRegionId != nil {
            map["VbrInstanceRegionId"] = self.vbrInstanceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("VbrInstanceId") {
            self.vbrInstanceId = dict["VbrInstanceId"] as! String
        }
        if dict.keys.contains("VbrInstanceOwnerId") {
            self.vbrInstanceOwnerId = dict["VbrInstanceOwnerId"] as! Int64
        }
        if dict.keys.contains("VbrInstanceRegionId") {
            self.vbrInstanceRegionId = dict["VbrInstanceRegionId"] as! String
        }
    }
}

public class DisableCenVbrHealthCheckResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DisableCenVbrHealthCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableCenVbrHealthCheckResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableCenVbrHealthCheckResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableCenVpcFlowStatisticRequest : Tea.TeaModel {
    public var cenId: String?

    public var clientToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DisableCenVpcFlowStatisticResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DisableCenVpcFlowStatisticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableCenVpcFlowStatisticResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableCenVpcFlowStatisticResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableTransitRouterRouteTablePropagationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public var transitRouterRouteTableId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
    }
}

public class DisableTransitRouterRouteTablePropagationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DisableTransitRouterRouteTablePropagationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableTransitRouterRouteTablePropagationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableTransitRouterRouteTablePropagationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisassociateTransitRouterMulticastDomainRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public var transitRouterMulticastDomainId: String?

    public var vSwitchIds: [String]?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterMulticastDomainId != nil {
            map["TransitRouterMulticastDomainId"] = self.transitRouterMulticastDomainId!
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterMulticastDomainId") {
            self.transitRouterMulticastDomainId = dict["TransitRouterMulticastDomainId"] as! String
        }
        if dict.keys.contains("VSwitchIds") {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
        }
    }
}

public class DisassociateTransitRouterMulticastDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DisassociateTransitRouterMulticastDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisassociateTransitRouterMulticastDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisassociateTransitRouterMulticastDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DissociateTransitRouterAttachmentFromRouteTableRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public var transitRouterRouteTableId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
    }
}

public class DissociateTransitRouterAttachmentFromRouteTableResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DissociateTransitRouterAttachmentFromRouteTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DissociateTransitRouterAttachmentFromRouteTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DissociateTransitRouterAttachmentFromRouteTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableCenVbrHealthCheckRequest : Tea.TeaModel {
    public var cenId: String?

    public var healthCheckInterval: Int32?

    public var healthCheckOnly: Bool?

    public var healthCheckSourceIp: String?

    public var healthCheckTargetIp: String?

    public var healthyThreshold: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var vbrInstanceId: String?

    public var vbrInstanceOwnerId: Int64?

    public var vbrInstanceRegionId: String?

    public override init() {
        super.init()
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
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckOnly != nil {
            map["HealthCheckOnly"] = self.healthCheckOnly!
        }
        if self.healthCheckSourceIp != nil {
            map["HealthCheckSourceIp"] = self.healthCheckSourceIp!
        }
        if self.healthCheckTargetIp != nil {
            map["HealthCheckTargetIp"] = self.healthCheckTargetIp!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.vbrInstanceId != nil {
            map["VbrInstanceId"] = self.vbrInstanceId!
        }
        if self.vbrInstanceOwnerId != nil {
            map["VbrInstanceOwnerId"] = self.vbrInstanceOwnerId!
        }
        if self.vbrInstanceRegionId != nil {
            map["VbrInstanceRegionId"] = self.vbrInstanceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckOnly") {
            self.healthCheckOnly = dict["HealthCheckOnly"] as! Bool
        }
        if dict.keys.contains("HealthCheckSourceIp") {
            self.healthCheckSourceIp = dict["HealthCheckSourceIp"] as! String
        }
        if dict.keys.contains("HealthCheckTargetIp") {
            self.healthCheckTargetIp = dict["HealthCheckTargetIp"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("VbrInstanceId") {
            self.vbrInstanceId = dict["VbrInstanceId"] as! String
        }
        if dict.keys.contains("VbrInstanceOwnerId") {
            self.vbrInstanceOwnerId = dict["VbrInstanceOwnerId"] as! Int64
        }
        if dict.keys.contains("VbrInstanceRegionId") {
            self.vbrInstanceRegionId = dict["VbrInstanceRegionId"] as! String
        }
    }
}

public class EnableCenVbrHealthCheckResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class EnableCenVbrHealthCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableCenVbrHealthCheckResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableCenVbrHealthCheckResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableCenVpcFlowStatisticRequest : Tea.TeaModel {
    public var cenId: String?

    public var clientToken: String?

    public var days: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.days != nil {
            map["Days"] = self.days!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Days") {
            self.days = dict["Days"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class EnableCenVpcFlowStatisticResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class EnableCenVpcFlowStatisticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableCenVpcFlowStatisticResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableCenVpcFlowStatisticResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableTransitRouterRouteTablePropagationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public var transitRouterRouteTableId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
    }
}

public class EnableTransitRouterRouteTablePropagationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class EnableTransitRouterRouteTablePropagationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableTransitRouterRouteTablePropagationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableTransitRouterRouteTablePropagationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GrantInstanceToTransitRouterRequest : Tea.TeaModel {
    public var cenId: String?

    public var cenOwnerId: Int64?

    public var instanceId: String?

    public var instanceType: String?

    public var orderType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.cenOwnerId != nil {
            map["CenOwnerId"] = self.cenOwnerId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CenOwnerId") {
            self.cenOwnerId = dict["CenOwnerId"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GrantInstanceToTransitRouterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class GrantInstanceToTransitRouterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantInstanceToTransitRouterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GrantInstanceToTransitRouterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCenInterRegionTrafficQosPoliciesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trafficQosPolicyDescription: String?

    public var trafficQosPolicyId: String?

    public var trafficQosPolicyName: String?

    public var transitRouterAttachmentId: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.trafficQosPolicyDescription != nil {
            map["TrafficQosPolicyDescription"] = self.trafficQosPolicyDescription!
        }
        if self.trafficQosPolicyId != nil {
            map["TrafficQosPolicyId"] = self.trafficQosPolicyId!
        }
        if self.trafficQosPolicyName != nil {
            map["TrafficQosPolicyName"] = self.trafficQosPolicyName!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TrafficQosPolicyDescription") {
            self.trafficQosPolicyDescription = dict["TrafficQosPolicyDescription"] as! String
        }
        if dict.keys.contains("TrafficQosPolicyId") {
            self.trafficQosPolicyId = dict["TrafficQosPolicyId"] as! String
        }
        if dict.keys.contains("TrafficQosPolicyName") {
            self.trafficQosPolicyName = dict["TrafficQosPolicyName"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
    }
}

public class ListCenInterRegionTrafficQosPoliciesResponseBody : Tea.TeaModel {
    public class TrafficQosPolicies : Tea.TeaModel {
        public class TrafficQosQueues : Tea.TeaModel {
            public var dscps: [Int32]?

            public var qosQueueDescription: String?

            public var qosQueueId: String?

            public var qosQueueName: String?

            public var remainBandwidthPercent: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dscps != nil {
                    map["Dscps"] = self.dscps!
                }
                if self.qosQueueDescription != nil {
                    map["QosQueueDescription"] = self.qosQueueDescription!
                }
                if self.qosQueueId != nil {
                    map["QosQueueId"] = self.qosQueueId!
                }
                if self.qosQueueName != nil {
                    map["QosQueueName"] = self.qosQueueName!
                }
                if self.remainBandwidthPercent != nil {
                    map["RemainBandwidthPercent"] = self.remainBandwidthPercent!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Dscps") {
                    self.dscps = dict["Dscps"] as! [Int32]
                }
                if dict.keys.contains("QosQueueDescription") {
                    self.qosQueueDescription = dict["QosQueueDescription"] as! String
                }
                if dict.keys.contains("QosQueueId") {
                    self.qosQueueId = dict["QosQueueId"] as! String
                }
                if dict.keys.contains("QosQueueName") {
                    self.qosQueueName = dict["QosQueueName"] as! String
                }
                if dict.keys.contains("RemainBandwidthPercent") {
                    self.remainBandwidthPercent = dict["RemainBandwidthPercent"] as! Int32
                }
            }
        }
        public var trafficQosPolicyDescription: String?

        public var trafficQosPolicyId: String?

        public var trafficQosPolicyName: String?

        public var trafficQosPolicyStatus: String?

        public var trafficQosQueues: [ListCenInterRegionTrafficQosPoliciesResponseBody.TrafficQosPolicies.TrafficQosQueues]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.trafficQosPolicyDescription != nil {
                map["TrafficQosPolicyDescription"] = self.trafficQosPolicyDescription!
            }
            if self.trafficQosPolicyId != nil {
                map["TrafficQosPolicyId"] = self.trafficQosPolicyId!
            }
            if self.trafficQosPolicyName != nil {
                map["TrafficQosPolicyName"] = self.trafficQosPolicyName!
            }
            if self.trafficQosPolicyStatus != nil {
                map["TrafficQosPolicyStatus"] = self.trafficQosPolicyStatus!
            }
            if self.trafficQosQueues != nil {
                var tmp : [Any] = []
                for k in self.trafficQosQueues! {
                    tmp.append(k.toMap())
                }
                map["TrafficQosQueues"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TrafficQosPolicyDescription") {
                self.trafficQosPolicyDescription = dict["TrafficQosPolicyDescription"] as! String
            }
            if dict.keys.contains("TrafficQosPolicyId") {
                self.trafficQosPolicyId = dict["TrafficQosPolicyId"] as! String
            }
            if dict.keys.contains("TrafficQosPolicyName") {
                self.trafficQosPolicyName = dict["TrafficQosPolicyName"] as! String
            }
            if dict.keys.contains("TrafficQosPolicyStatus") {
                self.trafficQosPolicyStatus = dict["TrafficQosPolicyStatus"] as! String
            }
            if dict.keys.contains("TrafficQosQueues") {
                self.trafficQosQueues = dict["TrafficQosQueues"] as! [ListCenInterRegionTrafficQosPoliciesResponseBody.TrafficQosPolicies.TrafficQosQueues]
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var trafficQosPolicies: [ListCenInterRegionTrafficQosPoliciesResponseBody.TrafficQosPolicies]?

    public override init() {
        super.init()
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
        if self.trafficQosPolicies != nil {
            var tmp : [Any] = []
            for k in self.trafficQosPolicies! {
                tmp.append(k.toMap())
            }
            map["TrafficQosPolicies"] = tmp
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TrafficQosPolicies") {
            self.trafficQosPolicies = dict["TrafficQosPolicies"] as! [ListCenInterRegionTrafficQosPoliciesResponseBody.TrafficQosPolicies]
        }
    }
}

public class ListCenInterRegionTrafficQosPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCenInterRegionTrafficQosPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListCenInterRegionTrafficQosPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGrantVSwitchEnisRequest : Tea.TeaModel {
    public var cenId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var vSwitchId: String?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class ListGrantVSwitchEnisResponseBody : Tea.TeaModel {
    public class GrantVSwitchEnis : Tea.TeaModel {
        public var description_: String?

        public var networkInterfaceId: String?

        public var transitRouterFlag: Bool?

        public var vSwitchId: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.networkInterfaceId != nil {
                map["NetworkInterfaceId"] = self.networkInterfaceId!
            }
            if self.transitRouterFlag != nil {
                map["TransitRouterFlag"] = self.transitRouterFlag!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("NetworkInterfaceId") {
                self.networkInterfaceId = dict["NetworkInterfaceId"] as! String
            }
            if dict.keys.contains("TransitRouterFlag") {
                self.transitRouterFlag = dict["TransitRouterFlag"] as! Bool
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var grantVSwitchEnis: [ListGrantVSwitchEnisResponseBody.GrantVSwitchEnis]?

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
        if self.grantVSwitchEnis != nil {
            var tmp : [Any] = []
            for k in self.grantVSwitchEnis! {
                tmp.append(k.toMap())
            }
            map["GrantVSwitchEnis"] = tmp
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
        if dict.keys.contains("GrantVSwitchEnis") {
            self.grantVSwitchEnis = dict["GrantVSwitchEnis"] as! [ListGrantVSwitchEnisResponseBody.GrantVSwitchEnis]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class ListGrantVSwitchEnisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGrantVSwitchEnisResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListGrantVSwitchEnisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGrantVSwitchesToCenRequest : Tea.TeaModel {
    public var cenId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ListGrantVSwitchesToCenResponseBody : Tea.TeaModel {
    public class VSwitches : Tea.TeaModel {
        public var vSwitchId: String?

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
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
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
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var vSwitches: [ListGrantVSwitchesToCenResponseBody.VSwitches]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.vSwitches != nil {
            var tmp : [Any] = []
            for k in self.vSwitches! {
                tmp.append(k.toMap())
            }
            map["VSwitches"] = tmp
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("VSwitches") {
            self.vSwitches = dict["VSwitches"] as! [ListGrantVSwitchesToCenResponseBody.VSwitches]
        }
    }
}

public class ListGrantVSwitchesToCenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGrantVSwitchesToCenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListGrantVSwitchesToCenResponseBody()
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

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageSize: Int32?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListTagResourcesRequest.Tag]
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
                self.tagResource = dict["TagResource"] as! [ListTagResourcesResponseBody.TagResources.TagResource]
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class ListTrafficMarkingPoliciesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trafficMarkingPolicyDescription: String?

    public var trafficMarkingPolicyId: String?

    public var trafficMarkingPolicyName: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.trafficMarkingPolicyDescription != nil {
            map["TrafficMarkingPolicyDescription"] = self.trafficMarkingPolicyDescription!
        }
        if self.trafficMarkingPolicyId != nil {
            map["TrafficMarkingPolicyId"] = self.trafficMarkingPolicyId!
        }
        if self.trafficMarkingPolicyName != nil {
            map["TrafficMarkingPolicyName"] = self.trafficMarkingPolicyName!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TrafficMarkingPolicyDescription") {
            self.trafficMarkingPolicyDescription = dict["TrafficMarkingPolicyDescription"] as! String
        }
        if dict.keys.contains("TrafficMarkingPolicyId") {
            self.trafficMarkingPolicyId = dict["TrafficMarkingPolicyId"] as! String
        }
        if dict.keys.contains("TrafficMarkingPolicyName") {
            self.trafficMarkingPolicyName = dict["TrafficMarkingPolicyName"] as! String
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
    }
}

public class ListTrafficMarkingPoliciesResponseBody : Tea.TeaModel {
    public class TrafficMarkingPolicies : Tea.TeaModel {
        public class TrafficMatchRules : Tea.TeaModel {
            public var dstCidr: String?

            public var dstPortRange: [Int32]?

            public var matchDscp: Int32?

            public var protocol_: String?

            public var srcCidr: String?

            public var srcPortRange: [Int32]?

            public var trafficMatchRuleDescription: String?

            public var trafficMatchRuleId: String?

            public var trafficMatchRuleName: String?

            public var trafficMatchRuleStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dstCidr != nil {
                    map["DstCidr"] = self.dstCidr!
                }
                if self.dstPortRange != nil {
                    map["DstPortRange"] = self.dstPortRange!
                }
                if self.matchDscp != nil {
                    map["MatchDscp"] = self.matchDscp!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.srcCidr != nil {
                    map["SrcCidr"] = self.srcCidr!
                }
                if self.srcPortRange != nil {
                    map["SrcPortRange"] = self.srcPortRange!
                }
                if self.trafficMatchRuleDescription != nil {
                    map["TrafficMatchRuleDescription"] = self.trafficMatchRuleDescription!
                }
                if self.trafficMatchRuleId != nil {
                    map["TrafficMatchRuleId"] = self.trafficMatchRuleId!
                }
                if self.trafficMatchRuleName != nil {
                    map["TrafficMatchRuleName"] = self.trafficMatchRuleName!
                }
                if self.trafficMatchRuleStatus != nil {
                    map["TrafficMatchRuleStatus"] = self.trafficMatchRuleStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DstCidr") {
                    self.dstCidr = dict["DstCidr"] as! String
                }
                if dict.keys.contains("DstPortRange") {
                    self.dstPortRange = dict["DstPortRange"] as! [Int32]
                }
                if dict.keys.contains("MatchDscp") {
                    self.matchDscp = dict["MatchDscp"] as! Int32
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("SrcCidr") {
                    self.srcCidr = dict["SrcCidr"] as! String
                }
                if dict.keys.contains("SrcPortRange") {
                    self.srcPortRange = dict["SrcPortRange"] as! [Int32]
                }
                if dict.keys.contains("TrafficMatchRuleDescription") {
                    self.trafficMatchRuleDescription = dict["TrafficMatchRuleDescription"] as! String
                }
                if dict.keys.contains("TrafficMatchRuleId") {
                    self.trafficMatchRuleId = dict["TrafficMatchRuleId"] as! String
                }
                if dict.keys.contains("TrafficMatchRuleName") {
                    self.trafficMatchRuleName = dict["TrafficMatchRuleName"] as! String
                }
                if dict.keys.contains("TrafficMatchRuleStatus") {
                    self.trafficMatchRuleStatus = dict["TrafficMatchRuleStatus"] as! String
                }
            }
        }
        public var markingDscp: Int32?

        public var priority: Int32?

        public var trafficMarkingPolicyDescription: String?

        public var trafficMarkingPolicyId: String?

        public var trafficMarkingPolicyName: String?

        public var trafficMarkingPolicyStatus: String?

        public var trafficMatchRules: [ListTrafficMarkingPoliciesResponseBody.TrafficMarkingPolicies.TrafficMatchRules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.markingDscp != nil {
                map["MarkingDscp"] = self.markingDscp!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.trafficMarkingPolicyDescription != nil {
                map["TrafficMarkingPolicyDescription"] = self.trafficMarkingPolicyDescription!
            }
            if self.trafficMarkingPolicyId != nil {
                map["TrafficMarkingPolicyId"] = self.trafficMarkingPolicyId!
            }
            if self.trafficMarkingPolicyName != nil {
                map["TrafficMarkingPolicyName"] = self.trafficMarkingPolicyName!
            }
            if self.trafficMarkingPolicyStatus != nil {
                map["TrafficMarkingPolicyStatus"] = self.trafficMarkingPolicyStatus!
            }
            if self.trafficMatchRules != nil {
                var tmp : [Any] = []
                for k in self.trafficMatchRules! {
                    tmp.append(k.toMap())
                }
                map["TrafficMatchRules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MarkingDscp") {
                self.markingDscp = dict["MarkingDscp"] as! Int32
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("TrafficMarkingPolicyDescription") {
                self.trafficMarkingPolicyDescription = dict["TrafficMarkingPolicyDescription"] as! String
            }
            if dict.keys.contains("TrafficMarkingPolicyId") {
                self.trafficMarkingPolicyId = dict["TrafficMarkingPolicyId"] as! String
            }
            if dict.keys.contains("TrafficMarkingPolicyName") {
                self.trafficMarkingPolicyName = dict["TrafficMarkingPolicyName"] as! String
            }
            if dict.keys.contains("TrafficMarkingPolicyStatus") {
                self.trafficMarkingPolicyStatus = dict["TrafficMarkingPolicyStatus"] as! String
            }
            if dict.keys.contains("TrafficMatchRules") {
                self.trafficMatchRules = dict["TrafficMatchRules"] as! [ListTrafficMarkingPoliciesResponseBody.TrafficMarkingPolicies.TrafficMatchRules]
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var trafficMarkingPolicies: [ListTrafficMarkingPoliciesResponseBody.TrafficMarkingPolicies]?

    public override init() {
        super.init()
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
        if self.trafficMarkingPolicies != nil {
            var tmp : [Any] = []
            for k in self.trafficMarkingPolicies! {
                tmp.append(k.toMap())
            }
            map["TrafficMarkingPolicies"] = tmp
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TrafficMarkingPolicies") {
            self.trafficMarkingPolicies = dict["TrafficMarkingPolicies"] as! [ListTrafficMarkingPoliciesResponseBody.TrafficMarkingPolicies]
        }
    }
}

public class ListTrafficMarkingPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrafficMarkingPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTrafficMarkingPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRouterAvailableResourceRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var supportMulticast: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.supportMulticast != nil {
            map["SupportMulticast"] = self.supportMulticast!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SupportMulticast") {
            self.supportMulticast = dict["SupportMulticast"] as! Bool
        }
    }
}

public class ListTransitRouterAvailableResourceResponseBody : Tea.TeaModel {
    public var availableZones: [String]?

    public var masterZones: [String]?

    public var requestId: String?

    public var slaveZones: [String]?

    public override init() {
        super.init()
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
            map["AvailableZones"] = self.availableZones!
        }
        if self.masterZones != nil {
            map["MasterZones"] = self.masterZones!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slaveZones != nil {
            map["SlaveZones"] = self.slaveZones!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableZones") {
            self.availableZones = dict["AvailableZones"] as! [String]
        }
        if dict.keys.contains("MasterZones") {
            self.masterZones = dict["MasterZones"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlaveZones") {
            self.slaveZones = dict["SlaveZones"] as! [String]
        }
    }
}

public class ListTransitRouterAvailableResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRouterAvailableResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRouterAvailableResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRouterMulticastDomainAssociationsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var transitRouterAttachmentId: String?

    public var transitRouterMulticastDomainId: String?

    public var vSwitchIds: [String]?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterMulticastDomainId != nil {
            map["TransitRouterMulticastDomainId"] = self.transitRouterMulticastDomainId!
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterMulticastDomainId") {
            self.transitRouterMulticastDomainId = dict["TransitRouterMulticastDomainId"] as! String
        }
        if dict.keys.contains("VSwitchIds") {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
        }
    }
}

public class ListTransitRouterMulticastDomainAssociationsResponseBody : Tea.TeaModel {
    public class TransitRouterMulticastAssociations : Tea.TeaModel {
        public var resourceId: String?

        public var resourceOwnerId: Int64?

        public var resourceType: String?

        public var status: String?

        public var transitRouterAttachmentId: String?

        public var transitRouterMulticastDomainId: String?

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
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceOwnerId != nil {
                map["ResourceOwnerId"] = self.resourceOwnerId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.transitRouterAttachmentId != nil {
                map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
            }
            if self.transitRouterMulticastDomainId != nil {
                map["TransitRouterMulticastDomainId"] = self.transitRouterMulticastDomainId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceOwnerId") {
                self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentId") {
                self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
            }
            if dict.keys.contains("TransitRouterMulticastDomainId") {
                self.transitRouterMulticastDomainId = dict["TransitRouterMulticastDomainId"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var transitRouterMulticastAssociations: [ListTransitRouterMulticastDomainAssociationsResponseBody.TransitRouterMulticastAssociations]?

    public override init() {
        super.init()
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
        if self.transitRouterMulticastAssociations != nil {
            var tmp : [Any] = []
            for k in self.transitRouterMulticastAssociations! {
                tmp.append(k.toMap())
            }
            map["TransitRouterMulticastAssociations"] = tmp
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TransitRouterMulticastAssociations") {
            self.transitRouterMulticastAssociations = dict["TransitRouterMulticastAssociations"] as! [ListTransitRouterMulticastDomainAssociationsResponseBody.TransitRouterMulticastAssociations]
        }
    }
}

public class ListTransitRouterMulticastDomainAssociationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRouterMulticastDomainAssociationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRouterMulticastDomainAssociationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRouterMulticastDomainVSwitchesRequest : Tea.TeaModel {
    public var cenId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var vSwitchIds: [String]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("VSwitchIds") {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class ListTransitRouterMulticastDomainVSwitchesResponseBody : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var vSwitchIds: [String]?

    public override init() {
        super.init()
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
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("VSwitchIds") {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
        }
    }
}

public class ListTransitRouterMulticastDomainVSwitchesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRouterMulticastDomainVSwitchesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRouterMulticastDomainVSwitchesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRouterMulticastDomainsRequest : Tea.TeaModel {
    public var cenId: String?

    public var clientToken: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterId: String?

    public var transitRouterMulticastDomainId: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        if self.transitRouterMulticastDomainId != nil {
            map["TransitRouterMulticastDomainId"] = self.transitRouterMulticastDomainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
        if dict.keys.contains("TransitRouterMulticastDomainId") {
            self.transitRouterMulticastDomainId = dict["TransitRouterMulticastDomainId"] as! String
        }
    }
}

public class ListTransitRouterMulticastDomainsResponseBody : Tea.TeaModel {
    public class TransitRouterMulticastDomains : Tea.TeaModel {
        public var status: String?

        public var transitRouterMulticastDomainDescription: String?

        public var transitRouterMulticastDomainId: String?

        public var transitRouterMulticastDomainName: String?

        public override init() {
            super.init()
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
            if self.transitRouterMulticastDomainDescription != nil {
                map["TransitRouterMulticastDomainDescription"] = self.transitRouterMulticastDomainDescription!
            }
            if self.transitRouterMulticastDomainId != nil {
                map["TransitRouterMulticastDomainId"] = self.transitRouterMulticastDomainId!
            }
            if self.transitRouterMulticastDomainName != nil {
                map["TransitRouterMulticastDomainName"] = self.transitRouterMulticastDomainName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TransitRouterMulticastDomainDescription") {
                self.transitRouterMulticastDomainDescription = dict["TransitRouterMulticastDomainDescription"] as! String
            }
            if dict.keys.contains("TransitRouterMulticastDomainId") {
                self.transitRouterMulticastDomainId = dict["TransitRouterMulticastDomainId"] as! String
            }
            if dict.keys.contains("TransitRouterMulticastDomainName") {
                self.transitRouterMulticastDomainName = dict["TransitRouterMulticastDomainName"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var transitRouterMulticastDomains: [ListTransitRouterMulticastDomainsResponseBody.TransitRouterMulticastDomains]?

    public override init() {
        super.init()
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
        if self.transitRouterMulticastDomains != nil {
            var tmp : [Any] = []
            for k in self.transitRouterMulticastDomains! {
                tmp.append(k.toMap())
            }
            map["TransitRouterMulticastDomains"] = tmp
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TransitRouterMulticastDomains") {
            self.transitRouterMulticastDomains = dict["TransitRouterMulticastDomains"] as! [ListTransitRouterMulticastDomainsResponseBody.TransitRouterMulticastDomains]
        }
    }
}

public class ListTransitRouterMulticastDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRouterMulticastDomainsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRouterMulticastDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRouterMulticastGroupsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var groupIpAddress: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var peerTransitRouterMulticastDomains: [String]?

    public var resourceId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var transitRouterAttachmentId: String?

    public var transitRouterMulticastDomainId: String?

    public var vSwitchIds: [String]?

    public override init() {
        super.init()
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
        if self.groupIpAddress != nil {
            map["GroupIpAddress"] = self.groupIpAddress!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.peerTransitRouterMulticastDomains != nil {
            map["PeerTransitRouterMulticastDomains"] = self.peerTransitRouterMulticastDomains!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterMulticastDomainId != nil {
            map["TransitRouterMulticastDomainId"] = self.transitRouterMulticastDomainId!
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("GroupIpAddress") {
            self.groupIpAddress = dict["GroupIpAddress"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PeerTransitRouterMulticastDomains") {
            self.peerTransitRouterMulticastDomains = dict["PeerTransitRouterMulticastDomains"] as! [String]
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterMulticastDomainId") {
            self.transitRouterMulticastDomainId = dict["TransitRouterMulticastDomainId"] as! String
        }
        if dict.keys.contains("VSwitchIds") {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
        }
    }
}

public class ListTransitRouterMulticastGroupsResponseBody : Tea.TeaModel {
    public class TransitRouterMulticastGroups : Tea.TeaModel {
        public var groupIpAddress: String?

        public var groupMember: Bool?

        public var groupSource: Bool?

        public var memberType: String?

        public var networkInterfaceId: String?

        public var peerTransitRouterMulticastDomainId: String?

        public var resourceId: String?

        public var resourceOwnerId: Int64?

        public var resourceType: String?

        public var sourceType: String?

        public var status: String?

        public var transitRouterAttachmentId: String?

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
            if self.groupIpAddress != nil {
                map["GroupIpAddress"] = self.groupIpAddress!
            }
            if self.groupMember != nil {
                map["GroupMember"] = self.groupMember!
            }
            if self.groupSource != nil {
                map["GroupSource"] = self.groupSource!
            }
            if self.memberType != nil {
                map["MemberType"] = self.memberType!
            }
            if self.networkInterfaceId != nil {
                map["NetworkInterfaceId"] = self.networkInterfaceId!
            }
            if self.peerTransitRouterMulticastDomainId != nil {
                map["PeerTransitRouterMulticastDomainId"] = self.peerTransitRouterMulticastDomainId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceOwnerId != nil {
                map["ResourceOwnerId"] = self.resourceOwnerId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.transitRouterAttachmentId != nil {
                map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupIpAddress") {
                self.groupIpAddress = dict["GroupIpAddress"] as! String
            }
            if dict.keys.contains("GroupMember") {
                self.groupMember = dict["GroupMember"] as! Bool
            }
            if dict.keys.contains("GroupSource") {
                self.groupSource = dict["GroupSource"] as! Bool
            }
            if dict.keys.contains("MemberType") {
                self.memberType = dict["MemberType"] as! String
            }
            if dict.keys.contains("NetworkInterfaceId") {
                self.networkInterfaceId = dict["NetworkInterfaceId"] as! String
            }
            if dict.keys.contains("PeerTransitRouterMulticastDomainId") {
                self.peerTransitRouterMulticastDomainId = dict["PeerTransitRouterMulticastDomainId"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceOwnerId") {
                self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentId") {
                self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var transitRouterMulticastGroups: [ListTransitRouterMulticastGroupsResponseBody.TransitRouterMulticastGroups]?

    public override init() {
        super.init()
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
        if self.transitRouterMulticastGroups != nil {
            var tmp : [Any] = []
            for k in self.transitRouterMulticastGroups! {
                tmp.append(k.toMap())
            }
            map["TransitRouterMulticastGroups"] = tmp
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TransitRouterMulticastGroups") {
            self.transitRouterMulticastGroups = dict["TransitRouterMulticastGroups"] as! [ListTransitRouterMulticastGroupsResponseBody.TransitRouterMulticastGroups]
        }
    }
}

public class ListTransitRouterMulticastGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRouterMulticastGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRouterMulticastGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRouterPeerAttachmentsRequest : Tea.TeaModel {
    public var cenId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
    }
}

public class ListTransitRouterPeerAttachmentsResponseBody : Tea.TeaModel {
    public class TransitRouterAttachments : Tea.TeaModel {
        public var autoPublishRouteEnabled: Bool?

        public var bandwidth: Int32?

        public var bandwidthType: String?

        public var cenBandwidthPackageId: String?

        public var creationTime: String?

        public var geographicSpanId: String?

        public var peerTransitRouterId: String?

        public var peerTransitRouterOwnerId: Int64?

        public var peerTransitRouterRegionId: String?

        public var regionId: String?

        public var resourceType: String?

        public var status: String?

        public var transitRouterAttachmentDescription: String?

        public var transitRouterAttachmentId: String?

        public var transitRouterAttachmentName: String?

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
            if self.autoPublishRouteEnabled != nil {
                map["AutoPublishRouteEnabled"] = self.autoPublishRouteEnabled!
            }
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.bandwidthType != nil {
                map["BandwidthType"] = self.bandwidthType!
            }
            if self.cenBandwidthPackageId != nil {
                map["CenBandwidthPackageId"] = self.cenBandwidthPackageId!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.geographicSpanId != nil {
                map["GeographicSpanId"] = self.geographicSpanId!
            }
            if self.peerTransitRouterId != nil {
                map["PeerTransitRouterId"] = self.peerTransitRouterId!
            }
            if self.peerTransitRouterOwnerId != nil {
                map["PeerTransitRouterOwnerId"] = self.peerTransitRouterOwnerId!
            }
            if self.peerTransitRouterRegionId != nil {
                map["PeerTransitRouterRegionId"] = self.peerTransitRouterRegionId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.transitRouterAttachmentDescription != nil {
                map["TransitRouterAttachmentDescription"] = self.transitRouterAttachmentDescription!
            }
            if self.transitRouterAttachmentId != nil {
                map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
            }
            if self.transitRouterAttachmentName != nil {
                map["TransitRouterAttachmentName"] = self.transitRouterAttachmentName!
            }
            if self.transitRouterId != nil {
                map["TransitRouterId"] = self.transitRouterId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoPublishRouteEnabled") {
                self.autoPublishRouteEnabled = dict["AutoPublishRouteEnabled"] as! Bool
            }
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("BandwidthType") {
                self.bandwidthType = dict["BandwidthType"] as! String
            }
            if dict.keys.contains("CenBandwidthPackageId") {
                self.cenBandwidthPackageId = dict["CenBandwidthPackageId"] as! String
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("GeographicSpanId") {
                self.geographicSpanId = dict["GeographicSpanId"] as! String
            }
            if dict.keys.contains("PeerTransitRouterId") {
                self.peerTransitRouterId = dict["PeerTransitRouterId"] as! String
            }
            if dict.keys.contains("PeerTransitRouterOwnerId") {
                self.peerTransitRouterOwnerId = dict["PeerTransitRouterOwnerId"] as! Int64
            }
            if dict.keys.contains("PeerTransitRouterRegionId") {
                self.peerTransitRouterRegionId = dict["PeerTransitRouterRegionId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentDescription") {
                self.transitRouterAttachmentDescription = dict["TransitRouterAttachmentDescription"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentId") {
                self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentName") {
                self.transitRouterAttachmentName = dict["TransitRouterAttachmentName"] as! String
            }
            if dict.keys.contains("TransitRouterId") {
                self.transitRouterId = dict["TransitRouterId"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var transitRouterAttachments: [ListTransitRouterPeerAttachmentsResponseBody.TransitRouterAttachments]?

    public override init() {
        super.init()
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
        if self.transitRouterAttachments != nil {
            var tmp : [Any] = []
            for k in self.transitRouterAttachments! {
                tmp.append(k.toMap())
            }
            map["TransitRouterAttachments"] = tmp
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TransitRouterAttachments") {
            self.transitRouterAttachments = dict["TransitRouterAttachments"] as! [ListTransitRouterPeerAttachmentsResponseBody.TransitRouterAttachments]
        }
    }
}

public class ListTransitRouterPeerAttachmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRouterPeerAttachmentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRouterPeerAttachmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRouterPrefixListAssociationRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var ownerUid: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var prefixListId: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterId: String?

    public var transitRouterTableId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.ownerUid != nil {
            map["OwnerUid"] = self.ownerUid!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prefixListId != nil {
            map["PrefixListId"] = self.prefixListId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        if self.transitRouterTableId != nil {
            map["TransitRouterTableId"] = self.transitRouterTableId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("OwnerUid") {
            self.ownerUid = dict["OwnerUid"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrefixListId") {
            self.prefixListId = dict["PrefixListId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
        if dict.keys.contains("TransitRouterTableId") {
            self.transitRouterTableId = dict["TransitRouterTableId"] as! String
        }
    }
}

public class ListTransitRouterPrefixListAssociationResponseBody : Tea.TeaModel {
    public class PrefixLists : Tea.TeaModel {
        public var nextHop: String?

        public var nextHopInstanceId: String?

        public var nextHopType: String?

        public var ownerUid: Int64?

        public var prefixListId: String?

        public var status: String?

        public var transitRouterId: String?

        public var transitRouterTableId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nextHop != nil {
                map["NextHop"] = self.nextHop!
            }
            if self.nextHopInstanceId != nil {
                map["NextHopInstanceId"] = self.nextHopInstanceId!
            }
            if self.nextHopType != nil {
                map["NextHopType"] = self.nextHopType!
            }
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.prefixListId != nil {
                map["PrefixListId"] = self.prefixListId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.transitRouterId != nil {
                map["TransitRouterId"] = self.transitRouterId!
            }
            if self.transitRouterTableId != nil {
                map["TransitRouterTableId"] = self.transitRouterTableId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NextHop") {
                self.nextHop = dict["NextHop"] as! String
            }
            if dict.keys.contains("NextHopInstanceId") {
                self.nextHopInstanceId = dict["NextHopInstanceId"] as! String
            }
            if dict.keys.contains("NextHopType") {
                self.nextHopType = dict["NextHopType"] as! String
            }
            if dict.keys.contains("OwnerUid") {
                self.ownerUid = dict["OwnerUid"] as! Int64
            }
            if dict.keys.contains("PrefixListId") {
                self.prefixListId = dict["PrefixListId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TransitRouterId") {
                self.transitRouterId = dict["TransitRouterId"] as! String
            }
            if dict.keys.contains("TransitRouterTableId") {
                self.transitRouterTableId = dict["TransitRouterTableId"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var prefixLists: [ListTransitRouterPrefixListAssociationResponseBody.PrefixLists]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prefixLists != nil {
            var tmp : [Any] = []
            for k in self.prefixLists! {
                tmp.append(k.toMap())
            }
            map["PrefixLists"] = tmp
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
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrefixLists") {
            self.prefixLists = dict["PrefixLists"] as! [ListTransitRouterPrefixListAssociationResponseBody.PrefixLists]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTransitRouterPrefixListAssociationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRouterPrefixListAssociationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRouterPrefixListAssociationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRouterRouteEntriesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterRouteEntryDestinationCidrBlock: String?

    public var transitRouterRouteEntryIds: [String]?

    public var transitRouterRouteEntryNames: [String]?

    public var transitRouterRouteEntryStatus: String?

    public var transitRouterRouteTableId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterRouteEntryDestinationCidrBlock != nil {
            map["TransitRouterRouteEntryDestinationCidrBlock"] = self.transitRouterRouteEntryDestinationCidrBlock!
        }
        if self.transitRouterRouteEntryIds != nil {
            map["TransitRouterRouteEntryIds"] = self.transitRouterRouteEntryIds!
        }
        if self.transitRouterRouteEntryNames != nil {
            map["TransitRouterRouteEntryNames"] = self.transitRouterRouteEntryNames!
        }
        if self.transitRouterRouteEntryStatus != nil {
            map["TransitRouterRouteEntryStatus"] = self.transitRouterRouteEntryStatus!
        }
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterRouteEntryDestinationCidrBlock") {
            self.transitRouterRouteEntryDestinationCidrBlock = dict["TransitRouterRouteEntryDestinationCidrBlock"] as! String
        }
        if dict.keys.contains("TransitRouterRouteEntryIds") {
            self.transitRouterRouteEntryIds = dict["TransitRouterRouteEntryIds"] as! [String]
        }
        if dict.keys.contains("TransitRouterRouteEntryNames") {
            self.transitRouterRouteEntryNames = dict["TransitRouterRouteEntryNames"] as! [String]
        }
        if dict.keys.contains("TransitRouterRouteEntryStatus") {
            self.transitRouterRouteEntryStatus = dict["TransitRouterRouteEntryStatus"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
    }
}

public class ListTransitRouterRouteEntriesResponseBody : Tea.TeaModel {
    public class TransitRouterRouteEntries : Tea.TeaModel {
        public var createTime: String?

        public var transitRouterRouteEntryDescription: String?

        public var transitRouterRouteEntryDestinationCidrBlock: String?

        public var transitRouterRouteEntryId: String?

        public var transitRouterRouteEntryName: String?

        public var transitRouterRouteEntryNextHopId: String?

        public var transitRouterRouteEntryNextHopType: String?

        public var transitRouterRouteEntryStatus: String?

        public var transitRouterRouteEntryType: String?

        public override init() {
            super.init()
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
            if self.transitRouterRouteEntryDescription != nil {
                map["TransitRouterRouteEntryDescription"] = self.transitRouterRouteEntryDescription!
            }
            if self.transitRouterRouteEntryDestinationCidrBlock != nil {
                map["TransitRouterRouteEntryDestinationCidrBlock"] = self.transitRouterRouteEntryDestinationCidrBlock!
            }
            if self.transitRouterRouteEntryId != nil {
                map["TransitRouterRouteEntryId"] = self.transitRouterRouteEntryId!
            }
            if self.transitRouterRouteEntryName != nil {
                map["TransitRouterRouteEntryName"] = self.transitRouterRouteEntryName!
            }
            if self.transitRouterRouteEntryNextHopId != nil {
                map["TransitRouterRouteEntryNextHopId"] = self.transitRouterRouteEntryNextHopId!
            }
            if self.transitRouterRouteEntryNextHopType != nil {
                map["TransitRouterRouteEntryNextHopType"] = self.transitRouterRouteEntryNextHopType!
            }
            if self.transitRouterRouteEntryStatus != nil {
                map["TransitRouterRouteEntryStatus"] = self.transitRouterRouteEntryStatus!
            }
            if self.transitRouterRouteEntryType != nil {
                map["TransitRouterRouteEntryType"] = self.transitRouterRouteEntryType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("TransitRouterRouteEntryDescription") {
                self.transitRouterRouteEntryDescription = dict["TransitRouterRouteEntryDescription"] as! String
            }
            if dict.keys.contains("TransitRouterRouteEntryDestinationCidrBlock") {
                self.transitRouterRouteEntryDestinationCidrBlock = dict["TransitRouterRouteEntryDestinationCidrBlock"] as! String
            }
            if dict.keys.contains("TransitRouterRouteEntryId") {
                self.transitRouterRouteEntryId = dict["TransitRouterRouteEntryId"] as! String
            }
            if dict.keys.contains("TransitRouterRouteEntryName") {
                self.transitRouterRouteEntryName = dict["TransitRouterRouteEntryName"] as! String
            }
            if dict.keys.contains("TransitRouterRouteEntryNextHopId") {
                self.transitRouterRouteEntryNextHopId = dict["TransitRouterRouteEntryNextHopId"] as! String
            }
            if dict.keys.contains("TransitRouterRouteEntryNextHopType") {
                self.transitRouterRouteEntryNextHopType = dict["TransitRouterRouteEntryNextHopType"] as! String
            }
            if dict.keys.contains("TransitRouterRouteEntryStatus") {
                self.transitRouterRouteEntryStatus = dict["TransitRouterRouteEntryStatus"] as! String
            }
            if dict.keys.contains("TransitRouterRouteEntryType") {
                self.transitRouterRouteEntryType = dict["TransitRouterRouteEntryType"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var transitRouterRouteEntries: [ListTransitRouterRouteEntriesResponseBody.TransitRouterRouteEntries]?

    public override init() {
        super.init()
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
        if self.transitRouterRouteEntries != nil {
            var tmp : [Any] = []
            for k in self.transitRouterRouteEntries! {
                tmp.append(k.toMap())
            }
            map["TransitRouterRouteEntries"] = tmp
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TransitRouterRouteEntries") {
            self.transitRouterRouteEntries = dict["TransitRouterRouteEntries"] as! [ListTransitRouterRouteEntriesResponseBody.TransitRouterRouteEntries]
        }
    }
}

public class ListTransitRouterRouteEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRouterRouteEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRouterRouteEntriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRouterRouteTableAssociationsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public var transitRouterRouteTableId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
    }
}

public class ListTransitRouterRouteTableAssociationsResponseBody : Tea.TeaModel {
    public class TransitRouterAssociations : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

        public var status: String?

        public var transitRouterAttachmentId: String?

        public var transitRouterRouteTableId: String?

        public override init() {
            super.init()
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
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.transitRouterAttachmentId != nil {
                map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
            }
            if self.transitRouterRouteTableId != nil {
                map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
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
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentId") {
                self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
            }
            if dict.keys.contains("TransitRouterRouteTableId") {
                self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var transitRouterAssociations: [ListTransitRouterRouteTableAssociationsResponseBody.TransitRouterAssociations]?

    public override init() {
        super.init()
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
        if self.transitRouterAssociations != nil {
            var tmp : [Any] = []
            for k in self.transitRouterAssociations! {
                tmp.append(k.toMap())
            }
            map["TransitRouterAssociations"] = tmp
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TransitRouterAssociations") {
            self.transitRouterAssociations = dict["TransitRouterAssociations"] as! [ListTransitRouterRouteTableAssociationsResponseBody.TransitRouterAssociations]
        }
    }
}

public class ListTransitRouterRouteTableAssociationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRouterRouteTableAssociationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRouterRouteTableAssociationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRouterRouteTablePropagationsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public var transitRouterRouteTableId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
    }
}

public class ListTransitRouterRouteTablePropagationsResponseBody : Tea.TeaModel {
    public class TransitRouterPropagations : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

        public var status: String?

        public var transitRouterAttachmentId: String?

        public var transitRouterRouteTableId: String?

        public override init() {
            super.init()
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
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.transitRouterAttachmentId != nil {
                map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
            }
            if self.transitRouterRouteTableId != nil {
                map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
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
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentId") {
                self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
            }
            if dict.keys.contains("TransitRouterRouteTableId") {
                self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var transitRouterPropagations: [ListTransitRouterRouteTablePropagationsResponseBody.TransitRouterPropagations]?

    public override init() {
        super.init()
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
        if self.transitRouterPropagations != nil {
            var tmp : [Any] = []
            for k in self.transitRouterPropagations! {
                tmp.append(k.toMap())
            }
            map["TransitRouterPropagations"] = tmp
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TransitRouterPropagations") {
            self.transitRouterPropagations = dict["TransitRouterPropagations"] as! [ListTransitRouterRouteTablePropagationsResponseBody.TransitRouterPropagations]
        }
    }
}

public class ListTransitRouterRouteTablePropagationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRouterRouteTablePropagationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRouterRouteTablePropagationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRouterRouteTablesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterId: String?

    public var transitRouterRouteTableIds: [String]?

    public var transitRouterRouteTableNames: [String]?

    public var transitRouterRouteTableStatus: String?

    public var transitRouterRouteTableType: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        if self.transitRouterRouteTableIds != nil {
            map["TransitRouterRouteTableIds"] = self.transitRouterRouteTableIds!
        }
        if self.transitRouterRouteTableNames != nil {
            map["TransitRouterRouteTableNames"] = self.transitRouterRouteTableNames!
        }
        if self.transitRouterRouteTableStatus != nil {
            map["TransitRouterRouteTableStatus"] = self.transitRouterRouteTableStatus!
        }
        if self.transitRouterRouteTableType != nil {
            map["TransitRouterRouteTableType"] = self.transitRouterRouteTableType!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableIds") {
            self.transitRouterRouteTableIds = dict["TransitRouterRouteTableIds"] as! [String]
        }
        if dict.keys.contains("TransitRouterRouteTableNames") {
            self.transitRouterRouteTableNames = dict["TransitRouterRouteTableNames"] as! [String]
        }
        if dict.keys.contains("TransitRouterRouteTableStatus") {
            self.transitRouterRouteTableStatus = dict["TransitRouterRouteTableStatus"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableType") {
            self.transitRouterRouteTableType = dict["TransitRouterRouteTableType"] as! String
        }
    }
}

public class ListTransitRouterRouteTablesResponseBody : Tea.TeaModel {
    public class TransitRouterRouteTables : Tea.TeaModel {
        public var createTime: String?

        public var transitRouterRouteTableDescription: String?

        public var transitRouterRouteTableId: String?

        public var transitRouterRouteTableName: String?

        public var transitRouterRouteTableStatus: String?

        public var transitRouterRouteTableType: String?

        public override init() {
            super.init()
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
            if self.transitRouterRouteTableDescription != nil {
                map["TransitRouterRouteTableDescription"] = self.transitRouterRouteTableDescription!
            }
            if self.transitRouterRouteTableId != nil {
                map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
            }
            if self.transitRouterRouteTableName != nil {
                map["TransitRouterRouteTableName"] = self.transitRouterRouteTableName!
            }
            if self.transitRouterRouteTableStatus != nil {
                map["TransitRouterRouteTableStatus"] = self.transitRouterRouteTableStatus!
            }
            if self.transitRouterRouteTableType != nil {
                map["TransitRouterRouteTableType"] = self.transitRouterRouteTableType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("TransitRouterRouteTableDescription") {
                self.transitRouterRouteTableDescription = dict["TransitRouterRouteTableDescription"] as! String
            }
            if dict.keys.contains("TransitRouterRouteTableId") {
                self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
            }
            if dict.keys.contains("TransitRouterRouteTableName") {
                self.transitRouterRouteTableName = dict["TransitRouterRouteTableName"] as! String
            }
            if dict.keys.contains("TransitRouterRouteTableStatus") {
                self.transitRouterRouteTableStatus = dict["TransitRouterRouteTableStatus"] as! String
            }
            if dict.keys.contains("TransitRouterRouteTableType") {
                self.transitRouterRouteTableType = dict["TransitRouterRouteTableType"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var transitRouterRouteTables: [ListTransitRouterRouteTablesResponseBody.TransitRouterRouteTables]?

    public override init() {
        super.init()
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
        if self.transitRouterRouteTables != nil {
            var tmp : [Any] = []
            for k in self.transitRouterRouteTables! {
                tmp.append(k.toMap())
            }
            map["TransitRouterRouteTables"] = tmp
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TransitRouterRouteTables") {
            self.transitRouterRouteTables = dict["TransitRouterRouteTables"] as! [ListTransitRouterRouteTablesResponseBody.TransitRouterRouteTables]
        }
    }
}

public class ListTransitRouterRouteTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRouterRouteTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRouterRouteTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRouterVbrAttachmentsRequest : Tea.TeaModel {
    public var cenId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
    }
}

public class ListTransitRouterVbrAttachmentsResponseBody : Tea.TeaModel {
    public class TransitRouterAttachments : Tea.TeaModel {
        public var autoPublishRouteEnabled: Bool?

        public var creationTime: String?

        public var resourceType: String?

        public var status: String?

        public var transitRouterAttachmentDescription: String?

        public var transitRouterAttachmentId: String?

        public var transitRouterAttachmentName: String?

        public var transitRouterId: String?

        public var vbrId: String?

        public var vbrOwnerId: Int64?

        public var vbrRegionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoPublishRouteEnabled != nil {
                map["AutoPublishRouteEnabled"] = self.autoPublishRouteEnabled!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.transitRouterAttachmentDescription != nil {
                map["TransitRouterAttachmentDescription"] = self.transitRouterAttachmentDescription!
            }
            if self.transitRouterAttachmentId != nil {
                map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
            }
            if self.transitRouterAttachmentName != nil {
                map["TransitRouterAttachmentName"] = self.transitRouterAttachmentName!
            }
            if self.transitRouterId != nil {
                map["TransitRouterId"] = self.transitRouterId!
            }
            if self.vbrId != nil {
                map["VbrId"] = self.vbrId!
            }
            if self.vbrOwnerId != nil {
                map["VbrOwnerId"] = self.vbrOwnerId!
            }
            if self.vbrRegionId != nil {
                map["VbrRegionId"] = self.vbrRegionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoPublishRouteEnabled") {
                self.autoPublishRouteEnabled = dict["AutoPublishRouteEnabled"] as! Bool
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentDescription") {
                self.transitRouterAttachmentDescription = dict["TransitRouterAttachmentDescription"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentId") {
                self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentName") {
                self.transitRouterAttachmentName = dict["TransitRouterAttachmentName"] as! String
            }
            if dict.keys.contains("TransitRouterId") {
                self.transitRouterId = dict["TransitRouterId"] as! String
            }
            if dict.keys.contains("VbrId") {
                self.vbrId = dict["VbrId"] as! String
            }
            if dict.keys.contains("VbrOwnerId") {
                self.vbrOwnerId = dict["VbrOwnerId"] as! Int64
            }
            if dict.keys.contains("VbrRegionId") {
                self.vbrRegionId = dict["VbrRegionId"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var transitRouterAttachments: [ListTransitRouterVbrAttachmentsResponseBody.TransitRouterAttachments]?

    public override init() {
        super.init()
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
        if self.transitRouterAttachments != nil {
            var tmp : [Any] = []
            for k in self.transitRouterAttachments! {
                tmp.append(k.toMap())
            }
            map["TransitRouterAttachments"] = tmp
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TransitRouterAttachments") {
            self.transitRouterAttachments = dict["TransitRouterAttachments"] as! [ListTransitRouterVbrAttachmentsResponseBody.TransitRouterAttachments]
        }
    }
}

public class ListTransitRouterVbrAttachmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRouterVbrAttachmentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRouterVbrAttachmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRouterVpcAttachmentsRequest : Tea.TeaModel {
    public var cenId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
    }
}

public class ListTransitRouterVpcAttachmentsResponseBody : Tea.TeaModel {
    public class TransitRouterAttachments : Tea.TeaModel {
        public class ZoneMappings : Tea.TeaModel {
            public var networkInterfaceId: String?

            public var vSwitchId: String?

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
                if self.networkInterfaceId != nil {
                    map["NetworkInterfaceId"] = self.networkInterfaceId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NetworkInterfaceId") {
                    self.networkInterfaceId = dict["NetworkInterfaceId"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var chargeType: String?

        public var creationTime: String?

        public var resourceType: String?

        public var status: String?

        public var transitRouterAttachmentDescription: String?

        public var transitRouterAttachmentId: String?

        public var transitRouterAttachmentName: String?

        public var transitRouterId: String?

        public var vpcId: String?

        public var vpcOwnerId: Int64?

        public var vpcRegionId: String?

        public var zoneMappings: [ListTransitRouterVpcAttachmentsResponseBody.TransitRouterAttachments.ZoneMappings]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.transitRouterAttachmentDescription != nil {
                map["TransitRouterAttachmentDescription"] = self.transitRouterAttachmentDescription!
            }
            if self.transitRouterAttachmentId != nil {
                map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
            }
            if self.transitRouterAttachmentName != nil {
                map["TransitRouterAttachmentName"] = self.transitRouterAttachmentName!
            }
            if self.transitRouterId != nil {
                map["TransitRouterId"] = self.transitRouterId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcOwnerId != nil {
                map["VpcOwnerId"] = self.vpcOwnerId!
            }
            if self.vpcRegionId != nil {
                map["VpcRegionId"] = self.vpcRegionId!
            }
            if self.zoneMappings != nil {
                var tmp : [Any] = []
                for k in self.zoneMappings! {
                    tmp.append(k.toMap())
                }
                map["ZoneMappings"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentDescription") {
                self.transitRouterAttachmentDescription = dict["TransitRouterAttachmentDescription"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentId") {
                self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentName") {
                self.transitRouterAttachmentName = dict["TransitRouterAttachmentName"] as! String
            }
            if dict.keys.contains("TransitRouterId") {
                self.transitRouterId = dict["TransitRouterId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcOwnerId") {
                self.vpcOwnerId = dict["VpcOwnerId"] as! Int64
            }
            if dict.keys.contains("VpcRegionId") {
                self.vpcRegionId = dict["VpcRegionId"] as! String
            }
            if dict.keys.contains("ZoneMappings") {
                self.zoneMappings = dict["ZoneMappings"] as! [ListTransitRouterVpcAttachmentsResponseBody.TransitRouterAttachments.ZoneMappings]
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var transitRouterAttachments: [ListTransitRouterVpcAttachmentsResponseBody.TransitRouterAttachments]?

    public override init() {
        super.init()
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
        if self.transitRouterAttachments != nil {
            var tmp : [Any] = []
            for k in self.transitRouterAttachments! {
                tmp.append(k.toMap())
            }
            map["TransitRouterAttachments"] = tmp
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TransitRouterAttachments") {
            self.transitRouterAttachments = dict["TransitRouterAttachments"] as! [ListTransitRouterVpcAttachmentsResponseBody.TransitRouterAttachments]
        }
    }
}

public class ListTransitRouterVpcAttachmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRouterVpcAttachmentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRouterVpcAttachmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRouterVpnAttachmentsRequest : Tea.TeaModel {
    public var cenId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
    }
}

public class ListTransitRouterVpnAttachmentsResponseBody : Tea.TeaModel {
    public class TransitRouterAttachments : Tea.TeaModel {
        public class Zones : Tea.TeaModel {
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
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var autoPublishRouteEnabled: Bool?

        public var creationTime: String?

        public var resourceType: Int32?

        public var status: String?

        public var transitRouterAttachmentDescription: String?

        public var transitRouterAttachmentId: String?

        public var transitRouterAttachmentName: String?

        public var transitRouterId: String?

        public var vpnId: String?

        public var vpnOwnerId: Int64?

        public var vpnRegionId: String?

        public var zones: [ListTransitRouterVpnAttachmentsResponseBody.TransitRouterAttachments.Zones]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoPublishRouteEnabled != nil {
                map["AutoPublishRouteEnabled"] = self.autoPublishRouteEnabled!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.transitRouterAttachmentDescription != nil {
                map["TransitRouterAttachmentDescription"] = self.transitRouterAttachmentDescription!
            }
            if self.transitRouterAttachmentId != nil {
                map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
            }
            if self.transitRouterAttachmentName != nil {
                map["TransitRouterAttachmentName"] = self.transitRouterAttachmentName!
            }
            if self.transitRouterId != nil {
                map["TransitRouterId"] = self.transitRouterId!
            }
            if self.vpnId != nil {
                map["VpnId"] = self.vpnId!
            }
            if self.vpnOwnerId != nil {
                map["VpnOwnerId"] = self.vpnOwnerId!
            }
            if self.vpnRegionId != nil {
                map["VpnRegionId"] = self.vpnRegionId!
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
            if dict.keys.contains("AutoPublishRouteEnabled") {
                self.autoPublishRouteEnabled = dict["AutoPublishRouteEnabled"] as! Bool
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentDescription") {
                self.transitRouterAttachmentDescription = dict["TransitRouterAttachmentDescription"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentId") {
                self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
            }
            if dict.keys.contains("TransitRouterAttachmentName") {
                self.transitRouterAttachmentName = dict["TransitRouterAttachmentName"] as! String
            }
            if dict.keys.contains("TransitRouterId") {
                self.transitRouterId = dict["TransitRouterId"] as! String
            }
            if dict.keys.contains("VpnId") {
                self.vpnId = dict["VpnId"] as! String
            }
            if dict.keys.contains("VpnOwnerId") {
                self.vpnOwnerId = dict["VpnOwnerId"] as! Int64
            }
            if dict.keys.contains("VpnRegionId") {
                self.vpnRegionId = dict["VpnRegionId"] as! String
            }
            if dict.keys.contains("Zones") {
                self.zones = dict["Zones"] as! [ListTransitRouterVpnAttachmentsResponseBody.TransitRouterAttachments.Zones]
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var transitRouterAttachments: [ListTransitRouterVpnAttachmentsResponseBody.TransitRouterAttachments]?

    public override init() {
        super.init()
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
        if self.transitRouterAttachments != nil {
            var tmp : [Any] = []
            for k in self.transitRouterAttachments! {
                tmp.append(k.toMap())
            }
            map["TransitRouterAttachments"] = tmp
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TransitRouterAttachments") {
            self.transitRouterAttachments = dict["TransitRouterAttachments"] as! [ListTransitRouterVpnAttachmentsResponseBody.TransitRouterAttachments]
        }
    }
}

public class ListTransitRouterVpnAttachmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRouterVpnAttachmentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRouterVpnAttachmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTransitRoutersRequest : Tea.TeaModel {
    public var cenId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
    }
}

public class ListTransitRoutersResponseBody : Tea.TeaModel {
    public class TransitRouters : Tea.TeaModel {
        public var aliUid: Int64?

        public var cenId: String?

        public var creationTime: String?

        public var regionId: String?

        public var status: String?

        public var supportMulticast: Bool?

        public var transitRouterDescription: String?

        public var transitRouterId: String?

        public var transitRouterName: String?

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
            if self.cenId != nil {
                map["CenId"] = self.cenId!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supportMulticast != nil {
                map["SupportMulticast"] = self.supportMulticast!
            }
            if self.transitRouterDescription != nil {
                map["TransitRouterDescription"] = self.transitRouterDescription!
            }
            if self.transitRouterId != nil {
                map["TransitRouterId"] = self.transitRouterId!
            }
            if self.transitRouterName != nil {
                map["TransitRouterName"] = self.transitRouterName!
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
            if dict.keys.contains("CenId") {
                self.cenId = dict["CenId"] as! String
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SupportMulticast") {
                self.supportMulticast = dict["SupportMulticast"] as! Bool
            }
            if dict.keys.contains("TransitRouterDescription") {
                self.transitRouterDescription = dict["TransitRouterDescription"] as! String
            }
            if dict.keys.contains("TransitRouterId") {
                self.transitRouterId = dict["TransitRouterId"] as! String
            }
            if dict.keys.contains("TransitRouterName") {
                self.transitRouterName = dict["TransitRouterName"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var transitRouters: [ListTransitRoutersResponseBody.TransitRouters]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.transitRouters != nil {
            var tmp : [Any] = []
            for k in self.transitRouters! {
                tmp.append(k.toMap())
            }
            map["TransitRouters"] = tmp
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TransitRouters") {
            self.transitRouters = dict["TransitRouters"] as! [ListTransitRoutersResponseBody.TransitRouters]
        }
    }
}

public class ListTransitRoutersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTransitRoutersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTransitRoutersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyCenAttributeRequest : Tea.TeaModel {
    public var cenId: String?

    public var description_: String?

    public var name: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var protectionLevel: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.protectionLevel != nil {
            map["ProtectionLevel"] = self.protectionLevel!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProtectionLevel") {
            self.protectionLevel = dict["ProtectionLevel"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyCenAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyCenAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCenAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyCenAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyCenBandwidthPackageAttributeRequest : Tea.TeaModel {
    public var cenBandwidthPackageId: String?

    public var description_: String?

    public var name: String?

    public var ownerAccount: String?

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
        if self.cenBandwidthPackageId != nil {
            map["CenBandwidthPackageId"] = self.cenBandwidthPackageId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenBandwidthPackageId") {
            self.cenBandwidthPackageId = dict["CenBandwidthPackageId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyCenBandwidthPackageAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyCenBandwidthPackageAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCenBandwidthPackageAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyCenBandwidthPackageAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyCenBandwidthPackageSpecRequest : Tea.TeaModel {
    public var bandwidth: Int32?

    public var cenBandwidthPackageId: String?

    public var ownerAccount: String?

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
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.cenBandwidthPackageId != nil {
            map["CenBandwidthPackageId"] = self.cenBandwidthPackageId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("CenBandwidthPackageId") {
            self.cenBandwidthPackageId = dict["CenBandwidthPackageId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyCenBandwidthPackageSpecResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyCenBandwidthPackageSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCenBandwidthPackageSpecResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyCenBandwidthPackageSpecResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyCenRouteMapRequest : Tea.TeaModel {
    public var asPathMatchMode: String?

    public var cenId: String?

    public var cenRegionId: String?

    public var cidrMatchMode: String?

    public var communityMatchMode: String?

    public var communityOperateMode: String?

    public var description_: String?

    public var destinationChildInstanceTypes: [String]?

    public var destinationCidrBlocks: [String]?

    public var destinationInstanceIds: [String]?

    public var destinationInstanceIdsReverseMatch: Bool?

    public var destinationRouteTableIds: [String]?

    public var mapResult: String?

    public var matchAddressType: String?

    public var matchAsns: [Int32]?

    public var matchCommunitySet: [String]?

    public var nextPriority: Int32?

    public var operateCommunitySet: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var preference: Int32?

    public var prependAsPath: [Int64]?

    public var priority: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var routeMapId: String?

    public var routeTypes: [String]?

    public var sourceChildInstanceTypes: [String]?

    public var sourceInstanceIds: [String]?

    public var sourceInstanceIdsReverseMatch: Bool?

    public var sourceRegionIds: [String]?

    public var sourceRouteTableIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asPathMatchMode != nil {
            map["AsPathMatchMode"] = self.asPathMatchMode!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.cenRegionId != nil {
            map["CenRegionId"] = self.cenRegionId!
        }
        if self.cidrMatchMode != nil {
            map["CidrMatchMode"] = self.cidrMatchMode!
        }
        if self.communityMatchMode != nil {
            map["CommunityMatchMode"] = self.communityMatchMode!
        }
        if self.communityOperateMode != nil {
            map["CommunityOperateMode"] = self.communityOperateMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destinationChildInstanceTypes != nil {
            map["DestinationChildInstanceTypes"] = self.destinationChildInstanceTypes!
        }
        if self.destinationCidrBlocks != nil {
            map["DestinationCidrBlocks"] = self.destinationCidrBlocks!
        }
        if self.destinationInstanceIds != nil {
            map["DestinationInstanceIds"] = self.destinationInstanceIds!
        }
        if self.destinationInstanceIdsReverseMatch != nil {
            map["DestinationInstanceIdsReverseMatch"] = self.destinationInstanceIdsReverseMatch!
        }
        if self.destinationRouteTableIds != nil {
            map["DestinationRouteTableIds"] = self.destinationRouteTableIds!
        }
        if self.mapResult != nil {
            map["MapResult"] = self.mapResult!
        }
        if self.matchAddressType != nil {
            map["MatchAddressType"] = self.matchAddressType!
        }
        if self.matchAsns != nil {
            map["MatchAsns"] = self.matchAsns!
        }
        if self.matchCommunitySet != nil {
            map["MatchCommunitySet"] = self.matchCommunitySet!
        }
        if self.nextPriority != nil {
            map["NextPriority"] = self.nextPriority!
        }
        if self.operateCommunitySet != nil {
            map["OperateCommunitySet"] = self.operateCommunitySet!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.preference != nil {
            map["Preference"] = self.preference!
        }
        if self.prependAsPath != nil {
            map["PrependAsPath"] = self.prependAsPath!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.routeMapId != nil {
            map["RouteMapId"] = self.routeMapId!
        }
        if self.routeTypes != nil {
            map["RouteTypes"] = self.routeTypes!
        }
        if self.sourceChildInstanceTypes != nil {
            map["SourceChildInstanceTypes"] = self.sourceChildInstanceTypes!
        }
        if self.sourceInstanceIds != nil {
            map["SourceInstanceIds"] = self.sourceInstanceIds!
        }
        if self.sourceInstanceIdsReverseMatch != nil {
            map["SourceInstanceIdsReverseMatch"] = self.sourceInstanceIdsReverseMatch!
        }
        if self.sourceRegionIds != nil {
            map["SourceRegionIds"] = self.sourceRegionIds!
        }
        if self.sourceRouteTableIds != nil {
            map["SourceRouteTableIds"] = self.sourceRouteTableIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AsPathMatchMode") {
            self.asPathMatchMode = dict["AsPathMatchMode"] as! String
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CenRegionId") {
            self.cenRegionId = dict["CenRegionId"] as! String
        }
        if dict.keys.contains("CidrMatchMode") {
            self.cidrMatchMode = dict["CidrMatchMode"] as! String
        }
        if dict.keys.contains("CommunityMatchMode") {
            self.communityMatchMode = dict["CommunityMatchMode"] as! String
        }
        if dict.keys.contains("CommunityOperateMode") {
            self.communityOperateMode = dict["CommunityOperateMode"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestinationChildInstanceTypes") {
            self.destinationChildInstanceTypes = dict["DestinationChildInstanceTypes"] as! [String]
        }
        if dict.keys.contains("DestinationCidrBlocks") {
            self.destinationCidrBlocks = dict["DestinationCidrBlocks"] as! [String]
        }
        if dict.keys.contains("DestinationInstanceIds") {
            self.destinationInstanceIds = dict["DestinationInstanceIds"] as! [String]
        }
        if dict.keys.contains("DestinationInstanceIdsReverseMatch") {
            self.destinationInstanceIdsReverseMatch = dict["DestinationInstanceIdsReverseMatch"] as! Bool
        }
        if dict.keys.contains("DestinationRouteTableIds") {
            self.destinationRouteTableIds = dict["DestinationRouteTableIds"] as! [String]
        }
        if dict.keys.contains("MapResult") {
            self.mapResult = dict["MapResult"] as! String
        }
        if dict.keys.contains("MatchAddressType") {
            self.matchAddressType = dict["MatchAddressType"] as! String
        }
        if dict.keys.contains("MatchAsns") {
            self.matchAsns = dict["MatchAsns"] as! [Int32]
        }
        if dict.keys.contains("MatchCommunitySet") {
            self.matchCommunitySet = dict["MatchCommunitySet"] as! [String]
        }
        if dict.keys.contains("NextPriority") {
            self.nextPriority = dict["NextPriority"] as! Int32
        }
        if dict.keys.contains("OperateCommunitySet") {
            self.operateCommunitySet = dict["OperateCommunitySet"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Preference") {
            self.preference = dict["Preference"] as! Int32
        }
        if dict.keys.contains("PrependAsPath") {
            self.prependAsPath = dict["PrependAsPath"] as! [Int64]
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RouteMapId") {
            self.routeMapId = dict["RouteMapId"] as! String
        }
        if dict.keys.contains("RouteTypes") {
            self.routeTypes = dict["RouteTypes"] as! [String]
        }
        if dict.keys.contains("SourceChildInstanceTypes") {
            self.sourceChildInstanceTypes = dict["SourceChildInstanceTypes"] as! [String]
        }
        if dict.keys.contains("SourceInstanceIds") {
            self.sourceInstanceIds = dict["SourceInstanceIds"] as! [String]
        }
        if dict.keys.contains("SourceInstanceIdsReverseMatch") {
            self.sourceInstanceIdsReverseMatch = dict["SourceInstanceIdsReverseMatch"] as! Bool
        }
        if dict.keys.contains("SourceRegionIds") {
            self.sourceRegionIds = dict["SourceRegionIds"] as! [String]
        }
        if dict.keys.contains("SourceRouteTableIds") {
            self.sourceRouteTableIds = dict["SourceRouteTableIds"] as! [String]
        }
    }
}

public class ModifyCenRouteMapResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyCenRouteMapResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCenRouteMapResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyCenRouteMapResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyFlowLogAttributeRequest : Tea.TeaModel {
    public var cenId: String?

    public var clientToken: String?

    public var description_: String?

    public var flowLogId: String?

    public var flowLogName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.flowLogId != nil {
            map["FlowLogId"] = self.flowLogId!
        }
        if self.flowLogName != nil {
            map["FlowLogName"] = self.flowLogName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FlowLogId") {
            self.flowLogId = dict["FlowLogId"] as! String
        }
        if dict.keys.contains("FlowLogName") {
            self.flowLogName = dict["FlowLogName"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyFlowLogAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class ModifyFlowLogAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFlowLogAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyFlowLogAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTransitRouterMulticastDomainRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterMulticastDomainDescription: String?

    public var transitRouterMulticastDomainId: String?

    public var transitRouterMulticastDomainName: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterMulticastDomainDescription != nil {
            map["TransitRouterMulticastDomainDescription"] = self.transitRouterMulticastDomainDescription!
        }
        if self.transitRouterMulticastDomainId != nil {
            map["TransitRouterMulticastDomainId"] = self.transitRouterMulticastDomainId!
        }
        if self.transitRouterMulticastDomainName != nil {
            map["TransitRouterMulticastDomainName"] = self.transitRouterMulticastDomainName!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterMulticastDomainDescription") {
            self.transitRouterMulticastDomainDescription = dict["TransitRouterMulticastDomainDescription"] as! String
        }
        if dict.keys.contains("TransitRouterMulticastDomainId") {
            self.transitRouterMulticastDomainId = dict["TransitRouterMulticastDomainId"] as! String
        }
        if dict.keys.contains("TransitRouterMulticastDomainName") {
            self.transitRouterMulticastDomainName = dict["TransitRouterMulticastDomainName"] as! String
        }
    }
}

public class ModifyTransitRouterMulticastDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyTransitRouterMulticastDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTransitRouterMulticastDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyTransitRouterMulticastDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveResourceGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var newResourceGroupId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if dict.keys.contains("NewResourceGroupId") {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
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
        if dict.keys.contains("RequestId") {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = MoveResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenTransitRouterServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerAccount: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class OpenTransitRouterServiceResponseBody : Tea.TeaModel {
    public var orderId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenTransitRouterServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenTransitRouterServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = OpenTransitRouterServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishRouteEntriesRequest : Tea.TeaModel {
    public var cenId: String?

    public var childInstanceId: String?

    public var childInstanceRegionId: String?

    public var childInstanceRouteTableId: String?

    public var childInstanceType: String?

    public var destinationCidrBlock: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.childInstanceId != nil {
            map["ChildInstanceId"] = self.childInstanceId!
        }
        if self.childInstanceRegionId != nil {
            map["ChildInstanceRegionId"] = self.childInstanceRegionId!
        }
        if self.childInstanceRouteTableId != nil {
            map["ChildInstanceRouteTableId"] = self.childInstanceRouteTableId!
        }
        if self.childInstanceType != nil {
            map["ChildInstanceType"] = self.childInstanceType!
        }
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ChildInstanceId") {
            self.childInstanceId = dict["ChildInstanceId"] as! String
        }
        if dict.keys.contains("ChildInstanceRegionId") {
            self.childInstanceRegionId = dict["ChildInstanceRegionId"] as! String
        }
        if dict.keys.contains("ChildInstanceRouteTableId") {
            self.childInstanceRouteTableId = dict["ChildInstanceRouteTableId"] as! String
        }
        if dict.keys.contains("ChildInstanceType") {
            self.childInstanceType = dict["ChildInstanceType"] as! String
        }
        if dict.keys.contains("DestinationCidrBlock") {
            self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class PublishRouteEntriesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class PublishRouteEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishRouteEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PublishRouteEntriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RegisterTransitRouterMulticastGroupMembersRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var groupIpAddress: String?

    public var networkInterfaceIds: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var peerTransitRouterMulticastDomains: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterMulticastDomainId: String?

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
        if self.groupIpAddress != nil {
            map["GroupIpAddress"] = self.groupIpAddress!
        }
        if self.networkInterfaceIds != nil {
            map["NetworkInterfaceIds"] = self.networkInterfaceIds!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.peerTransitRouterMulticastDomains != nil {
            map["PeerTransitRouterMulticastDomains"] = self.peerTransitRouterMulticastDomains!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterMulticastDomainId != nil {
            map["TransitRouterMulticastDomainId"] = self.transitRouterMulticastDomainId!
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
        if dict.keys.contains("GroupIpAddress") {
            self.groupIpAddress = dict["GroupIpAddress"] as! String
        }
        if dict.keys.contains("NetworkInterfaceIds") {
            self.networkInterfaceIds = dict["NetworkInterfaceIds"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PeerTransitRouterMulticastDomains") {
            self.peerTransitRouterMulticastDomains = dict["PeerTransitRouterMulticastDomains"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterMulticastDomainId") {
            self.transitRouterMulticastDomainId = dict["TransitRouterMulticastDomainId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class RegisterTransitRouterMulticastGroupMembersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RegisterTransitRouterMulticastGroupMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterTransitRouterMulticastGroupMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RegisterTransitRouterMulticastGroupMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RegisterTransitRouterMulticastGroupSourcesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var groupIpAddress: String?

    public var networkInterfaceIds: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterMulticastDomainId: String?

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
        if self.groupIpAddress != nil {
            map["GroupIpAddress"] = self.groupIpAddress!
        }
        if self.networkInterfaceIds != nil {
            map["NetworkInterfaceIds"] = self.networkInterfaceIds!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterMulticastDomainId != nil {
            map["TransitRouterMulticastDomainId"] = self.transitRouterMulticastDomainId!
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
        if dict.keys.contains("GroupIpAddress") {
            self.groupIpAddress = dict["GroupIpAddress"] as! String
        }
        if dict.keys.contains("NetworkInterfaceIds") {
            self.networkInterfaceIds = dict["NetworkInterfaceIds"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterMulticastDomainId") {
            self.transitRouterMulticastDomainId = dict["TransitRouterMulticastDomainId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class RegisterTransitRouterMulticastGroupSourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RegisterTransitRouterMulticastGroupSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterTransitRouterMulticastGroupSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RegisterTransitRouterMulticastGroupSourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveTrafficMatchRuleFromTrafficMarkingPolicyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trafficMarkRuleIds: [String]?

    public var trafficMarkingPolicyId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.trafficMarkRuleIds != nil {
            map["TrafficMarkRuleIds"] = self.trafficMarkRuleIds!
        }
        if self.trafficMarkingPolicyId != nil {
            map["TrafficMarkingPolicyId"] = self.trafficMarkingPolicyId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TrafficMarkRuleIds") {
            self.trafficMarkRuleIds = dict["TrafficMarkRuleIds"] as! [String]
        }
        if dict.keys.contains("TrafficMarkingPolicyId") {
            self.trafficMarkingPolicyId = dict["TrafficMarkingPolicyId"] as! String
        }
    }
}

public class RemoveTrafficMatchRuleFromTrafficMarkingPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RemoveTrafficMatchRuleFromTrafficMarkingPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveTrafficMatchRuleFromTrafficMarkingPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveTrafficMatchRuleFromTrafficMarkingPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveTraficMatchRuleFromTrafficMarkingPolicyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trafficMarkRuleIds: [String]?

    public var trafficMarkingPolicyId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.trafficMarkRuleIds != nil {
            map["TrafficMarkRuleIds"] = self.trafficMarkRuleIds!
        }
        if self.trafficMarkingPolicyId != nil {
            map["TrafficMarkingPolicyId"] = self.trafficMarkingPolicyId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TrafficMarkRuleIds") {
            self.trafficMarkRuleIds = dict["TrafficMarkRuleIds"] as! [String]
        }
        if dict.keys.contains("TrafficMarkingPolicyId") {
            self.trafficMarkingPolicyId = dict["TrafficMarkingPolicyId"] as! String
        }
    }
}

public class RemoveTraficMatchRuleFromTrafficMarkingPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RemoveTraficMatchRuleFromTrafficMarkingPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveTraficMatchRuleFromTrafficMarkingPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveTraficMatchRuleFromTrafficMarkingPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReplaceTransitRouterRouteTableAssociationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public var transitRouterRouteTableId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
    }
}

public class ReplaceTransitRouterRouteTableAssociationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ReplaceTransitRouterRouteTableAssociationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReplaceTransitRouterRouteTableAssociationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ReplaceTransitRouterRouteTableAssociationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResolveAndRouteServiceInCenRequest : Tea.TeaModel {
    public var accessRegionIds: [String]?

    public var cenId: String?

    public var clientToken: String?

    public var description_: String?

    public var host: String?

    public var hostRegionId: String?

    public var hostVpcId: String?

    public var ownerAccount: String?

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
        if self.accessRegionIds != nil {
            map["AccessRegionIds"] = self.accessRegionIds!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.hostRegionId != nil {
            map["HostRegionId"] = self.hostRegionId!
        }
        if self.hostVpcId != nil {
            map["HostVpcId"] = self.hostVpcId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessRegionIds") {
            self.accessRegionIds = dict["AccessRegionIds"] as! [String]
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("HostRegionId") {
            self.hostRegionId = dict["HostRegionId"] as! String
        }
        if dict.keys.contains("HostVpcId") {
            self.hostVpcId = dict["HostVpcId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ResolveAndRouteServiceInCenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ResolveAndRouteServiceInCenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResolveAndRouteServiceInCenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ResolveAndRouteServiceInCenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevokeInstanceFromTransitRouterRequest : Tea.TeaModel {
    public var cenId: String?

    public var cenOwnerId: Int64?

    public var instanceId: String?

    public var instanceType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.cenOwnerId != nil {
            map["CenOwnerId"] = self.cenOwnerId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CenOwnerId") {
            self.cenOwnerId = dict["CenOwnerId"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class RevokeInstanceFromTransitRouterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RevokeInstanceFromTransitRouterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeInstanceFromTransitRouterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RevokeInstanceFromTransitRouterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RoutePrivateZoneInCenToVpcRequest : Tea.TeaModel {
    public var accessRegionId: String?

    public var cenId: String?

    public var hostRegionId: String?

    public var hostVpcId: String?

    public var ownerAccount: String?

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
        if self.accessRegionId != nil {
            map["AccessRegionId"] = self.accessRegionId!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.hostRegionId != nil {
            map["HostRegionId"] = self.hostRegionId!
        }
        if self.hostVpcId != nil {
            map["HostVpcId"] = self.hostVpcId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessRegionId") {
            self.accessRegionId = dict["AccessRegionId"] as! String
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("HostRegionId") {
            self.hostRegionId = dict["HostRegionId"] as! String
        }
        if dict.keys.contains("HostVpcId") {
            self.hostVpcId = dict["HostVpcId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class RoutePrivateZoneInCenToVpcResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RoutePrivateZoneInCenToVpcResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RoutePrivateZoneInCenToVpcResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RoutePrivateZoneInCenToVpcResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetCenInterRegionBandwidthLimitRequest : Tea.TeaModel {
    public var bandwidthLimit: Int64?

    public var cenId: String?

    public var localRegionId: String?

    public var oppositeRegionId: String?

    public var ownerAccount: String?

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
        if self.bandwidthLimit != nil {
            map["BandwidthLimit"] = self.bandwidthLimit!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.localRegionId != nil {
            map["LocalRegionId"] = self.localRegionId!
        }
        if self.oppositeRegionId != nil {
            map["OppositeRegionId"] = self.oppositeRegionId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BandwidthLimit") {
            self.bandwidthLimit = dict["BandwidthLimit"] as! Int64
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("LocalRegionId") {
            self.localRegionId = dict["LocalRegionId"] as! String
        }
        if dict.keys.contains("OppositeRegionId") {
            self.oppositeRegionId = dict["OppositeRegionId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class SetCenInterRegionBandwidthLimitResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetCenInterRegionBandwidthLimitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetCenInterRegionBandwidthLimitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetCenInterRegionBandwidthLimitResponseBody()
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
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [TagResourcesRequest.Tag]
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class TempUpgradeCenBandwidthPackageSpecRequest : Tea.TeaModel {
    public var bandwidth: Int32?

    public var cenBandwidthPackageId: String?

    public var endTime: String?

    public var ownerAccount: String?

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
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.cenBandwidthPackageId != nil {
            map["CenBandwidthPackageId"] = self.cenBandwidthPackageId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("CenBandwidthPackageId") {
            self.cenBandwidthPackageId = dict["CenBandwidthPackageId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class TempUpgradeCenBandwidthPackageSpecResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class TempUpgradeCenBandwidthPackageSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TempUpgradeCenBandwidthPackageSpecResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = TempUpgradeCenBandwidthPackageSpecResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnassociateCenBandwidthPackageRequest : Tea.TeaModel {
    public var cenBandwidthPackageId: String?

    public var cenId: String?

    public var ownerAccount: String?

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
        if self.cenBandwidthPackageId != nil {
            map["CenBandwidthPackageId"] = self.cenBandwidthPackageId!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenBandwidthPackageId") {
            self.cenBandwidthPackageId = dict["CenBandwidthPackageId"] as! String
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UnassociateCenBandwidthPackageResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UnassociateCenBandwidthPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnassociateCenBandwidthPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UnassociateCenBandwidthPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnroutePrivateZoneInCenToVpcRequest : Tea.TeaModel {
    public var accessRegionId: String?

    public var cenId: String?

    public var ownerAccount: String?

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
        if self.accessRegionId != nil {
            map["AccessRegionId"] = self.accessRegionId!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessRegionId") {
            self.accessRegionId = dict["AccessRegionId"] as! String
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UnroutePrivateZoneInCenToVpcResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UnroutePrivateZoneInCenToVpcResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnroutePrivateZoneInCenToVpcResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UnroutePrivateZoneInCenToVpcResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class UpdateCenInterRegionTrafficQosPolicyAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trafficQosPolicyDescription: String?

    public var trafficQosPolicyId: String?

    public var trafficQosPolicyName: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.trafficQosPolicyDescription != nil {
            map["TrafficQosPolicyDescription"] = self.trafficQosPolicyDescription!
        }
        if self.trafficQosPolicyId != nil {
            map["TrafficQosPolicyId"] = self.trafficQosPolicyId!
        }
        if self.trafficQosPolicyName != nil {
            map["TrafficQosPolicyName"] = self.trafficQosPolicyName!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TrafficQosPolicyDescription") {
            self.trafficQosPolicyDescription = dict["TrafficQosPolicyDescription"] as! String
        }
        if dict.keys.contains("TrafficQosPolicyId") {
            self.trafficQosPolicyId = dict["TrafficQosPolicyId"] as! String
        }
        if dict.keys.contains("TrafficQosPolicyName") {
            self.trafficQosPolicyName = dict["TrafficQosPolicyName"] as! String
        }
    }
}

public class UpdateCenInterRegionTrafficQosPolicyAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateCenInterRegionTrafficQosPolicyAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCenInterRegionTrafficQosPolicyAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateCenInterRegionTrafficQosPolicyAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCenInterRegionTrafficQosQueueAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var dscps: [Int32]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var qosQueueDescription: String?

    public var qosQueueId: String?

    public var qosQueueName: String?

    public var remainBandwidthPercent: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.dscps != nil {
            map["Dscps"] = self.dscps!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qosQueueDescription != nil {
            map["QosQueueDescription"] = self.qosQueueDescription!
        }
        if self.qosQueueId != nil {
            map["QosQueueId"] = self.qosQueueId!
        }
        if self.qosQueueName != nil {
            map["QosQueueName"] = self.qosQueueName!
        }
        if self.remainBandwidthPercent != nil {
            map["RemainBandwidthPercent"] = self.remainBandwidthPercent!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("Dscps") {
            self.dscps = dict["Dscps"] as! [Int32]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("QosQueueDescription") {
            self.qosQueueDescription = dict["QosQueueDescription"] as! String
        }
        if dict.keys.contains("QosQueueId") {
            self.qosQueueId = dict["QosQueueId"] as! String
        }
        if dict.keys.contains("QosQueueName") {
            self.qosQueueName = dict["QosQueueName"] as! String
        }
        if dict.keys.contains("RemainBandwidthPercent") {
            self.remainBandwidthPercent = dict["RemainBandwidthPercent"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UpdateCenInterRegionTrafficQosQueueAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateCenInterRegionTrafficQosQueueAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCenInterRegionTrafficQosQueueAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateCenInterRegionTrafficQosQueueAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTrafficMarkingPolicyAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trafficMarkingPolicyDescription: String?

    public var trafficMarkingPolicyId: String?

    public var trafficMarkingPolicyName: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.trafficMarkingPolicyDescription != nil {
            map["TrafficMarkingPolicyDescription"] = self.trafficMarkingPolicyDescription!
        }
        if self.trafficMarkingPolicyId != nil {
            map["TrafficMarkingPolicyId"] = self.trafficMarkingPolicyId!
        }
        if self.trafficMarkingPolicyName != nil {
            map["TrafficMarkingPolicyName"] = self.trafficMarkingPolicyName!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TrafficMarkingPolicyDescription") {
            self.trafficMarkingPolicyDescription = dict["TrafficMarkingPolicyDescription"] as! String
        }
        if dict.keys.contains("TrafficMarkingPolicyId") {
            self.trafficMarkingPolicyId = dict["TrafficMarkingPolicyId"] as! String
        }
        if dict.keys.contains("TrafficMarkingPolicyName") {
            self.trafficMarkingPolicyName = dict["TrafficMarkingPolicyName"] as! String
        }
    }
}

public class UpdateTrafficMarkingPolicyAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateTrafficMarkingPolicyAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTrafficMarkingPolicyAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateTrafficMarkingPolicyAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTransitRouterRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterDescription: String?

    public var transitRouterId: String?

    public var transitRouterName: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterDescription != nil {
            map["TransitRouterDescription"] = self.transitRouterDescription!
        }
        if self.transitRouterId != nil {
            map["TransitRouterId"] = self.transitRouterId!
        }
        if self.transitRouterName != nil {
            map["TransitRouterName"] = self.transitRouterName!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterDescription") {
            self.transitRouterDescription = dict["TransitRouterDescription"] as! String
        }
        if dict.keys.contains("TransitRouterId") {
            self.transitRouterId = dict["TransitRouterId"] as! String
        }
        if dict.keys.contains("TransitRouterName") {
            self.transitRouterName = dict["TransitRouterName"] as! String
        }
    }
}

public class UpdateTransitRouterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateTransitRouterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTransitRouterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateTransitRouterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTransitRouterPeerAttachmentAttributeRequest : Tea.TeaModel {
    public var autoPublishRouteEnabled: Bool?

    public var bandwidth: Int32?

    public var bandwidthType: String?

    public var cenBandwidthPackageId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentDescription: String?

    public var transitRouterAttachmentId: String?

    public var transitRouterAttachmentName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPublishRouteEnabled != nil {
            map["AutoPublishRouteEnabled"] = self.autoPublishRouteEnabled!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.bandwidthType != nil {
            map["BandwidthType"] = self.bandwidthType!
        }
        if self.cenBandwidthPackageId != nil {
            map["CenBandwidthPackageId"] = self.cenBandwidthPackageId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentDescription != nil {
            map["TransitRouterAttachmentDescription"] = self.transitRouterAttachmentDescription!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterAttachmentName != nil {
            map["TransitRouterAttachmentName"] = self.transitRouterAttachmentName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPublishRouteEnabled") {
            self.autoPublishRouteEnabled = dict["AutoPublishRouteEnabled"] as! Bool
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("BandwidthType") {
            self.bandwidthType = dict["BandwidthType"] as! String
        }
        if dict.keys.contains("CenBandwidthPackageId") {
            self.cenBandwidthPackageId = dict["CenBandwidthPackageId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentDescription") {
            self.transitRouterAttachmentDescription = dict["TransitRouterAttachmentDescription"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentName") {
            self.transitRouterAttachmentName = dict["TransitRouterAttachmentName"] as! String
        }
    }
}

public class UpdateTransitRouterPeerAttachmentAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateTransitRouterPeerAttachmentAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTransitRouterPeerAttachmentAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateTransitRouterPeerAttachmentAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTransitRouterRouteEntryRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterRouteEntryDescription: String?

    public var transitRouterRouteEntryId: String?

    public var transitRouterRouteEntryName: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterRouteEntryDescription != nil {
            map["TransitRouterRouteEntryDescription"] = self.transitRouterRouteEntryDescription!
        }
        if self.transitRouterRouteEntryId != nil {
            map["TransitRouterRouteEntryId"] = self.transitRouterRouteEntryId!
        }
        if self.transitRouterRouteEntryName != nil {
            map["TransitRouterRouteEntryName"] = self.transitRouterRouteEntryName!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterRouteEntryDescription") {
            self.transitRouterRouteEntryDescription = dict["TransitRouterRouteEntryDescription"] as! String
        }
        if dict.keys.contains("TransitRouterRouteEntryId") {
            self.transitRouterRouteEntryId = dict["TransitRouterRouteEntryId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteEntryName") {
            self.transitRouterRouteEntryName = dict["TransitRouterRouteEntryName"] as! String
        }
    }
}

public class UpdateTransitRouterRouteEntryResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateTransitRouterRouteEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTransitRouterRouteEntryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateTransitRouterRouteEntryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTransitRouterRouteTableRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterRouteTableDescription: String?

    public var transitRouterRouteTableId: String?

    public var transitRouterRouteTableName: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterRouteTableDescription != nil {
            map["TransitRouterRouteTableDescription"] = self.transitRouterRouteTableDescription!
        }
        if self.transitRouterRouteTableId != nil {
            map["TransitRouterRouteTableId"] = self.transitRouterRouteTableId!
        }
        if self.transitRouterRouteTableName != nil {
            map["TransitRouterRouteTableName"] = self.transitRouterRouteTableName!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterRouteTableDescription") {
            self.transitRouterRouteTableDescription = dict["TransitRouterRouteTableDescription"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableId") {
            self.transitRouterRouteTableId = dict["TransitRouterRouteTableId"] as! String
        }
        if dict.keys.contains("TransitRouterRouteTableName") {
            self.transitRouterRouteTableName = dict["TransitRouterRouteTableName"] as! String
        }
    }
}

public class UpdateTransitRouterRouteTableResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateTransitRouterRouteTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTransitRouterRouteTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateTransitRouterRouteTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTransitRouterVbrAttachmentAttributeRequest : Tea.TeaModel {
    public var autoPublishRouteEnabled: Bool?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentDescription: String?

    public var transitRouterAttachmentId: String?

    public var transitRouterAttachmentName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPublishRouteEnabled != nil {
            map["AutoPublishRouteEnabled"] = self.autoPublishRouteEnabled!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentDescription != nil {
            map["TransitRouterAttachmentDescription"] = self.transitRouterAttachmentDescription!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterAttachmentName != nil {
            map["TransitRouterAttachmentName"] = self.transitRouterAttachmentName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPublishRouteEnabled") {
            self.autoPublishRouteEnabled = dict["AutoPublishRouteEnabled"] as! Bool
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentDescription") {
            self.transitRouterAttachmentDescription = dict["TransitRouterAttachmentDescription"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentName") {
            self.transitRouterAttachmentName = dict["TransitRouterAttachmentName"] as! String
        }
    }
}

public class UpdateTransitRouterVbrAttachmentAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateTransitRouterVbrAttachmentAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTransitRouterVbrAttachmentAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateTransitRouterVbrAttachmentAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTransitRouterVpcAttachmentAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentDescription: String?

    public var transitRouterAttachmentId: String?

    public var transitRouterAttachmentName: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentDescription != nil {
            map["TransitRouterAttachmentDescription"] = self.transitRouterAttachmentDescription!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterAttachmentName != nil {
            map["TransitRouterAttachmentName"] = self.transitRouterAttachmentName!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentDescription") {
            self.transitRouterAttachmentDescription = dict["TransitRouterAttachmentDescription"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentName") {
            self.transitRouterAttachmentName = dict["TransitRouterAttachmentName"] as! String
        }
    }
}

public class UpdateTransitRouterVpcAttachmentAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateTransitRouterVpcAttachmentAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTransitRouterVpcAttachmentAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateTransitRouterVpcAttachmentAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTransitRouterVpcAttachmentZonesRequest : Tea.TeaModel {
    public class AddZoneMappings : Tea.TeaModel {
        public var vSwitchId: String?

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
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public class RemoveZoneMappings : Tea.TeaModel {
        public var vSwitchId: String?

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
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var addZoneMappings: [UpdateTransitRouterVpcAttachmentZonesRequest.AddZoneMappings]?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var removeZoneMappings: [UpdateTransitRouterVpcAttachmentZonesRequest.RemoveZoneMappings]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addZoneMappings != nil {
            var tmp : [Any] = []
            for k in self.addZoneMappings! {
                tmp.append(k.toMap())
            }
            map["AddZoneMappings"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.removeZoneMappings != nil {
            var tmp : [Any] = []
            for k in self.removeZoneMappings! {
                tmp.append(k.toMap())
            }
            map["RemoveZoneMappings"] = tmp
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddZoneMappings") {
            self.addZoneMappings = dict["AddZoneMappings"] as! [UpdateTransitRouterVpcAttachmentZonesRequest.AddZoneMappings]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RemoveZoneMappings") {
            self.removeZoneMappings = dict["RemoveZoneMappings"] as! [UpdateTransitRouterVpcAttachmentZonesRequest.RemoveZoneMappings]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
    }
}

public class UpdateTransitRouterVpcAttachmentZonesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateTransitRouterVpcAttachmentZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTransitRouterVpcAttachmentZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateTransitRouterVpcAttachmentZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTransitRouterVpnAttachmentAttributeRequest : Tea.TeaModel {
    public var autoPublishRouteEnabled: Bool?

    public var clientToken: String?

    public var dryRun: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transitRouterAttachmentDescription: String?

    public var transitRouterAttachmentId: String?

    public var transitRouterAttachmentName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPublishRouteEnabled != nil {
            map["AutoPublishRouteEnabled"] = self.autoPublishRouteEnabled!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.transitRouterAttachmentDescription != nil {
            map["TransitRouterAttachmentDescription"] = self.transitRouterAttachmentDescription!
        }
        if self.transitRouterAttachmentId != nil {
            map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
        }
        if self.transitRouterAttachmentName != nil {
            map["TransitRouterAttachmentName"] = self.transitRouterAttachmentName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPublishRouteEnabled") {
            self.autoPublishRouteEnabled = dict["AutoPublishRouteEnabled"] as! Bool
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransitRouterAttachmentDescription") {
            self.transitRouterAttachmentDescription = dict["TransitRouterAttachmentDescription"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentId") {
            self.transitRouterAttachmentId = dict["TransitRouterAttachmentId"] as! String
        }
        if dict.keys.contains("TransitRouterAttachmentName") {
            self.transitRouterAttachmentName = dict["TransitRouterAttachmentName"] as! String
        }
    }
}

public class UpdateTransitRouterVpnAttachmentAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateTransitRouterVpnAttachmentAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTransitRouterVpnAttachmentAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateTransitRouterVpnAttachmentAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class WithdrawPublishedRouteEntriesRequest : Tea.TeaModel {
    public var cenId: String?

    public var childInstanceId: String?

    public var childInstanceRegionId: String?

    public var childInstanceRouteTableId: String?

    public var childInstanceType: String?

    public var destinationCidrBlock: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.childInstanceId != nil {
            map["ChildInstanceId"] = self.childInstanceId!
        }
        if self.childInstanceRegionId != nil {
            map["ChildInstanceRegionId"] = self.childInstanceRegionId!
        }
        if self.childInstanceRouteTableId != nil {
            map["ChildInstanceRouteTableId"] = self.childInstanceRouteTableId!
        }
        if self.childInstanceType != nil {
            map["ChildInstanceType"] = self.childInstanceType!
        }
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("ChildInstanceId") {
            self.childInstanceId = dict["ChildInstanceId"] as! String
        }
        if dict.keys.contains("ChildInstanceRegionId") {
            self.childInstanceRegionId = dict["ChildInstanceRegionId"] as! String
        }
        if dict.keys.contains("ChildInstanceRouteTableId") {
            self.childInstanceRouteTableId = dict["ChildInstanceRouteTableId"] as! String
        }
        if dict.keys.contains("ChildInstanceType") {
            self.childInstanceType = dict["ChildInstanceType"] as! String
        }
        if dict.keys.contains("DestinationCidrBlock") {
            self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class WithdrawPublishedRouteEntriesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class WithdrawPublishedRouteEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: WithdrawPublishedRouteEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = WithdrawPublishedRouteEntriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
