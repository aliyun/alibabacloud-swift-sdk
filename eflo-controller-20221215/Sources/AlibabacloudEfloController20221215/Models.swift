import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ApproveOperationRequest : Tea.TeaModel {
    public var nodeId: String?

    public var operationType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
    }
}

public class ApproveOperationResponseBody : Tea.TeaModel {
    public var errorMessage: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ApproveOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApproveOperationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ApproveOperationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
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

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloseSessionRequest : Tea.TeaModel {
    public var sessionId: String?

    public var sessionToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.sessionToken != nil {
            map["SessionToken"] = self.sessionToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SessionToken"] as? String {
            self.sessionToken = value
        }
    }
}

public class CloseSessionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var sessionId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
    }
}

public class CloseSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloseSessionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CloseSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateClusterRequest : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public class ComponentConfig : Tea.TeaModel {
            public var basicArgs: Any?

            public var nodeUnits: [Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.basicArgs != nil {
                    map["BasicArgs"] = self.basicArgs!
                }
                if self.nodeUnits != nil {
                    map["NodeUnits"] = self.nodeUnits!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BasicArgs"] as? Any {
                    self.basicArgs = value
                }
                if let value = dict["NodeUnits"] as? [Any] {
                    self.nodeUnits = value
                }
            }
        }
        public var componentConfig: CreateClusterRequest.Components.ComponentConfig?

        public var componentType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.componentConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.componentConfig != nil {
                map["ComponentConfig"] = self.componentConfig?.toMap()
            }
            if self.componentType != nil {
                map["ComponentType"] = self.componentType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ComponentConfig"] as? [String: Any?] {
                var model = CreateClusterRequest.Components.ComponentConfig()
                model.fromMap(value)
                self.componentConfig = model
            }
            if let value = dict["ComponentType"] as? String {
                self.componentType = value
            }
        }
    }
    public class Networks : Tea.TeaModel {
        public class IpAllocationPolicy : Tea.TeaModel {
            public class BondPolicy : Tea.TeaModel {
                public class Bonds : Tea.TeaModel {
                    public var name: String?

                    public var subnet: String?

                    public override init() {
                        super.init()
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
                        if self.subnet != nil {
                            map["Subnet"] = self.subnet!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Subnet"] as? String {
                            self.subnet = value
                        }
                    }
                }
                public var bondDefaultSubnet: String?

                public var bonds: [CreateClusterRequest.Networks.IpAllocationPolicy.BondPolicy.Bonds]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bondDefaultSubnet != nil {
                        map["BondDefaultSubnet"] = self.bondDefaultSubnet!
                    }
                    if self.bonds != nil {
                        var tmp : [Any] = []
                        for k in self.bonds! {
                            tmp.append(k.toMap())
                        }
                        map["Bonds"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BondDefaultSubnet"] as? String {
                        self.bondDefaultSubnet = value
                    }
                    if let value = dict["Bonds"] as? [Any?] {
                        var tmp : [CreateClusterRequest.Networks.IpAllocationPolicy.BondPolicy.Bonds] = []
                        for v in value {
                            if v != nil {
                                var model = CreateClusterRequest.Networks.IpAllocationPolicy.BondPolicy.Bonds()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.bonds = tmp
                    }
                }
            }
            public class MachineTypePolicy : Tea.TeaModel {
                public class Bonds : Tea.TeaModel {
                    public var name: String?

                    public var subnet: String?

                    public override init() {
                        super.init()
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
                        if self.subnet != nil {
                            map["Subnet"] = self.subnet!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Subnet"] as? String {
                            self.subnet = value
                        }
                    }
                }
                public var bonds: [CreateClusterRequest.Networks.IpAllocationPolicy.MachineTypePolicy.Bonds]?

                public var machineType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bonds != nil {
                        var tmp : [Any] = []
                        for k in self.bonds! {
                            tmp.append(k.toMap())
                        }
                        map["Bonds"] = tmp
                    }
                    if self.machineType != nil {
                        map["MachineType"] = self.machineType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bonds"] as? [Any?] {
                        var tmp : [CreateClusterRequest.Networks.IpAllocationPolicy.MachineTypePolicy.Bonds] = []
                        for v in value {
                            if v != nil {
                                var model = CreateClusterRequest.Networks.IpAllocationPolicy.MachineTypePolicy.Bonds()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.bonds = tmp
                    }
                    if let value = dict["MachineType"] as? String {
                        self.machineType = value
                    }
                }
            }
            public class NodePolicy : Tea.TeaModel {
                public class Bonds : Tea.TeaModel {
                    public var name: String?

                    public var subnet: String?

                    public override init() {
                        super.init()
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
                        if self.subnet != nil {
                            map["Subnet"] = self.subnet!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Subnet"] as? String {
                            self.subnet = value
                        }
                    }
                }
                public var bonds: [CreateClusterRequest.Networks.IpAllocationPolicy.NodePolicy.Bonds]?

                public var nodeId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bonds != nil {
                        var tmp : [Any] = []
                        for k in self.bonds! {
                            tmp.append(k.toMap())
                        }
                        map["Bonds"] = tmp
                    }
                    if self.nodeId != nil {
                        map["NodeId"] = self.nodeId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bonds"] as? [Any?] {
                        var tmp : [CreateClusterRequest.Networks.IpAllocationPolicy.NodePolicy.Bonds] = []
                        for v in value {
                            if v != nil {
                                var model = CreateClusterRequest.Networks.IpAllocationPolicy.NodePolicy.Bonds()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.bonds = tmp
                    }
                    if let value = dict["NodeId"] as? String {
                        self.nodeId = value
                    }
                }
            }
            public var bondPolicy: CreateClusterRequest.Networks.IpAllocationPolicy.BondPolicy?

            public var machineTypePolicy: [CreateClusterRequest.Networks.IpAllocationPolicy.MachineTypePolicy]?

            public var nodePolicy: [CreateClusterRequest.Networks.IpAllocationPolicy.NodePolicy]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.bondPolicy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bondPolicy != nil {
                    map["BondPolicy"] = self.bondPolicy?.toMap()
                }
                if self.machineTypePolicy != nil {
                    var tmp : [Any] = []
                    for k in self.machineTypePolicy! {
                        tmp.append(k.toMap())
                    }
                    map["MachineTypePolicy"] = tmp
                }
                if self.nodePolicy != nil {
                    var tmp : [Any] = []
                    for k in self.nodePolicy! {
                        tmp.append(k.toMap())
                    }
                    map["NodePolicy"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BondPolicy"] as? [String: Any?] {
                    var model = CreateClusterRequest.Networks.IpAllocationPolicy.BondPolicy()
                    model.fromMap(value)
                    self.bondPolicy = model
                }
                if let value = dict["MachineTypePolicy"] as? [Any?] {
                    var tmp : [CreateClusterRequest.Networks.IpAllocationPolicy.MachineTypePolicy] = []
                    for v in value {
                        if v != nil {
                            var model = CreateClusterRequest.Networks.IpAllocationPolicy.MachineTypePolicy()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.machineTypePolicy = tmp
                }
                if let value = dict["NodePolicy"] as? [Any?] {
                    var tmp : [CreateClusterRequest.Networks.IpAllocationPolicy.NodePolicy] = []
                    for v in value {
                        if v != nil {
                            var model = CreateClusterRequest.Networks.IpAllocationPolicy.NodePolicy()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.nodePolicy = tmp
                }
            }
        }
        public class NewVpdInfo : Tea.TeaModel {
            public class VpdSubnets : Tea.TeaModel {
                public var subnetCidr: String?

                public var subnetType: String?

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
                    if self.subnetCidr != nil {
                        map["SubnetCidr"] = self.subnetCidr!
                    }
                    if self.subnetType != nil {
                        map["SubnetType"] = self.subnetType!
                    }
                    if self.zoneId != nil {
                        map["ZoneId"] = self.zoneId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SubnetCidr"] as? String {
                        self.subnetCidr = value
                    }
                    if let value = dict["SubnetType"] as? String {
                        self.subnetType = value
                    }
                    if let value = dict["ZoneId"] as? String {
                        self.zoneId = value
                    }
                }
            }
            public var cenId: String?

            public var cloudLinkCidr: String?

            public var cloudLinkId: String?

            public var monitorVpcId: String?

            public var monitorVswitchId: String?

            public var vpdCidr: String?

            public var vpdSubnets: [CreateClusterRequest.Networks.NewVpdInfo.VpdSubnets]?

            public override init() {
                super.init()
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
                if self.cloudLinkCidr != nil {
                    map["CloudLinkCidr"] = self.cloudLinkCidr!
                }
                if self.cloudLinkId != nil {
                    map["CloudLinkId"] = self.cloudLinkId!
                }
                if self.monitorVpcId != nil {
                    map["MonitorVpcId"] = self.monitorVpcId!
                }
                if self.monitorVswitchId != nil {
                    map["MonitorVswitchId"] = self.monitorVswitchId!
                }
                if self.vpdCidr != nil {
                    map["VpdCidr"] = self.vpdCidr!
                }
                if self.vpdSubnets != nil {
                    var tmp : [Any] = []
                    for k in self.vpdSubnets! {
                        tmp.append(k.toMap())
                    }
                    map["VpdSubnets"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CenId"] as? String {
                    self.cenId = value
                }
                if let value = dict["CloudLinkCidr"] as? String {
                    self.cloudLinkCidr = value
                }
                if let value = dict["CloudLinkId"] as? String {
                    self.cloudLinkId = value
                }
                if let value = dict["MonitorVpcId"] as? String {
                    self.monitorVpcId = value
                }
                if let value = dict["MonitorVswitchId"] as? String {
                    self.monitorVswitchId = value
                }
                if let value = dict["VpdCidr"] as? String {
                    self.vpdCidr = value
                }
                if let value = dict["VpdSubnets"] as? [Any?] {
                    var tmp : [CreateClusterRequest.Networks.NewVpdInfo.VpdSubnets] = []
                    for v in value {
                        if v != nil {
                            var model = CreateClusterRequest.Networks.NewVpdInfo.VpdSubnets()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.vpdSubnets = tmp
                }
            }
        }
        public class VpdInfo : Tea.TeaModel {
            public var vpdId: String?

            public var vpdSubnets: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.vpdId != nil {
                    map["VpdId"] = self.vpdId!
                }
                if self.vpdSubnets != nil {
                    map["VpdSubnets"] = self.vpdSubnets!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["VpdId"] as? String {
                    self.vpdId = value
                }
                if let value = dict["VpdSubnets"] as? [String] {
                    self.vpdSubnets = value
                }
            }
        }
        public var ipAllocationPolicy: [CreateClusterRequest.Networks.IpAllocationPolicy]?

        public var newVpdInfo: CreateClusterRequest.Networks.NewVpdInfo?

        public var securityGroupId: String?

        public var tailIpVersion: String?

        public var vSwitchId: String?

        public var vSwitchZoneId: String?

        public var vpcId: String?

        public var vpdInfo: CreateClusterRequest.Networks.VpdInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.newVpdInfo?.validate()
            try self.vpdInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ipAllocationPolicy != nil {
                var tmp : [Any] = []
                for k in self.ipAllocationPolicy! {
                    tmp.append(k.toMap())
                }
                map["IpAllocationPolicy"] = tmp
            }
            if self.newVpdInfo != nil {
                map["NewVpdInfo"] = self.newVpdInfo?.toMap()
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.tailIpVersion != nil {
                map["TailIpVersion"] = self.tailIpVersion!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vSwitchZoneId != nil {
                map["VSwitchZoneId"] = self.vSwitchZoneId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpdInfo != nil {
                map["VpdInfo"] = self.vpdInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IpAllocationPolicy"] as? [Any?] {
                var tmp : [CreateClusterRequest.Networks.IpAllocationPolicy] = []
                for v in value {
                    if v != nil {
                        var model = CreateClusterRequest.Networks.IpAllocationPolicy()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ipAllocationPolicy = tmp
            }
            if let value = dict["NewVpdInfo"] as? [String: Any?] {
                var model = CreateClusterRequest.Networks.NewVpdInfo()
                model.fromMap(value)
                self.newVpdInfo = model
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["TailIpVersion"] as? String {
                self.tailIpVersion = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VSwitchZoneId"] as? String {
                self.vSwitchZoneId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpdInfo"] as? [String: Any?] {
                var model = CreateClusterRequest.Networks.VpdInfo()
                model.fromMap(value)
                self.vpdInfo = model
            }
        }
    }
    public class NodeGroups : Tea.TeaModel {
        public class HyperNodes : Tea.TeaModel {
            public class DataDisk : Tea.TeaModel {
                public var category: String?

                public var deleteWithNode: Bool?

                public var performanceLevel: String?

                public var size: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.category != nil {
                        map["Category"] = self.category!
                    }
                    if self.deleteWithNode != nil {
                        map["DeleteWithNode"] = self.deleteWithNode!
                    }
                    if self.performanceLevel != nil {
                        map["PerformanceLevel"] = self.performanceLevel!
                    }
                    if self.size != nil {
                        map["Size"] = self.size!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Category"] as? String {
                        self.category = value
                    }
                    if let value = dict["DeleteWithNode"] as? Bool {
                        self.deleteWithNode = value
                    }
                    if let value = dict["PerformanceLevel"] as? String {
                        self.performanceLevel = value
                    }
                    if let value = dict["Size"] as? Int32 {
                        self.size = value
                    }
                }
            }
            public var dataDisk: [CreateClusterRequest.NodeGroups.HyperNodes.DataDisk]?

            public var hostname: String?

            public var hyperNodeId: String?

            public var loginPassword: String?

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
                if self.dataDisk != nil {
                    var tmp : [Any] = []
                    for k in self.dataDisk! {
                        tmp.append(k.toMap())
                    }
                    map["DataDisk"] = tmp
                }
                if self.hostname != nil {
                    map["Hostname"] = self.hostname!
                }
                if self.hyperNodeId != nil {
                    map["HyperNodeId"] = self.hyperNodeId!
                }
                if self.loginPassword != nil {
                    map["LoginPassword"] = self.loginPassword!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataDisk"] as? [Any?] {
                    var tmp : [CreateClusterRequest.NodeGroups.HyperNodes.DataDisk] = []
                    for v in value {
                        if v != nil {
                            var model = CreateClusterRequest.NodeGroups.HyperNodes.DataDisk()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dataDisk = tmp
                }
                if let value = dict["Hostname"] as? String {
                    self.hostname = value
                }
                if let value = dict["HyperNodeId"] as? String {
                    self.hyperNodeId = value
                }
                if let value = dict["LoginPassword"] as? String {
                    self.loginPassword = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public class Nodes : Tea.TeaModel {
            public class DataDisk : Tea.TeaModel {
                public var burstingEnabled: Bool?

                public var category: String?

                public var deleteWithNode: Bool?

                public var performanceLevel: String?

                public var provisionedIops: Int64?

                public var size: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.burstingEnabled != nil {
                        map["BurstingEnabled"] = self.burstingEnabled!
                    }
                    if self.category != nil {
                        map["Category"] = self.category!
                    }
                    if self.deleteWithNode != nil {
                        map["DeleteWithNode"] = self.deleteWithNode!
                    }
                    if self.performanceLevel != nil {
                        map["PerformanceLevel"] = self.performanceLevel!
                    }
                    if self.provisionedIops != nil {
                        map["ProvisionedIops"] = self.provisionedIops!
                    }
                    if self.size != nil {
                        map["Size"] = self.size!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BurstingEnabled"] as? Bool {
                        self.burstingEnabled = value
                    }
                    if let value = dict["Category"] as? String {
                        self.category = value
                    }
                    if let value = dict["DeleteWithNode"] as? Bool {
                        self.deleteWithNode = value
                    }
                    if let value = dict["PerformanceLevel"] as? String {
                        self.performanceLevel = value
                    }
                    if let value = dict["ProvisionedIops"] as? Int64 {
                        self.provisionedIops = value
                    }
                    if let value = dict["Size"] as? Int32 {
                        self.size = value
                    }
                }
            }
            public var dataDisk: [CreateClusterRequest.NodeGroups.Nodes.DataDisk]?

            public var hostname: String?

            public var loginPassword: String?

            public var nodeId: String?

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
                if self.dataDisk != nil {
                    var tmp : [Any] = []
                    for k in self.dataDisk! {
                        tmp.append(k.toMap())
                    }
                    map["DataDisk"] = tmp
                }
                if self.hostname != nil {
                    map["Hostname"] = self.hostname!
                }
                if self.loginPassword != nil {
                    map["LoginPassword"] = self.loginPassword!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataDisk"] as? [Any?] {
                    var tmp : [CreateClusterRequest.NodeGroups.Nodes.DataDisk] = []
                    for v in value {
                        if v != nil {
                            var model = CreateClusterRequest.NodeGroups.Nodes.DataDisk()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dataDisk = tmp
                }
                if let value = dict["Hostname"] as? String {
                    self.hostname = value
                }
                if let value = dict["LoginPassword"] as? String {
                    self.loginPassword = value
                }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public class SystemDisk : Tea.TeaModel {
            public var category: String?

            public var performanceLevel: String?

            public var size: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.performanceLevel != nil {
                    map["PerformanceLevel"] = self.performanceLevel!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["PerformanceLevel"] as? String {
                    self.performanceLevel = value
                }
                if let value = dict["Size"] as? Int32 {
                    self.size = value
                }
            }
        }
        public var fileSystemMountEnabled: Bool?

        public var hyperNodes: [CreateClusterRequest.NodeGroups.HyperNodes]?

        public var imageId: String?

        public var keyPairName: String?

        public var loginPassword: String?

        public var machineType: String?

        public var nodeGroupDescription: String?

        public var nodeGroupName: String?

        public var nodes: [CreateClusterRequest.NodeGroups.Nodes]?

        public var systemDisk: CreateClusterRequest.NodeGroups.SystemDisk?

        public var userData: String?

        public var virtualGpuEnabled: Bool?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.systemDisk?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileSystemMountEnabled != nil {
                map["FileSystemMountEnabled"] = self.fileSystemMountEnabled!
            }
            if self.hyperNodes != nil {
                var tmp : [Any] = []
                for k in self.hyperNodes! {
                    tmp.append(k.toMap())
                }
                map["HyperNodes"] = tmp
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.keyPairName != nil {
                map["KeyPairName"] = self.keyPairName!
            }
            if self.loginPassword != nil {
                map["LoginPassword"] = self.loginPassword!
            }
            if self.machineType != nil {
                map["MachineType"] = self.machineType!
            }
            if self.nodeGroupDescription != nil {
                map["NodeGroupDescription"] = self.nodeGroupDescription!
            }
            if self.nodeGroupName != nil {
                map["NodeGroupName"] = self.nodeGroupName!
            }
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.systemDisk != nil {
                map["SystemDisk"] = self.systemDisk?.toMap()
            }
            if self.userData != nil {
                map["UserData"] = self.userData!
            }
            if self.virtualGpuEnabled != nil {
                map["VirtualGpuEnabled"] = self.virtualGpuEnabled!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileSystemMountEnabled"] as? Bool {
                self.fileSystemMountEnabled = value
            }
            if let value = dict["HyperNodes"] as? [Any?] {
                var tmp : [CreateClusterRequest.NodeGroups.HyperNodes] = []
                for v in value {
                    if v != nil {
                        var model = CreateClusterRequest.NodeGroups.HyperNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hyperNodes = tmp
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["KeyPairName"] as? String {
                self.keyPairName = value
            }
            if let value = dict["LoginPassword"] as? String {
                self.loginPassword = value
            }
            if let value = dict["MachineType"] as? String {
                self.machineType = value
            }
            if let value = dict["NodeGroupDescription"] as? String {
                self.nodeGroupDescription = value
            }
            if let value = dict["NodeGroupName"] as? String {
                self.nodeGroupName = value
            }
            if let value = dict["Nodes"] as? [Any?] {
                var tmp : [CreateClusterRequest.NodeGroups.Nodes] = []
                for v in value {
                    if v != nil {
                        var model = CreateClusterRequest.NodeGroups.Nodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodes = tmp
            }
            if let value = dict["SystemDisk"] as? [String: Any?] {
                var model = CreateClusterRequest.NodeGroups.SystemDisk()
                model.fromMap(value)
                self.systemDisk = model
            }
            if let value = dict["UserData"] as? String {
                self.userData = value
            }
            if let value = dict["VirtualGpuEnabled"] as? Bool {
                self.virtualGpuEnabled = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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
    public var clusterDescription: String?

    public var clusterName: String?

    public var clusterType: String?

    public var components: [CreateClusterRequest.Components]?

    public var hpnZone: String?

    public var ignoreFailedNodeTasks: Bool?

    public var networks: CreateClusterRequest.Networks?

    public var nimizVSwitches: [String]?

    public var nodeGroups: [CreateClusterRequest.NodeGroups]?

    public var openEniJumboFrame: Bool?

    public var resourceGroupId: String?

    public var tag: [CreateClusterRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterDescription != nil {
            map["ClusterDescription"] = self.clusterDescription!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["Components"] = tmp
        }
        if self.hpnZone != nil {
            map["HpnZone"] = self.hpnZone!
        }
        if self.ignoreFailedNodeTasks != nil {
            map["IgnoreFailedNodeTasks"] = self.ignoreFailedNodeTasks!
        }
        if self.networks != nil {
            map["Networks"] = self.networks?.toMap()
        }
        if self.nimizVSwitches != nil {
            map["NimizVSwitches"] = self.nimizVSwitches!
        }
        if self.nodeGroups != nil {
            var tmp : [Any] = []
            for k in self.nodeGroups! {
                tmp.append(k.toMap())
            }
            map["NodeGroups"] = tmp
        }
        if self.openEniJumboFrame != nil {
            map["OpenEniJumboFrame"] = self.openEniJumboFrame!
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
        if let value = dict["ClusterDescription"] as? String {
            self.clusterDescription = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["ClusterType"] as? String {
            self.clusterType = value
        }
        if let value = dict["Components"] as? [Any?] {
            var tmp : [CreateClusterRequest.Components] = []
            for v in value {
                if v != nil {
                    var model = CreateClusterRequest.Components()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.components = tmp
        }
        if let value = dict["HpnZone"] as? String {
            self.hpnZone = value
        }
        if let value = dict["IgnoreFailedNodeTasks"] as? Bool {
            self.ignoreFailedNodeTasks = value
        }
        if let value = dict["Networks"] as? [String: Any?] {
            var model = CreateClusterRequest.Networks()
            model.fromMap(value)
            self.networks = model
        }
        if let value = dict["NimizVSwitches"] as? [String] {
            self.nimizVSwitches = value
        }
        if let value = dict["NodeGroups"] as? [Any?] {
            var tmp : [CreateClusterRequest.NodeGroups] = []
            for v in value {
                if v != nil {
                    var model = CreateClusterRequest.NodeGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodeGroups = tmp
        }
        if let value = dict["OpenEniJumboFrame"] as? Bool {
            self.openEniJumboFrame = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateClusterRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateClusterRequest.Tag()
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

public class CreateClusterShrinkRequest : Tea.TeaModel {
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
    public var clusterDescription: String?

    public var clusterName: String?

    public var clusterType: String?

    public var componentsShrink: String?

    public var hpnZone: String?

    public var ignoreFailedNodeTasks: Bool?

    public var networksShrink: String?

    public var nimizVSwitchesShrink: String?

    public var nodeGroupsShrink: String?

    public var openEniJumboFrame: Bool?

    public var resourceGroupId: String?

    public var tag: [CreateClusterShrinkRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterDescription != nil {
            map["ClusterDescription"] = self.clusterDescription!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.componentsShrink != nil {
            map["Components"] = self.componentsShrink!
        }
        if self.hpnZone != nil {
            map["HpnZone"] = self.hpnZone!
        }
        if self.ignoreFailedNodeTasks != nil {
            map["IgnoreFailedNodeTasks"] = self.ignoreFailedNodeTasks!
        }
        if self.networksShrink != nil {
            map["Networks"] = self.networksShrink!
        }
        if self.nimizVSwitchesShrink != nil {
            map["NimizVSwitches"] = self.nimizVSwitchesShrink!
        }
        if self.nodeGroupsShrink != nil {
            map["NodeGroups"] = self.nodeGroupsShrink!
        }
        if self.openEniJumboFrame != nil {
            map["OpenEniJumboFrame"] = self.openEniJumboFrame!
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
        if let value = dict["ClusterDescription"] as? String {
            self.clusterDescription = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["ClusterType"] as? String {
            self.clusterType = value
        }
        if let value = dict["Components"] as? String {
            self.componentsShrink = value
        }
        if let value = dict["HpnZone"] as? String {
            self.hpnZone = value
        }
        if let value = dict["IgnoreFailedNodeTasks"] as? Bool {
            self.ignoreFailedNodeTasks = value
        }
        if let value = dict["Networks"] as? String {
            self.networksShrink = value
        }
        if let value = dict["NimizVSwitches"] as? String {
            self.nimizVSwitchesShrink = value
        }
        if let value = dict["NodeGroups"] as? String {
            self.nodeGroupsShrink = value
        }
        if let value = dict["OpenEniJumboFrame"] as? Bool {
            self.openEniJumboFrame = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateClusterShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateClusterShrinkRequest.Tag()
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

public class CreateClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var requestId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDiagnosticTaskRequest : Tea.TeaModel {
    public class AiJobLogInfo : Tea.TeaModel {
        public class AiJobLogs : Tea.TeaModel {
            public class Logs : Tea.TeaModel {
                public var datetime: String?

                public var logContent: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.datetime != nil {
                        map["Datetime"] = self.datetime!
                    }
                    if self.logContent != nil {
                        map["LogContent"] = self.logContent!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Datetime"] as? String {
                        self.datetime = value
                    }
                    if let value = dict["LogContent"] as? String {
                        self.logContent = value
                    }
                }
            }
            public var aiInstance: String?

            public var logs: [CreateDiagnosticTaskRequest.AiJobLogInfo.AiJobLogs.Logs]?

            public var nodeId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aiInstance != nil {
                    map["AiInstance"] = self.aiInstance!
                }
                if self.logs != nil {
                    var tmp : [Any] = []
                    for k in self.logs! {
                        tmp.append(k.toMap())
                    }
                    map["Logs"] = tmp
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AiInstance"] as? String {
                    self.aiInstance = value
                }
                if let value = dict["Logs"] as? [Any?] {
                    var tmp : [CreateDiagnosticTaskRequest.AiJobLogInfo.AiJobLogs.Logs] = []
                    for v in value {
                        if v != nil {
                            var model = CreateDiagnosticTaskRequest.AiJobLogInfo.AiJobLogs.Logs()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.logs = tmp
                }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
                }
            }
        }
        public var aiJobLogs: [CreateDiagnosticTaskRequest.AiJobLogInfo.AiJobLogs]?

        public var endTime: String?

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
            if self.aiJobLogs != nil {
                var tmp : [Any] = []
                for k in self.aiJobLogs! {
                    tmp.append(k.toMap())
                }
                map["AiJobLogs"] = tmp
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AiJobLogs"] as? [Any?] {
                var tmp : [CreateDiagnosticTaskRequest.AiJobLogInfo.AiJobLogs] = []
                for v in value {
                    if v != nil {
                        var model = CreateDiagnosticTaskRequest.AiJobLogInfo.AiJobLogs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.aiJobLogs = tmp
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var aiJobLogInfo: CreateDiagnosticTaskRequest.AiJobLogInfo?

    public var clusterId: String?

    public var diagnosticType: String?

    public var nodeIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aiJobLogInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aiJobLogInfo != nil {
            map["AiJobLogInfo"] = self.aiJobLogInfo?.toMap()
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.diagnosticType != nil {
            map["DiagnosticType"] = self.diagnosticType!
        }
        if self.nodeIds != nil {
            map["NodeIds"] = self.nodeIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AiJobLogInfo"] as? [String: Any?] {
            var model = CreateDiagnosticTaskRequest.AiJobLogInfo()
            model.fromMap(value)
            self.aiJobLogInfo = model
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DiagnosticType"] as? String {
            self.diagnosticType = value
        }
        if let value = dict["NodeIds"] as? [String] {
            self.nodeIds = value
        }
    }
}

public class CreateDiagnosticTaskShrinkRequest : Tea.TeaModel {
    public var aiJobLogInfoShrink: String?

    public var clusterId: String?

    public var diagnosticType: String?

    public var nodeIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aiJobLogInfoShrink != nil {
            map["AiJobLogInfo"] = self.aiJobLogInfoShrink!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.diagnosticType != nil {
            map["DiagnosticType"] = self.diagnosticType!
        }
        if self.nodeIdsShrink != nil {
            map["NodeIds"] = self.nodeIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AiJobLogInfo"] as? String {
            self.aiJobLogInfoShrink = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DiagnosticType"] as? String {
            self.diagnosticType = value
        }
        if let value = dict["NodeIds"] as? String {
            self.nodeIdsShrink = value
        }
    }
}

public class CreateDiagnosticTaskResponseBody : Tea.TeaModel {
    public var diagnosticId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diagnosticId != nil {
            map["DiagnosticId"] = self.diagnosticId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiagnosticId"] as? String {
            self.diagnosticId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDiagnosticTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDiagnosticTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDiagnosticTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateNetTestTaskRequest : Tea.TeaModel {
    public class CommTest : Tea.TeaModel {
        public class Hosts : Tea.TeaModel {
            public var IP: String?

            public var nodeId: String?

            public var resourceId: String?

            public var serverName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.IP != nil {
                    map["IP"] = self.IP!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.serverName != nil {
                    map["ServerName"] = self.serverName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IP"] as? String {
                    self.IP = value
                }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ServerName"] as? String {
                    self.serverName = value
                }
            }
        }
        public var GPUNum: Int64?

        public var hosts: [CreateNetTestTaskRequest.CommTest.Hosts]?

        public var model: String?

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
            if self.GPUNum != nil {
                map["GPUNum"] = self.GPUNum!
            }
            if self.hosts != nil {
                var tmp : [Any] = []
                for k in self.hosts! {
                    tmp.append(k.toMap())
                }
                map["Hosts"] = tmp
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GPUNum"] as? Int64 {
                self.GPUNum = value
            }
            if let value = dict["Hosts"] as? [Any?] {
                var tmp : [CreateNetTestTaskRequest.CommTest.Hosts] = []
                for v in value {
                    if v != nil {
                        var model = CreateNetTestTaskRequest.CommTest.Hosts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hosts = tmp
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class DelayTest : Tea.TeaModel {
        public class Hosts : Tea.TeaModel {
            public var bond: String?

            public var IP: String?

            public var nodeId: String?

            public var resourceId: String?

            public var serverName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bond != nil {
                    map["Bond"] = self.bond!
                }
                if self.IP != nil {
                    map["IP"] = self.IP!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.serverName != nil {
                    map["ServerName"] = self.serverName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bond"] as? String {
                    self.bond = value
                }
                if let value = dict["IP"] as? String {
                    self.IP = value
                }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ServerName"] as? String {
                    self.serverName = value
                }
            }
        }
        public var hosts: [CreateNetTestTaskRequest.DelayTest.Hosts]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hosts != nil {
                var tmp : [Any] = []
                for k in self.hosts! {
                    tmp.append(k.toMap())
                }
                map["Hosts"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Hosts"] as? [Any?] {
                var tmp : [CreateNetTestTaskRequest.DelayTest.Hosts] = []
                for v in value {
                    if v != nil {
                        var model = CreateNetTestTaskRequest.DelayTest.Hosts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hosts = tmp
            }
        }
    }
    public class TrafficTest : Tea.TeaModel {
        public class Clients : Tea.TeaModel {
            public var bond: String?

            public var IP: String?

            public var nodeId: String?

            public var resourceId: String?

            public var serverName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bond != nil {
                    map["Bond"] = self.bond!
                }
                if self.IP != nil {
                    map["IP"] = self.IP!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.serverName != nil {
                    map["ServerName"] = self.serverName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bond"] as? String {
                    self.bond = value
                }
                if let value = dict["IP"] as? String {
                    self.IP = value
                }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ServerName"] as? String {
                    self.serverName = value
                }
            }
        }
        public class Servers : Tea.TeaModel {
            public var bond: String?

            public var IP: String?

            public var nodeId: String?

            public var resourceId: String?

            public var serverName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bond != nil {
                    map["Bond"] = self.bond!
                }
                if self.IP != nil {
                    map["IP"] = self.IP!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.serverName != nil {
                    map["ServerName"] = self.serverName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bond"] as? String {
                    self.bond = value
                }
                if let value = dict["IP"] as? String {
                    self.IP = value
                }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ServerName"] as? String {
                    self.serverName = value
                }
            }
        }
        public var clients: [CreateNetTestTaskRequest.TrafficTest.Clients]?

        public var duration: Int64?

        public var GDR: Bool?

        public var protocol_: String?

        public var QP: Int64?

        public var servers: [CreateNetTestTaskRequest.TrafficTest.Servers]?

        public var trafficModel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clients != nil {
                var tmp : [Any] = []
                for k in self.clients! {
                    tmp.append(k.toMap())
                }
                map["Clients"] = tmp
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.GDR != nil {
                map["GDR"] = self.GDR!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.QP != nil {
                map["QP"] = self.QP!
            }
            if self.servers != nil {
                var tmp : [Any] = []
                for k in self.servers! {
                    tmp.append(k.toMap())
                }
                map["Servers"] = tmp
            }
            if self.trafficModel != nil {
                map["TrafficModel"] = self.trafficModel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Clients"] as? [Any?] {
                var tmp : [CreateNetTestTaskRequest.TrafficTest.Clients] = []
                for v in value {
                    if v != nil {
                        var model = CreateNetTestTaskRequest.TrafficTest.Clients()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.clients = tmp
            }
            if let value = dict["Duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["GDR"] as? Bool {
                self.GDR = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["QP"] as? Int64 {
                self.QP = value
            }
            if let value = dict["Servers"] as? [Any?] {
                var tmp : [CreateNetTestTaskRequest.TrafficTest.Servers] = []
                for v in value {
                    if v != nil {
                        var model = CreateNetTestTaskRequest.TrafficTest.Servers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.servers = tmp
            }
            if let value = dict["TrafficModel"] as? String {
                self.trafficModel = value
            }
        }
    }
    public var clusterId: String?

    public var clusterName: String?

    public var commTest: CreateNetTestTaskRequest.CommTest?

    public var delayTest: CreateNetTestTaskRequest.DelayTest?

    public var netTestType: String?

    public var networkMode: String?

    public var port: String?

    public var trafficTest: CreateNetTestTaskRequest.TrafficTest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.commTest?.validate()
        try self.delayTest?.validate()
        try self.trafficTest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.commTest != nil {
            map["CommTest"] = self.commTest?.toMap()
        }
        if self.delayTest != nil {
            map["DelayTest"] = self.delayTest?.toMap()
        }
        if self.netTestType != nil {
            map["NetTestType"] = self.netTestType!
        }
        if self.networkMode != nil {
            map["NetworkMode"] = self.networkMode!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.trafficTest != nil {
            map["TrafficTest"] = self.trafficTest?.toMap()
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
        if let value = dict["CommTest"] as? [String: Any?] {
            var model = CreateNetTestTaskRequest.CommTest()
            model.fromMap(value)
            self.commTest = model
        }
        if let value = dict["DelayTest"] as? [String: Any?] {
            var model = CreateNetTestTaskRequest.DelayTest()
            model.fromMap(value)
            self.delayTest = model
        }
        if let value = dict["NetTestType"] as? String {
            self.netTestType = value
        }
        if let value = dict["NetworkMode"] as? String {
            self.networkMode = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["TrafficTest"] as? [String: Any?] {
            var model = CreateNetTestTaskRequest.TrafficTest()
            model.fromMap(value)
            self.trafficTest = model
        }
    }
}

public class CreateNetTestTaskShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterName: String?

    public var commTestShrink: String?

    public var delayTestShrink: String?

    public var netTestType: String?

    public var networkMode: String?

    public var port: String?

    public var trafficTestShrink: String?

    public override init() {
        super.init()
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
        if self.commTestShrink != nil {
            map["CommTest"] = self.commTestShrink!
        }
        if self.delayTestShrink != nil {
            map["DelayTest"] = self.delayTestShrink!
        }
        if self.netTestType != nil {
            map["NetTestType"] = self.netTestType!
        }
        if self.networkMode != nil {
            map["NetworkMode"] = self.networkMode!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.trafficTestShrink != nil {
            map["TrafficTest"] = self.trafficTestShrink!
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
        if let value = dict["CommTest"] as? String {
            self.commTestShrink = value
        }
        if let value = dict["DelayTest"] as? String {
            self.delayTestShrink = value
        }
        if let value = dict["NetTestType"] as? String {
            self.netTestType = value
        }
        if let value = dict["NetworkMode"] as? String {
            self.networkMode = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["TrafficTest"] as? String {
            self.trafficTestShrink = value
        }
    }
}

public class CreateNetTestTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var testId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.testId != nil {
            map["TestId"] = self.testId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TestId"] as? String {
            self.testId = value
        }
    }
}

public class CreateNetTestTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNetTestTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateNetTestTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateNodeGroupRequest : Tea.TeaModel {
    public class NodeGroup : Tea.TeaModel {
        public class SystemDisk : Tea.TeaModel {
            public var category: String?

            public var performanceLevel: String?

            public var size: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.performanceLevel != nil {
                    map["PerformanceLevel"] = self.performanceLevel!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["PerformanceLevel"] as? String {
                    self.performanceLevel = value
                }
                if let value = dict["Size"] as? Int32 {
                    self.size = value
                }
            }
        }
        public var az: String?

        public var fileSystemMountEnabled: Bool?

        public var imageId: String?

        public var keyPairName: String?

        public var loginPassword: String?

        public var machineType: String?

        public var nodeGroupDescription: String?

        public var nodeGroupName: String?

        public var systemDisk: CreateNodeGroupRequest.NodeGroup.SystemDisk?

        public var userData: String?

        public var virtualGpuEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.systemDisk?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.az != nil {
                map["Az"] = self.az!
            }
            if self.fileSystemMountEnabled != nil {
                map["FileSystemMountEnabled"] = self.fileSystemMountEnabled!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.keyPairName != nil {
                map["KeyPairName"] = self.keyPairName!
            }
            if self.loginPassword != nil {
                map["LoginPassword"] = self.loginPassword!
            }
            if self.machineType != nil {
                map["MachineType"] = self.machineType!
            }
            if self.nodeGroupDescription != nil {
                map["NodeGroupDescription"] = self.nodeGroupDescription!
            }
            if self.nodeGroupName != nil {
                map["NodeGroupName"] = self.nodeGroupName!
            }
            if self.systemDisk != nil {
                map["SystemDisk"] = self.systemDisk?.toMap()
            }
            if self.userData != nil {
                map["UserData"] = self.userData!
            }
            if self.virtualGpuEnabled != nil {
                map["VirtualGpuEnabled"] = self.virtualGpuEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Az"] as? String {
                self.az = value
            }
            if let value = dict["FileSystemMountEnabled"] as? Bool {
                self.fileSystemMountEnabled = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["KeyPairName"] as? String {
                self.keyPairName = value
            }
            if let value = dict["LoginPassword"] as? String {
                self.loginPassword = value
            }
            if let value = dict["MachineType"] as? String {
                self.machineType = value
            }
            if let value = dict["NodeGroupDescription"] as? String {
                self.nodeGroupDescription = value
            }
            if let value = dict["NodeGroupName"] as? String {
                self.nodeGroupName = value
            }
            if let value = dict["SystemDisk"] as? [String: Any?] {
                var model = CreateNodeGroupRequest.NodeGroup.SystemDisk()
                model.fromMap(value)
                self.systemDisk = model
            }
            if let value = dict["UserData"] as? String {
                self.userData = value
            }
            if let value = dict["VirtualGpuEnabled"] as? Bool {
                self.virtualGpuEnabled = value
            }
        }
    }
    public var clusterId: String?

    public var nodeGroup: CreateNodeGroupRequest.NodeGroup?

    public var nodeUnit: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodeGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.nodeGroup != nil {
            map["NodeGroup"] = self.nodeGroup?.toMap()
        }
        if self.nodeUnit != nil {
            map["NodeUnit"] = self.nodeUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["NodeGroup"] as? [String: Any?] {
            var model = CreateNodeGroupRequest.NodeGroup()
            model.fromMap(value)
            self.nodeGroup = model
        }
        if let value = dict["NodeUnit"] as? [String: Any] {
            self.nodeUnit = value
        }
    }
}

public class CreateNodeGroupShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var nodeGroupShrink: String?

    public var nodeUnitShrink: String?

    public override init() {
        super.init()
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
        if self.nodeGroupShrink != nil {
            map["NodeGroup"] = self.nodeGroupShrink!
        }
        if self.nodeUnitShrink != nil {
            map["NodeUnit"] = self.nodeUnitShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["NodeGroup"] as? String {
            self.nodeGroupShrink = value
        }
        if let value = dict["NodeUnit"] as? String {
            self.nodeUnitShrink = value
        }
    }
}

public class CreateNodeGroupResponseBody : Tea.TeaModel {
    public var nodeGroupId: String?

    public var nodeGroupName: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.nodeGroupName != nil {
            map["NodeGroupName"] = self.nodeGroupName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["NodeGroupName"] as? String {
            self.nodeGroupName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateNodeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNodeGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateNodeGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSessionRequest : Tea.TeaModel {
    public var nodeId: String?

    public var sessionType: String?

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
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.sessionType != nil {
            map["SessionType"] = self.sessionType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["SessionType"] as? String {
            self.sessionType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class CreateSessionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serverSn: String?

    public var sessionId: String?

    public var sessionToken: String?

    public var wssEndpoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serverSn != nil {
            map["ServerSn"] = self.serverSn!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.sessionToken != nil {
            map["SessionToken"] = self.sessionToken!
        }
        if self.wssEndpoint != nil {
            map["WssEndpoint"] = self.wssEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServerSn"] as? String {
            self.serverSn = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SessionToken"] as? String {
            self.sessionToken = value
        }
        if let value = dict["WssEndpoint"] as? String {
            self.wssEndpoint = value
        }
    }
}

public class CreateSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSessionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVscRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var nodeId: String?

    public var resourceGroupId: String?

    public var tag: [CreateVscRequest.Tag]?

    public var vscName: String?

    public var vscType: String?

    public override init() {
        super.init()
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
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
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
        if self.vscName != nil {
            map["VscName"] = self.vscName!
        }
        if self.vscType != nil {
            map["VscType"] = self.vscType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateVscRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateVscRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VscName"] as? String {
            self.vscName = value
        }
        if let value = dict["VscType"] as? String {
            self.vscType = value
        }
    }
}

public class CreateVscResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var vscId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.vscId != nil {
            map["VscId"] = self.vscId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VscId"] as? String {
            self.vscId = value
        }
    }
}

public class CreateVscResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVscResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVscResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteClusterRequest : Tea.TeaModel {
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

public class DeleteClusterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNodeRequest : Tea.TeaModel {
    public var nodeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
    }
}

public class DeleteNodeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNodeGroupRequest : Tea.TeaModel {
    public var clusterId: String?

    public var nodeGroupId: String?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
    }
}

public class DeleteNodeGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteNodeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNodeGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteNodeGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVscRequest : Tea.TeaModel {
    public var clientToken: String?

    public var vscId: String?

    public override init() {
        super.init()
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
        if self.vscId != nil {
            map["VscId"] = self.vscId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["VscId"] as? String {
            self.vscId = value
        }
    }
}

public class DeleteVscResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteVscResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVscResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVscResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeClusterRequest : Tea.TeaModel {
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

public class DescribeClusterResponseBody : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public var componentId: String?

        public var componentType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.componentId != nil {
                map["ComponentId"] = self.componentId!
            }
            if self.componentType != nil {
                map["ComponentType"] = self.componentType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ComponentId"] as? String {
                self.componentId = value
            }
            if let value = dict["ComponentType"] as? String {
                self.componentType = value
            }
        }
    }
    public class Networks : Tea.TeaModel {
        public var vpdId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VpdId"] as? String {
                self.vpdId = value
            }
        }
    }
    public var clusterDescription: String?

    public var clusterId: String?

    public var clusterName: String?

    public var clusterType: String?

    public var components: [DescribeClusterResponseBody.Components]?

    public var computingIpVersion: String?

    public var createTime: String?

    public var hpnZone: String?

    public var networks: DescribeClusterResponseBody.Networks?

    public var nodeCount: Int64?

    public var nodeGroupCount: Int64?

    public var openEniJumboFrame: String?

    public var operatingState: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var taskId: String?

    public var updateTime: String?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterDescription != nil {
            map["ClusterDescription"] = self.clusterDescription!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["Components"] = tmp
        }
        if self.computingIpVersion != nil {
            map["ComputingIpVersion"] = self.computingIpVersion!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.hpnZone != nil {
            map["HpnZone"] = self.hpnZone!
        }
        if self.networks != nil {
            map["Networks"] = self.networks?.toMap()
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.nodeGroupCount != nil {
            map["NodeGroupCount"] = self.nodeGroupCount!
        }
        if self.openEniJumboFrame != nil {
            map["OpenEniJumboFrame"] = self.openEniJumboFrame!
        }
        if self.operatingState != nil {
            map["OperatingState"] = self.operatingState!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterDescription"] as? String {
            self.clusterDescription = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["ClusterType"] as? String {
            self.clusterType = value
        }
        if let value = dict["Components"] as? [Any?] {
            var tmp : [DescribeClusterResponseBody.Components] = []
            for v in value {
                if v != nil {
                    var model = DescribeClusterResponseBody.Components()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.components = tmp
        }
        if let value = dict["ComputingIpVersion"] as? String {
            self.computingIpVersion = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["HpnZone"] as? String {
            self.hpnZone = value
        }
        if let value = dict["Networks"] as? [String: Any?] {
            var model = DescribeClusterResponseBody.Networks()
            model.fromMap(value)
            self.networks = model
        }
        if let value = dict["NodeCount"] as? Int64 {
            self.nodeCount = value
        }
        if let value = dict["NodeGroupCount"] as? Int64 {
            self.nodeGroupCount = value
        }
        if let value = dict["OpenEniJumboFrame"] as? String {
            self.openEniJumboFrame = value
        }
        if let value = dict["OperatingState"] as? String {
            self.operatingState = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DescribeClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDiagnosticResultRequest : Tea.TeaModel {
    public var diagnosticId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diagnosticId != nil {
            map["DiagnosticId"] = self.diagnosticId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiagnosticId"] as? String {
            self.diagnosticId = value
        }
    }
}

public class DescribeDiagnosticResultResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var createdTime: String?

    public var diagnosticId: String?

    public var diagnosticResults: [Any]?

    public var diagnosticState: String?

    public var diagnosticType: String?

    public var endTime: String?

    public var nodeIds: [String]?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.diagnosticId != nil {
            map["DiagnosticId"] = self.diagnosticId!
        }
        if self.diagnosticResults != nil {
            map["DiagnosticResults"] = self.diagnosticResults!
        }
        if self.diagnosticState != nil {
            map["DiagnosticState"] = self.diagnosticState!
        }
        if self.diagnosticType != nil {
            map["DiagnosticType"] = self.diagnosticType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.nodeIds != nil {
            map["NodeIds"] = self.nodeIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["DiagnosticId"] as? String {
            self.diagnosticId = value
        }
        if let value = dict["DiagnosticResults"] as? [Any] {
            self.diagnosticResults = value
        }
        if let value = dict["DiagnosticState"] as? String {
            self.diagnosticState = value
        }
        if let value = dict["DiagnosticType"] as? String {
            self.diagnosticType = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["NodeIds"] as? [String] {
            self.nodeIds = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDiagnosticResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiagnosticResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDiagnosticResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInvocationsRequest : Tea.TeaModel {
    public var contentEncoding: String?

    public var includeOutput: Bool?

    public var invokeId: String?

    public var nodeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentEncoding != nil {
            map["ContentEncoding"] = self.contentEncoding!
        }
        if self.includeOutput != nil {
            map["IncludeOutput"] = self.includeOutput!
        }
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContentEncoding"] as? String {
            self.contentEncoding = value
        }
        if let value = dict["IncludeOutput"] as? Bool {
            self.includeOutput = value
        }
        if let value = dict["InvokeId"] as? String {
            self.invokeId = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
    }
}

public class DescribeInvocationsResponseBody : Tea.TeaModel {
    public class Invocations : Tea.TeaModel {
        public class Invocation : Tea.TeaModel {
            public class InvokeNodes : Tea.TeaModel {
                public class InvokeNode : Tea.TeaModel {
                    public var creationTime: String?

                    public var dropped: Int32?

                    public var errorCode: String?

                    public var errorInfo: String?

                    public var exitCode: Int32?

                    public var finishTime: String?

                    public var invocationStatus: String?

                    public var nodeId: String?

                    public var nodeInvokeStatus: String?

                    public var output: String?

                    public var repeats: Int32?

                    public var startTime: String?

                    public var stopTime: String?

                    public var timed: String?

                    public var updateTime: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.creationTime != nil {
                            map["CreationTime"] = self.creationTime!
                        }
                        if self.dropped != nil {
                            map["Dropped"] = self.dropped!
                        }
                        if self.errorCode != nil {
                            map["ErrorCode"] = self.errorCode!
                        }
                        if self.errorInfo != nil {
                            map["ErrorInfo"] = self.errorInfo!
                        }
                        if self.exitCode != nil {
                            map["ExitCode"] = self.exitCode!
                        }
                        if self.finishTime != nil {
                            map["FinishTime"] = self.finishTime!
                        }
                        if self.invocationStatus != nil {
                            map["InvocationStatus"] = self.invocationStatus!
                        }
                        if self.nodeId != nil {
                            map["NodeId"] = self.nodeId!
                        }
                        if self.nodeInvokeStatus != nil {
                            map["NodeInvokeStatus"] = self.nodeInvokeStatus!
                        }
                        if self.output != nil {
                            map["Output"] = self.output!
                        }
                        if self.repeats != nil {
                            map["Repeats"] = self.repeats!
                        }
                        if self.startTime != nil {
                            map["StartTime"] = self.startTime!
                        }
                        if self.stopTime != nil {
                            map["StopTime"] = self.stopTime!
                        }
                        if self.timed != nil {
                            map["Timed"] = self.timed!
                        }
                        if self.updateTime != nil {
                            map["UpdateTime"] = self.updateTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CreationTime"] as? String {
                            self.creationTime = value
                        }
                        if let value = dict["Dropped"] as? Int32 {
                            self.dropped = value
                        }
                        if let value = dict["ErrorCode"] as? String {
                            self.errorCode = value
                        }
                        if let value = dict["ErrorInfo"] as? String {
                            self.errorInfo = value
                        }
                        if let value = dict["ExitCode"] as? Int32 {
                            self.exitCode = value
                        }
                        if let value = dict["FinishTime"] as? String {
                            self.finishTime = value
                        }
                        if let value = dict["InvocationStatus"] as? String {
                            self.invocationStatus = value
                        }
                        if let value = dict["NodeId"] as? String {
                            self.nodeId = value
                        }
                        if let value = dict["NodeInvokeStatus"] as? String {
                            self.nodeInvokeStatus = value
                        }
                        if let value = dict["Output"] as? String {
                            self.output = value
                        }
                        if let value = dict["Repeats"] as? Int32 {
                            self.repeats = value
                        }
                        if let value = dict["StartTime"] as? String {
                            self.startTime = value
                        }
                        if let value = dict["StopTime"] as? String {
                            self.stopTime = value
                        }
                        if let value = dict["Timed"] as? String {
                            self.timed = value
                        }
                        if let value = dict["UpdateTime"] as? String {
                            self.updateTime = value
                        }
                    }
                }
                public var invokeNode: [DescribeInvocationsResponseBody.Invocations.Invocation.InvokeNodes.InvokeNode]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.invokeNode != nil {
                        var tmp : [Any] = []
                        for k in self.invokeNode! {
                            tmp.append(k.toMap())
                        }
                        map["InvokeNode"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["InvokeNode"] as? [Any?] {
                        var tmp : [DescribeInvocationsResponseBody.Invocations.Invocation.InvokeNodes.InvokeNode] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeInvocationsResponseBody.Invocations.Invocation.InvokeNodes.InvokeNode()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.invokeNode = tmp
                    }
                }
            }
            public var commandContent: String?

            public var commandDescription: String?

            public var commandName: String?

            public var creationTime: String?

            public var frequency: String?

            public var invocationStatus: String?

            public var invokeId: String?

            public var invokeNodes: DescribeInvocationsResponseBody.Invocations.Invocation.InvokeNodes?

            public var invokeStatus: String?

            public var parameters: String?

            public var repeatMode: String?

            public var timeout: Int32?

            public var username: String?

            public var workingDir: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.invokeNodes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commandContent != nil {
                    map["CommandContent"] = self.commandContent!
                }
                if self.commandDescription != nil {
                    map["CommandDescription"] = self.commandDescription!
                }
                if self.commandName != nil {
                    map["CommandName"] = self.commandName!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.frequency != nil {
                    map["Frequency"] = self.frequency!
                }
                if self.invocationStatus != nil {
                    map["InvocationStatus"] = self.invocationStatus!
                }
                if self.invokeId != nil {
                    map["InvokeId"] = self.invokeId!
                }
                if self.invokeNodes != nil {
                    map["InvokeNodes"] = self.invokeNodes?.toMap()
                }
                if self.invokeStatus != nil {
                    map["InvokeStatus"] = self.invokeStatus!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.repeatMode != nil {
                    map["RepeatMode"] = self.repeatMode!
                }
                if self.timeout != nil {
                    map["Timeout"] = self.timeout!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                if self.workingDir != nil {
                    map["WorkingDir"] = self.workingDir!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommandContent"] as? String {
                    self.commandContent = value
                }
                if let value = dict["CommandDescription"] as? String {
                    self.commandDescription = value
                }
                if let value = dict["CommandName"] as? String {
                    self.commandName = value
                }
                if let value = dict["CreationTime"] as? String {
                    self.creationTime = value
                }
                if let value = dict["Frequency"] as? String {
                    self.frequency = value
                }
                if let value = dict["InvocationStatus"] as? String {
                    self.invocationStatus = value
                }
                if let value = dict["InvokeId"] as? String {
                    self.invokeId = value
                }
                if let value = dict["InvokeNodes"] as? [String: Any?] {
                    var model = DescribeInvocationsResponseBody.Invocations.Invocation.InvokeNodes()
                    model.fromMap(value)
                    self.invokeNodes = model
                }
                if let value = dict["InvokeStatus"] as? String {
                    self.invokeStatus = value
                }
                if let value = dict["Parameters"] as? String {
                    self.parameters = value
                }
                if let value = dict["RepeatMode"] as? String {
                    self.repeatMode = value
                }
                if let value = dict["Timeout"] as? Int32 {
                    self.timeout = value
                }
                if let value = dict["Username"] as? String {
                    self.username = value
                }
                if let value = dict["WorkingDir"] as? String {
                    self.workingDir = value
                }
            }
        }
        public var invocation: [DescribeInvocationsResponseBody.Invocations.Invocation]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.invocation != nil {
                var tmp : [Any] = []
                for k in self.invocation! {
                    tmp.append(k.toMap())
                }
                map["Invocation"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Invocation"] as? [Any?] {
                var tmp : [DescribeInvocationsResponseBody.Invocations.Invocation] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInvocationsResponseBody.Invocations.Invocation()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.invocation = tmp
            }
        }
    }
    public var invocations: DescribeInvocationsResponseBody.Invocations?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.invocations?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invocations != nil {
            map["Invocations"] = self.invocations?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Invocations"] as? [String: Any?] {
            var model = DescribeInvocationsResponseBody.Invocations()
            model.fromMap(value)
            self.invocations = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInvocationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInvocationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInvocationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNetTestResultRequest : Tea.TeaModel {
    public var testId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.testId != nil {
            map["TestId"] = self.testId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TestId"] as? String {
            self.testId = value
        }
    }
}

public class DescribeNetTestResultResponseBody : Tea.TeaModel {
    public class CommTest : Tea.TeaModel {
        public class Hosts : Tea.TeaModel {
            public var IP: String?

            public var resourceId: String?

            public var serverName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.IP != nil {
                    map["IP"] = self.IP!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.serverName != nil {
                    map["ServerName"] = self.serverName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IP"] as? String {
                    self.IP = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ServerName"] as? String {
                    self.serverName = value
                }
            }
        }
        public var GPUNum: String?

        public var hosts: [DescribeNetTestResultResponseBody.CommTest.Hosts]?

        public var model: String?

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
            if self.GPUNum != nil {
                map["GPUNum"] = self.GPUNum!
            }
            if self.hosts != nil {
                var tmp : [Any] = []
                for k in self.hosts! {
                    tmp.append(k.toMap())
                }
                map["Hosts"] = tmp
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GPUNum"] as? String {
                self.GPUNum = value
            }
            if let value = dict["Hosts"] as? [Any?] {
                var tmp : [DescribeNetTestResultResponseBody.CommTest.Hosts] = []
                for v in value {
                    if v != nil {
                        var model = DescribeNetTestResultResponseBody.CommTest.Hosts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hosts = tmp
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class DelayTest : Tea.TeaModel {
        public class Hosts : Tea.TeaModel {
            public var bond: String?

            public var IP: String?

            public var resourceId: String?

            public var serverName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bond != nil {
                    map["Bond"] = self.bond!
                }
                if self.IP != nil {
                    map["IP"] = self.IP!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.serverName != nil {
                    map["ServerName"] = self.serverName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bond"] as? String {
                    self.bond = value
                }
                if let value = dict["IP"] as? String {
                    self.IP = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ServerName"] as? String {
                    self.serverName = value
                }
            }
        }
        public var hosts: [DescribeNetTestResultResponseBody.DelayTest.Hosts]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hosts != nil {
                var tmp : [Any] = []
                for k in self.hosts! {
                    tmp.append(k.toMap())
                }
                map["Hosts"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Hosts"] as? [Any?] {
                var tmp : [DescribeNetTestResultResponseBody.DelayTest.Hosts] = []
                for v in value {
                    if v != nil {
                        var model = DescribeNetTestResultResponseBody.DelayTest.Hosts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hosts = tmp
            }
        }
    }
    public class TrafficTest : Tea.TeaModel {
        public class Clients : Tea.TeaModel {
            public var bond: String?

            public var IP: String?

            public var resourceId: String?

            public var serverName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bond != nil {
                    map["Bond"] = self.bond!
                }
                if self.IP != nil {
                    map["IP"] = self.IP!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.serverName != nil {
                    map["ServerName"] = self.serverName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bond"] as? String {
                    self.bond = value
                }
                if let value = dict["IP"] as? String {
                    self.IP = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ServerName"] as? String {
                    self.serverName = value
                }
            }
        }
        public class Servers : Tea.TeaModel {
            public var bond: String?

            public var IP: String?

            public var resourceId: String?

            public var serverName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bond != nil {
                    map["Bond"] = self.bond!
                }
                if self.IP != nil {
                    map["IP"] = self.IP!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.serverName != nil {
                    map["ServerName"] = self.serverName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bond"] as? String {
                    self.bond = value
                }
                if let value = dict["IP"] as? String {
                    self.IP = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ServerName"] as? String {
                    self.serverName = value
                }
            }
        }
        public var clients: [DescribeNetTestResultResponseBody.TrafficTest.Clients]?

        public var duration: Int64?

        public var GDR: String?

        public var protocol_: String?

        public var QP: Int64?

        public var servers: [DescribeNetTestResultResponseBody.TrafficTest.Servers]?

        public var trafficModel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clients != nil {
                var tmp : [Any] = []
                for k in self.clients! {
                    tmp.append(k.toMap())
                }
                map["Clients"] = tmp
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.GDR != nil {
                map["GDR"] = self.GDR!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.QP != nil {
                map["QP"] = self.QP!
            }
            if self.servers != nil {
                var tmp : [Any] = []
                for k in self.servers! {
                    tmp.append(k.toMap())
                }
                map["Servers"] = tmp
            }
            if self.trafficModel != nil {
                map["TrafficModel"] = self.trafficModel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Clients"] as? [Any?] {
                var tmp : [DescribeNetTestResultResponseBody.TrafficTest.Clients] = []
                for v in value {
                    if v != nil {
                        var model = DescribeNetTestResultResponseBody.TrafficTest.Clients()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.clients = tmp
            }
            if let value = dict["Duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["GDR"] as? String {
                self.GDR = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["QP"] as? Int64 {
                self.QP = value
            }
            if let value = dict["Servers"] as? [Any?] {
                var tmp : [DescribeNetTestResultResponseBody.TrafficTest.Servers] = []
                for v in value {
                    if v != nil {
                        var model = DescribeNetTestResultResponseBody.TrafficTest.Servers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.servers = tmp
            }
            if let value = dict["TrafficModel"] as? String {
                self.trafficModel = value
            }
        }
    }
    public var clusterId: String?

    public var clusterName: String?

    public var commTest: DescribeNetTestResultResponseBody.CommTest?

    public var creationTime: String?

    public var delayTest: DescribeNetTestResultResponseBody.DelayTest?

    public var finishedTime: String?

    public var netTestType: String?

    public var port: String?

    public var requestId: String?

    public var resultDetial: String?

    public var status: String?

    public var testId: String?

    public var trafficTest: DescribeNetTestResultResponseBody.TrafficTest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.commTest?.validate()
        try self.delayTest?.validate()
        try self.trafficTest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.commTest != nil {
            map["CommTest"] = self.commTest?.toMap()
        }
        if self.creationTime != nil {
            map["CreationTime"] = self.creationTime!
        }
        if self.delayTest != nil {
            map["DelayTest"] = self.delayTest?.toMap()
        }
        if self.finishedTime != nil {
            map["FinishedTime"] = self.finishedTime!
        }
        if self.netTestType != nil {
            map["NetTestType"] = self.netTestType!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultDetial != nil {
            map["ResultDetial"] = self.resultDetial!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.testId != nil {
            map["TestId"] = self.testId!
        }
        if self.trafficTest != nil {
            map["TrafficTest"] = self.trafficTest?.toMap()
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
        if let value = dict["CommTest"] as? [String: Any?] {
            var model = DescribeNetTestResultResponseBody.CommTest()
            model.fromMap(value)
            self.commTest = model
        }
        if let value = dict["CreationTime"] as? String {
            self.creationTime = value
        }
        if let value = dict["DelayTest"] as? [String: Any?] {
            var model = DescribeNetTestResultResponseBody.DelayTest()
            model.fromMap(value)
            self.delayTest = model
        }
        if let value = dict["FinishedTime"] as? String {
            self.finishedTime = value
        }
        if let value = dict["NetTestType"] as? String {
            self.netTestType = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultDetial"] as? String {
            self.resultDetial = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TestId"] as? String {
            self.testId = value
        }
        if let value = dict["TrafficTest"] as? [String: Any?] {
            var model = DescribeNetTestResultResponseBody.TrafficTest()
            model.fromMap(value)
            self.trafficTest = model
        }
    }
}

public class DescribeNetTestResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNetTestResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeNetTestResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNodeRequest : Tea.TeaModel {
    public var nodeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
    }
}

public class DescribeNodeResponseBody : Tea.TeaModel {
    public class Disks : Tea.TeaModel {
        public var category: String?

        public var diskId: String?

        public var performanceLevel: String?

        public var size: Int32?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.diskId != nil {
                map["DiskId"] = self.diskId!
            }
            if self.performanceLevel != nil {
                map["PerformanceLevel"] = self.performanceLevel!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["DiskId"] as? String {
                self.diskId = value
            }
            if let value = dict["PerformanceLevel"] as? String {
                self.performanceLevel = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class Networks : Tea.TeaModel {
        public var bondName: String?

        public var ip: String?

        public var subnetId: String?

        public var vpdId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bondName != nil {
                map["BondName"] = self.bondName!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.subnetId != nil {
                map["SubnetId"] = self.subnetId!
            }
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BondName"] as? String {
                self.bondName = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["SubnetId"] as? String {
                self.subnetId = value
            }
            if let value = dict["VpdId"] as? String {
                self.vpdId = value
            }
        }
    }
    public var clusterId: String?

    public var clusterName: String?

    public var createTime: String?

    public var disks: [DescribeNodeResponseBody.Disks]?

    public var expiredTime: String?

    public var fileSystemMountEnabled: Bool?

    public var hostname: String?

    public var hpnZone: String?

    public var hyperNodeId: String?

    public var imageId: String?

    public var imageName: String?

    public var machineType: String?

    public var networks: [DescribeNodeResponseBody.Networks]?

    public var nodeGroupId: String?

    public var nodeGroupName: String?

    public var nodeId: String?

    public var nodeType: String?

    public var operatingState: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var sn: String?

    public var userData: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.disks != nil {
            var tmp : [Any] = []
            for k in self.disks! {
                tmp.append(k.toMap())
            }
            map["Disks"] = tmp
        }
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.fileSystemMountEnabled != nil {
            map["FileSystemMountEnabled"] = self.fileSystemMountEnabled!
        }
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.hpnZone != nil {
            map["HpnZone"] = self.hpnZone!
        }
        if self.hyperNodeId != nil {
            map["HyperNodeId"] = self.hyperNodeId!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.machineType != nil {
            map["MachineType"] = self.machineType!
        }
        if self.networks != nil {
            var tmp : [Any] = []
            for k in self.networks! {
                tmp.append(k.toMap())
            }
            map["Networks"] = tmp
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.nodeGroupName != nil {
            map["NodeGroupName"] = self.nodeGroupName!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.nodeType != nil {
            map["NodeType"] = self.nodeType!
        }
        if self.operatingState != nil {
            map["OperatingState"] = self.operatingState!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
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
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Disks"] as? [Any?] {
            var tmp : [DescribeNodeResponseBody.Disks] = []
            for v in value {
                if v != nil {
                    var model = DescribeNodeResponseBody.Disks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.disks = tmp
        }
        if let value = dict["ExpiredTime"] as? String {
            self.expiredTime = value
        }
        if let value = dict["FileSystemMountEnabled"] as? Bool {
            self.fileSystemMountEnabled = value
        }
        if let value = dict["Hostname"] as? String {
            self.hostname = value
        }
        if let value = dict["HpnZone"] as? String {
            self.hpnZone = value
        }
        if let value = dict["HyperNodeId"] as? String {
            self.hyperNodeId = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ImageName"] as? String {
            self.imageName = value
        }
        if let value = dict["MachineType"] as? String {
            self.machineType = value
        }
        if let value = dict["Networks"] as? [Any?] {
            var tmp : [DescribeNodeResponseBody.Networks] = []
            for v in value {
                if v != nil {
                    var model = DescribeNodeResponseBody.Networks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.networks = tmp
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["NodeGroupName"] as? String {
            self.nodeGroupName = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["NodeType"] as? String {
            self.nodeType = value
        }
        if let value = dict["OperatingState"] as? String {
            self.operatingState = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Sn"] as? String {
            self.sn = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNodeTypeRequest : Tea.TeaModel {
    public var nodeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeType != nil {
            map["NodeType"] = self.nodeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeType"] as? String {
            self.nodeType = value
        }
    }
}

public class DescribeNodeTypeResponseBody : Tea.TeaModel {
    public var eniHighDenseQuantity: Int32?

    public var eniIpv6AddressQuantity: Int32?

    public var eniPrivateIpAddressQuantity: Int32?

    public var eniQuantity: Int32?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eniHighDenseQuantity != nil {
            map["EniHighDenseQuantity"] = self.eniHighDenseQuantity!
        }
        if self.eniIpv6AddressQuantity != nil {
            map["EniIpv6AddressQuantity"] = self.eniIpv6AddressQuantity!
        }
        if self.eniPrivateIpAddressQuantity != nil {
            map["EniPrivateIpAddressQuantity"] = self.eniPrivateIpAddressQuantity!
        }
        if self.eniQuantity != nil {
            map["EniQuantity"] = self.eniQuantity!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EniHighDenseQuantity"] as? Int32 {
            self.eniHighDenseQuantity = value
        }
        if let value = dict["EniIpv6AddressQuantity"] as? Int32 {
            self.eniIpv6AddressQuantity = value
        }
        if let value = dict["EniPrivateIpAddressQuantity"] as? Int32 {
            self.eniPrivateIpAddressQuantity = value
        }
        if let value = dict["EniQuantity"] as? Int32 {
            self.eniQuantity = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeNodeTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNodeTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeNodeTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var regions: [DescribeRegionsResponseBody.Regions]?

    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
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

public class DescribeSendFileResultsRequest : Tea.TeaModel {
    public var invokeId: String?

    public var nodeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InvokeId"] as? String {
            self.invokeId = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
    }
}

public class DescribeSendFileResultsResponseBody : Tea.TeaModel {
    public class Invocations : Tea.TeaModel {
        public class Invocation : Tea.TeaModel {
            public class InvokeNodes : Tea.TeaModel {
                public class InvokeNode : Tea.TeaModel {
                    public var creationTime: String?

                    public var errorCode: String?

                    public var errorInfo: String?

                    public var finishTime: String?

                    public var invocationStatus: String?

                    public var nodeId: String?

                    public var startTime: String?

                    public var updateTime: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.creationTime != nil {
                            map["CreationTime"] = self.creationTime!
                        }
                        if self.errorCode != nil {
                            map["ErrorCode"] = self.errorCode!
                        }
                        if self.errorInfo != nil {
                            map["ErrorInfo"] = self.errorInfo!
                        }
                        if self.finishTime != nil {
                            map["FinishTime"] = self.finishTime!
                        }
                        if self.invocationStatus != nil {
                            map["InvocationStatus"] = self.invocationStatus!
                        }
                        if self.nodeId != nil {
                            map["NodeId"] = self.nodeId!
                        }
                        if self.startTime != nil {
                            map["StartTime"] = self.startTime!
                        }
                        if self.updateTime != nil {
                            map["UpdateTime"] = self.updateTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CreationTime"] as? String {
                            self.creationTime = value
                        }
                        if let value = dict["ErrorCode"] as? String {
                            self.errorCode = value
                        }
                        if let value = dict["ErrorInfo"] as? String {
                            self.errorInfo = value
                        }
                        if let value = dict["FinishTime"] as? String {
                            self.finishTime = value
                        }
                        if let value = dict["InvocationStatus"] as? String {
                            self.invocationStatus = value
                        }
                        if let value = dict["NodeId"] as? String {
                            self.nodeId = value
                        }
                        if let value = dict["StartTime"] as? String {
                            self.startTime = value
                        }
                        if let value = dict["UpdateTime"] as? String {
                            self.updateTime = value
                        }
                    }
                }
                public var invokeNode: [DescribeSendFileResultsResponseBody.Invocations.Invocation.InvokeNodes.InvokeNode]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.invokeNode != nil {
                        var tmp : [Any] = []
                        for k in self.invokeNode! {
                            tmp.append(k.toMap())
                        }
                        map["InvokeNode"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["InvokeNode"] as? [Any?] {
                        var tmp : [DescribeSendFileResultsResponseBody.Invocations.Invocation.InvokeNodes.InvokeNode] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeSendFileResultsResponseBody.Invocations.Invocation.InvokeNodes.InvokeNode()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.invokeNode = tmp
                    }
                }
            }
            public var content: String?

            public var contentType: String?

            public var creationTime: String?

            public var description_: String?

            public var fileGroup: String?

            public var fileMode: String?

            public var fileOwner: String?

            public var invocationStatus: String?

            public var invokeNodes: DescribeSendFileResultsResponseBody.Invocations.Invocation.InvokeNodes?

            public var name: String?

            public var nodeCount: Int32?

            public var overwrite: Bool?

            public var targetDir: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.invokeNodes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.contentType != nil {
                    map["ContentType"] = self.contentType!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.fileGroup != nil {
                    map["FileGroup"] = self.fileGroup!
                }
                if self.fileMode != nil {
                    map["FileMode"] = self.fileMode!
                }
                if self.fileOwner != nil {
                    map["FileOwner"] = self.fileOwner!
                }
                if self.invocationStatus != nil {
                    map["InvocationStatus"] = self.invocationStatus!
                }
                if self.invokeNodes != nil {
                    map["InvokeNodes"] = self.invokeNodes?.toMap()
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nodeCount != nil {
                    map["NodeCount"] = self.nodeCount!
                }
                if self.overwrite != nil {
                    map["Overwrite"] = self.overwrite!
                }
                if self.targetDir != nil {
                    map["TargetDir"] = self.targetDir!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["ContentType"] as? String {
                    self.contentType = value
                }
                if let value = dict["CreationTime"] as? String {
                    self.creationTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["FileGroup"] as? String {
                    self.fileGroup = value
                }
                if let value = dict["FileMode"] as? String {
                    self.fileMode = value
                }
                if let value = dict["FileOwner"] as? String {
                    self.fileOwner = value
                }
                if let value = dict["InvocationStatus"] as? String {
                    self.invocationStatus = value
                }
                if let value = dict["InvokeNodes"] as? [String: Any?] {
                    var model = DescribeSendFileResultsResponseBody.Invocations.Invocation.InvokeNodes()
                    model.fromMap(value)
                    self.invokeNodes = model
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NodeCount"] as? Int32 {
                    self.nodeCount = value
                }
                if let value = dict["Overwrite"] as? Bool {
                    self.overwrite = value
                }
                if let value = dict["TargetDir"] as? String {
                    self.targetDir = value
                }
            }
        }
        public var invocation: [DescribeSendFileResultsResponseBody.Invocations.Invocation]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.invocation != nil {
                var tmp : [Any] = []
                for k in self.invocation! {
                    tmp.append(k.toMap())
                }
                map["Invocation"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Invocation"] as? [Any?] {
                var tmp : [DescribeSendFileResultsResponseBody.Invocations.Invocation] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSendFileResultsResponseBody.Invocations.Invocation()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.invocation = tmp
            }
        }
    }
    public var invocations: DescribeSendFileResultsResponseBody.Invocations?

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
        try self.invocations?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invocations != nil {
            map["Invocations"] = self.invocations?.toMap()
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
        if let value = dict["Invocations"] as? [String: Any?] {
            var model = DescribeSendFileResultsResponseBody.Invocations()
            model.fromMap(value)
            self.invocations = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeSendFileResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSendFileResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSendFileResultsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTaskRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class DescribeTaskResponseBody : Tea.TeaModel {
    public class Steps : Tea.TeaModel {
        public class SubTasks : Tea.TeaModel {
            public var createTime: String?

            public var message: String?

            public var taskId: String?

            public var taskState: String?

            public var taskType: String?

            public var updateTime: String?

            public override init() {
                super.init()
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
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskState != nil {
                    map["TaskState"] = self.taskState!
                }
                if self.taskType != nil {
                    map["TaskType"] = self.taskType!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["TaskState"] as? String {
                    self.taskState = value
                }
                if let value = dict["TaskType"] as? String {
                    self.taskType = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
            }
        }
        public var message: String?

        public var stageTag: String?

        public var startTime: String?

        public var stepName: String?

        public var stepState: String?

        public var stepType: String?

        public var subTasks: [DescribeTaskResponseBody.Steps.SubTasks]?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.stageTag != nil {
                map["StageTag"] = self.stageTag!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.stepName != nil {
                map["StepName"] = self.stepName!
            }
            if self.stepState != nil {
                map["StepState"] = self.stepState!
            }
            if self.stepType != nil {
                map["StepType"] = self.stepType!
            }
            if self.subTasks != nil {
                var tmp : [Any] = []
                for k in self.subTasks! {
                    tmp.append(k.toMap())
                }
                map["SubTasks"] = tmp
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["StageTag"] as? String {
                self.stageTag = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["StepName"] as? String {
                self.stepName = value
            }
            if let value = dict["StepState"] as? String {
                self.stepState = value
            }
            if let value = dict["StepType"] as? String {
                self.stepType = value
            }
            if let value = dict["SubTasks"] as? [Any?] {
                var tmp : [DescribeTaskResponseBody.Steps.SubTasks] = []
                for v in value {
                    if v != nil {
                        var model = DescribeTaskResponseBody.Steps.SubTasks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subTasks = tmp
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var clusterId: String?

    public var clusterName: String?

    public var createTime: String?

    public var message: String?

    public var nodeIds: [String]?

    public var requestId: String?

    public var steps: [DescribeTaskResponseBody.Steps]?

    public var taskState: String?

    public var taskType: String?

    public var updateTime: String?

    public override init() {
        super.init()
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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nodeIds != nil {
            map["NodeIds"] = self.nodeIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.steps != nil {
            var tmp : [Any] = []
            for k in self.steps! {
                tmp.append(k.toMap())
            }
            map["Steps"] = tmp
        }
        if self.taskState != nil {
            map["TaskState"] = self.taskState!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
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
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NodeIds"] as? [String] {
            self.nodeIds = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Steps"] as? [Any?] {
            var tmp : [DescribeTaskResponseBody.Steps] = []
            for v in value {
                if v != nil {
                    var model = DescribeTaskResponseBody.Steps()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.steps = tmp
        }
        if let value = dict["TaskState"] as? String {
            self.taskState = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class DescribeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVscRequest : Tea.TeaModel {
    public var vscId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.vscId != nil {
            map["VscId"] = self.vscId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VscId"] as? String {
            self.vscId = value
        }
    }
}

public class DescribeVscResponseBody : Tea.TeaModel {
    public var nodeId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var status: String?

    public var vscId: String?

    public var vscName: String?

    public var vscType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.vscId != nil {
            map["VscId"] = self.vscId!
        }
        if self.vscName != nil {
            map["VscName"] = self.vscName!
        }
        if self.vscType != nil {
            map["VscType"] = self.vscType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["VscId"] as? String {
            self.vscId = value
        }
        if let value = dict["VscName"] as? String {
            self.vscName = value
        }
        if let value = dict["VscType"] as? String {
            self.vscType = value
        }
    }
}

public class DescribeVscResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVscResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVscResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeZonesRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
    }
}

public class DescribeZonesResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var requestId: String?

    public var zones: [DescribeZonesResponseBody.Zones]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Zones"] as? [Any?] {
            var tmp : [DescribeZonesResponseBody.Zones] = []
            for v in value {
                if v != nil {
                    var model = DescribeZonesResponseBody.Zones()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.zones = tmp
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

public class ExtendClusterRequest : Tea.TeaModel {
    public class IpAllocationPolicy : Tea.TeaModel {
        public class BondPolicy : Tea.TeaModel {
            public class Bonds : Tea.TeaModel {
                public var name: String?

                public var subnet: String?

                public override init() {
                    super.init()
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
                    if self.subnet != nil {
                        map["Subnet"] = self.subnet!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Subnet"] as? String {
                        self.subnet = value
                    }
                }
            }
            public var bondDefaultSubnet: String?

            public var bonds: [ExtendClusterRequest.IpAllocationPolicy.BondPolicy.Bonds]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bondDefaultSubnet != nil {
                    map["BondDefaultSubnet"] = self.bondDefaultSubnet!
                }
                if self.bonds != nil {
                    var tmp : [Any] = []
                    for k in self.bonds! {
                        tmp.append(k.toMap())
                    }
                    map["Bonds"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BondDefaultSubnet"] as? String {
                    self.bondDefaultSubnet = value
                }
                if let value = dict["Bonds"] as? [Any?] {
                    var tmp : [ExtendClusterRequest.IpAllocationPolicy.BondPolicy.Bonds] = []
                    for v in value {
                        if v != nil {
                            var model = ExtendClusterRequest.IpAllocationPolicy.BondPolicy.Bonds()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.bonds = tmp
                }
            }
        }
        public class MachineTypePolicy : Tea.TeaModel {
            public class Bonds : Tea.TeaModel {
                public var name: String?

                public var subnet: String?

                public override init() {
                    super.init()
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
                    if self.subnet != nil {
                        map["Subnet"] = self.subnet!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Subnet"] as? String {
                        self.subnet = value
                    }
                }
            }
            public var bonds: [ExtendClusterRequest.IpAllocationPolicy.MachineTypePolicy.Bonds]?

            public var machineType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bonds != nil {
                    var tmp : [Any] = []
                    for k in self.bonds! {
                        tmp.append(k.toMap())
                    }
                    map["Bonds"] = tmp
                }
                if self.machineType != nil {
                    map["MachineType"] = self.machineType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bonds"] as? [Any?] {
                    var tmp : [ExtendClusterRequest.IpAllocationPolicy.MachineTypePolicy.Bonds] = []
                    for v in value {
                        if v != nil {
                            var model = ExtendClusterRequest.IpAllocationPolicy.MachineTypePolicy.Bonds()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.bonds = tmp
                }
                if let value = dict["MachineType"] as? String {
                    self.machineType = value
                }
            }
        }
        public class NodePolicy : Tea.TeaModel {
            public class Bonds : Tea.TeaModel {
                public var name: String?

                public var subnet: String?

                public override init() {
                    super.init()
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
                    if self.subnet != nil {
                        map["Subnet"] = self.subnet!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Subnet"] as? String {
                        self.subnet = value
                    }
                }
            }
            public var bonds: [ExtendClusterRequest.IpAllocationPolicy.NodePolicy.Bonds]?

            public var hostname: String?

            public var nodeId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bonds != nil {
                    var tmp : [Any] = []
                    for k in self.bonds! {
                        tmp.append(k.toMap())
                    }
                    map["Bonds"] = tmp
                }
                if self.hostname != nil {
                    map["Hostname"] = self.hostname!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bonds"] as? [Any?] {
                    var tmp : [ExtendClusterRequest.IpAllocationPolicy.NodePolicy.Bonds] = []
                    for v in value {
                        if v != nil {
                            var model = ExtendClusterRequest.IpAllocationPolicy.NodePolicy.Bonds()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.bonds = tmp
                }
                if let value = dict["Hostname"] as? String {
                    self.hostname = value
                }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
                }
            }
        }
        public var bondPolicy: ExtendClusterRequest.IpAllocationPolicy.BondPolicy?

        public var machineTypePolicy: [ExtendClusterRequest.IpAllocationPolicy.MachineTypePolicy]?

        public var nodePolicy: [ExtendClusterRequest.IpAllocationPolicy.NodePolicy]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bondPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bondPolicy != nil {
                map["BondPolicy"] = self.bondPolicy?.toMap()
            }
            if self.machineTypePolicy != nil {
                var tmp : [Any] = []
                for k in self.machineTypePolicy! {
                    tmp.append(k.toMap())
                }
                map["MachineTypePolicy"] = tmp
            }
            if self.nodePolicy != nil {
                var tmp : [Any] = []
                for k in self.nodePolicy! {
                    tmp.append(k.toMap())
                }
                map["NodePolicy"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BondPolicy"] as? [String: Any?] {
                var model = ExtendClusterRequest.IpAllocationPolicy.BondPolicy()
                model.fromMap(value)
                self.bondPolicy = model
            }
            if let value = dict["MachineTypePolicy"] as? [Any?] {
                var tmp : [ExtendClusterRequest.IpAllocationPolicy.MachineTypePolicy] = []
                for v in value {
                    if v != nil {
                        var model = ExtendClusterRequest.IpAllocationPolicy.MachineTypePolicy()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.machineTypePolicy = tmp
            }
            if let value = dict["NodePolicy"] as? [Any?] {
                var tmp : [ExtendClusterRequest.IpAllocationPolicy.NodePolicy] = []
                for v in value {
                    if v != nil {
                        var model = ExtendClusterRequest.IpAllocationPolicy.NodePolicy()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodePolicy = tmp
            }
        }
    }
    public class NodeGroups : Tea.TeaModel {
        public class HyperNodes : Tea.TeaModel {
            public class DataDisk : Tea.TeaModel {
                public var category: String?

                public var deleteWithNode: Bool?

                public var performanceLevel: String?

                public var size: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.category != nil {
                        map["Category"] = self.category!
                    }
                    if self.deleteWithNode != nil {
                        map["DeleteWithNode"] = self.deleteWithNode!
                    }
                    if self.performanceLevel != nil {
                        map["PerformanceLevel"] = self.performanceLevel!
                    }
                    if self.size != nil {
                        map["Size"] = self.size!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Category"] as? String {
                        self.category = value
                    }
                    if let value = dict["DeleteWithNode"] as? Bool {
                        self.deleteWithNode = value
                    }
                    if let value = dict["PerformanceLevel"] as? String {
                        self.performanceLevel = value
                    }
                    if let value = dict["Size"] as? Int32 {
                        self.size = value
                    }
                }
            }
            public var dataDisk: [ExtendClusterRequest.NodeGroups.HyperNodes.DataDisk]?

            public var hostname: String?

            public var hyperNodeId: String?

            public var loginPassword: String?

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
                if self.dataDisk != nil {
                    var tmp : [Any] = []
                    for k in self.dataDisk! {
                        tmp.append(k.toMap())
                    }
                    map["DataDisk"] = tmp
                }
                if self.hostname != nil {
                    map["Hostname"] = self.hostname!
                }
                if self.hyperNodeId != nil {
                    map["HyperNodeId"] = self.hyperNodeId!
                }
                if self.loginPassword != nil {
                    map["LoginPassword"] = self.loginPassword!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataDisk"] as? [Any?] {
                    var tmp : [ExtendClusterRequest.NodeGroups.HyperNodes.DataDisk] = []
                    for v in value {
                        if v != nil {
                            var model = ExtendClusterRequest.NodeGroups.HyperNodes.DataDisk()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dataDisk = tmp
                }
                if let value = dict["Hostname"] as? String {
                    self.hostname = value
                }
                if let value = dict["HyperNodeId"] as? String {
                    self.hyperNodeId = value
                }
                if let value = dict["LoginPassword"] as? String {
                    self.loginPassword = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public class NodeTag : Tea.TeaModel {
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
        public class Nodes : Tea.TeaModel {
            public class DataDisk : Tea.TeaModel {
                public var burstingEnabled: Bool?

                public var category: String?

                public var deleteWithNode: Bool?

                public var performanceLevel: String?

                public var provisionedIops: Int64?

                public var size: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.burstingEnabled != nil {
                        map["BurstingEnabled"] = self.burstingEnabled!
                    }
                    if self.category != nil {
                        map["Category"] = self.category!
                    }
                    if self.deleteWithNode != nil {
                        map["DeleteWithNode"] = self.deleteWithNode!
                    }
                    if self.performanceLevel != nil {
                        map["PerformanceLevel"] = self.performanceLevel!
                    }
                    if self.provisionedIops != nil {
                        map["ProvisionedIops"] = self.provisionedIops!
                    }
                    if self.size != nil {
                        map["Size"] = self.size!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BurstingEnabled"] as? Bool {
                        self.burstingEnabled = value
                    }
                    if let value = dict["Category"] as? String {
                        self.category = value
                    }
                    if let value = dict["DeleteWithNode"] as? Bool {
                        self.deleteWithNode = value
                    }
                    if let value = dict["PerformanceLevel"] as? String {
                        self.performanceLevel = value
                    }
                    if let value = dict["ProvisionedIops"] as? Int64 {
                        self.provisionedIops = value
                    }
                    if let value = dict["Size"] as? Int32 {
                        self.size = value
                    }
                }
            }
            public var dataDisk: [ExtendClusterRequest.NodeGroups.Nodes.DataDisk]?

            public var hostname: String?

            public var loginPassword: String?

            public var nodeId: String?

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
                if self.dataDisk != nil {
                    var tmp : [Any] = []
                    for k in self.dataDisk! {
                        tmp.append(k.toMap())
                    }
                    map["DataDisk"] = tmp
                }
                if self.hostname != nil {
                    map["Hostname"] = self.hostname!
                }
                if self.loginPassword != nil {
                    map["LoginPassword"] = self.loginPassword!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataDisk"] as? [Any?] {
                    var tmp : [ExtendClusterRequest.NodeGroups.Nodes.DataDisk] = []
                    for v in value {
                        if v != nil {
                            var model = ExtendClusterRequest.NodeGroups.Nodes.DataDisk()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dataDisk = tmp
                }
                if let value = dict["Hostname"] as? String {
                    self.hostname = value
                }
                if let value = dict["LoginPassword"] as? String {
                    self.loginPassword = value
                }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public var amount: Int64?

        public var autoRenew: Bool?

        public var chargeType: String?

        public var hostnames: [String]?

        public var hyperNodes: [ExtendClusterRequest.NodeGroups.HyperNodes]?

        public var loginPassword: String?

        public var nodeGroupId: String?

        public var nodeTag: [ExtendClusterRequest.NodeGroups.NodeTag]?

        public var nodes: [ExtendClusterRequest.NodeGroups.Nodes]?

        public var period: Int64?

        public var userData: String?

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
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.autoRenew != nil {
                map["AutoRenew"] = self.autoRenew!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.hostnames != nil {
                map["Hostnames"] = self.hostnames!
            }
            if self.hyperNodes != nil {
                var tmp : [Any] = []
                for k in self.hyperNodes! {
                    tmp.append(k.toMap())
                }
                map["HyperNodes"] = tmp
            }
            if self.loginPassword != nil {
                map["LoginPassword"] = self.loginPassword!
            }
            if self.nodeGroupId != nil {
                map["NodeGroupId"] = self.nodeGroupId!
            }
            if self.nodeTag != nil {
                var tmp : [Any] = []
                for k in self.nodeTag! {
                    tmp.append(k.toMap())
                }
                map["NodeTag"] = tmp
            }
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.userData != nil {
                map["UserData"] = self.userData!
            }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Amount"] as? Int64 {
                self.amount = value
            }
            if let value = dict["AutoRenew"] as? Bool {
                self.autoRenew = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["Hostnames"] as? [String] {
                self.hostnames = value
            }
            if let value = dict["HyperNodes"] as? [Any?] {
                var tmp : [ExtendClusterRequest.NodeGroups.HyperNodes] = []
                for v in value {
                    if v != nil {
                        var model = ExtendClusterRequest.NodeGroups.HyperNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hyperNodes = tmp
            }
            if let value = dict["LoginPassword"] as? String {
                self.loginPassword = value
            }
            if let value = dict["NodeGroupId"] as? String {
                self.nodeGroupId = value
            }
            if let value = dict["NodeTag"] as? [Any?] {
                var tmp : [ExtendClusterRequest.NodeGroups.NodeTag] = []
                for v in value {
                    if v != nil {
                        var model = ExtendClusterRequest.NodeGroups.NodeTag()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodeTag = tmp
            }
            if let value = dict["Nodes"] as? [Any?] {
                var tmp : [ExtendClusterRequest.NodeGroups.Nodes] = []
                for v in value {
                    if v != nil {
                        var model = ExtendClusterRequest.NodeGroups.Nodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodes = tmp
            }
            if let value = dict["Period"] as? Int64 {
                self.period = value
            }
            if let value = dict["UserData"] as? String {
                self.userData = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var clusterId: String?

    public var ignoreFailedNodeTasks: Bool?

    public var ipAllocationPolicy: [ExtendClusterRequest.IpAllocationPolicy]?

    public var nodeGroups: [ExtendClusterRequest.NodeGroups]?

    public var vSwitchZoneId: String?

    public var vpdSubnets: [String]?

    public override init() {
        super.init()
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
        if self.ignoreFailedNodeTasks != nil {
            map["IgnoreFailedNodeTasks"] = self.ignoreFailedNodeTasks!
        }
        if self.ipAllocationPolicy != nil {
            var tmp : [Any] = []
            for k in self.ipAllocationPolicy! {
                tmp.append(k.toMap())
            }
            map["IpAllocationPolicy"] = tmp
        }
        if self.nodeGroups != nil {
            var tmp : [Any] = []
            for k in self.nodeGroups! {
                tmp.append(k.toMap())
            }
            map["NodeGroups"] = tmp
        }
        if self.vSwitchZoneId != nil {
            map["VSwitchZoneId"] = self.vSwitchZoneId!
        }
        if self.vpdSubnets != nil {
            map["VpdSubnets"] = self.vpdSubnets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["IgnoreFailedNodeTasks"] as? Bool {
            self.ignoreFailedNodeTasks = value
        }
        if let value = dict["IpAllocationPolicy"] as? [Any?] {
            var tmp : [ExtendClusterRequest.IpAllocationPolicy] = []
            for v in value {
                if v != nil {
                    var model = ExtendClusterRequest.IpAllocationPolicy()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipAllocationPolicy = tmp
        }
        if let value = dict["NodeGroups"] as? [Any?] {
            var tmp : [ExtendClusterRequest.NodeGroups] = []
            for v in value {
                if v != nil {
                    var model = ExtendClusterRequest.NodeGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodeGroups = tmp
        }
        if let value = dict["VSwitchZoneId"] as? String {
            self.vSwitchZoneId = value
        }
        if let value = dict["VpdSubnets"] as? [String] {
            self.vpdSubnets = value
        }
    }
}

public class ExtendClusterShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ignoreFailedNodeTasks: Bool?

    public var ipAllocationPolicyShrink: String?

    public var nodeGroupsShrink: String?

    public var vSwitchZoneId: String?

    public var vpdSubnetsShrink: String?

    public override init() {
        super.init()
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
        if self.ignoreFailedNodeTasks != nil {
            map["IgnoreFailedNodeTasks"] = self.ignoreFailedNodeTasks!
        }
        if self.ipAllocationPolicyShrink != nil {
            map["IpAllocationPolicy"] = self.ipAllocationPolicyShrink!
        }
        if self.nodeGroupsShrink != nil {
            map["NodeGroups"] = self.nodeGroupsShrink!
        }
        if self.vSwitchZoneId != nil {
            map["VSwitchZoneId"] = self.vSwitchZoneId!
        }
        if self.vpdSubnetsShrink != nil {
            map["VpdSubnets"] = self.vpdSubnetsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["IgnoreFailedNodeTasks"] as? Bool {
            self.ignoreFailedNodeTasks = value
        }
        if let value = dict["IpAllocationPolicy"] as? String {
            self.ipAllocationPolicyShrink = value
        }
        if let value = dict["NodeGroups"] as? String {
            self.nodeGroupsShrink = value
        }
        if let value = dict["VSwitchZoneId"] as? String {
            self.vSwitchZoneId = value
        }
        if let value = dict["VpdSubnets"] as? String {
            self.vpdSubnetsShrink = value
        }
    }
}

public class ExtendClusterResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class ExtendClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExtendClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExtendClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListClusterNodesRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
    public var clusterId: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var nodeGroupId: String?

    public var operatingStates: [String]?

    public var resourceGroupId: String?

    public var tags: [ListClusterNodesRequest.Tags]?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.operatingStates != nil {
            map["OperatingStates"] = self.operatingStates!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["OperatingStates"] as? [String] {
            self.operatingStates = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [ListClusterNodesRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListClusterNodesRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
    }
}

public class ListClusterNodesResponseBody : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public class Networks : Tea.TeaModel {
            public var bondName: String?

            public var ip: String?

            public var subnetId: String?

            public var vpdId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bondName != nil {
                    map["BondName"] = self.bondName!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.subnetId != nil {
                    map["SubnetId"] = self.subnetId!
                }
                if self.vpdId != nil {
                    map["VpdId"] = self.vpdId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BondName"] as? String {
                    self.bondName = value
                }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["SubnetId"] as? String {
                    self.subnetId = value
                }
                if let value = dict["VpdId"] as? String {
                    self.vpdId = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
        public var commodityCode: String?

        public var createTime: String?

        public var expiredTime: String?

        public var fileSystemMountEnabled: Bool?

        public var hostname: String?

        public var hpnZone: String?

        public var hyperNodeId: String?

        public var imageId: String?

        public var imageName: String?

        public var machineType: String?

        public var networks: [ListClusterNodesResponseBody.Nodes.Networks]?

        public var nodeGroupId: String?

        public var nodeGroupName: String?

        public var nodeId: String?

        public var operatingState: String?

        public var sn: String?

        public var tags: [ListClusterNodesResponseBody.Nodes.Tags]?

        public var taskId: String?

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
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.fileSystemMountEnabled != nil {
                map["FileSystemMountEnabled"] = self.fileSystemMountEnabled!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.hpnZone != nil {
                map["HpnZone"] = self.hpnZone!
            }
            if self.hyperNodeId != nil {
                map["HyperNodeId"] = self.hyperNodeId!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.machineType != nil {
                map["MachineType"] = self.machineType!
            }
            if self.networks != nil {
                var tmp : [Any] = []
                for k in self.networks! {
                    tmp.append(k.toMap())
                }
                map["Networks"] = tmp
            }
            if self.nodeGroupId != nil {
                map["NodeGroupId"] = self.nodeGroupId!
            }
            if self.nodeGroupName != nil {
                map["NodeGroupName"] = self.nodeGroupName!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.operatingState != nil {
                map["OperatingState"] = self.operatingState!
            }
            if self.sn != nil {
                map["Sn"] = self.sn!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["FileSystemMountEnabled"] as? Bool {
                self.fileSystemMountEnabled = value
            }
            if let value = dict["Hostname"] as? String {
                self.hostname = value
            }
            if let value = dict["HpnZone"] as? String {
                self.hpnZone = value
            }
            if let value = dict["HyperNodeId"] as? String {
                self.hyperNodeId = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageName"] as? String {
                self.imageName = value
            }
            if let value = dict["MachineType"] as? String {
                self.machineType = value
            }
            if let value = dict["Networks"] as? [Any?] {
                var tmp : [ListClusterNodesResponseBody.Nodes.Networks] = []
                for v in value {
                    if v != nil {
                        var model = ListClusterNodesResponseBody.Nodes.Networks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.networks = tmp
            }
            if let value = dict["NodeGroupId"] as? String {
                self.nodeGroupId = value
            }
            if let value = dict["NodeGroupName"] as? String {
                self.nodeGroupName = value
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
            if let value = dict["OperatingState"] as? String {
                self.operatingState = value
            }
            if let value = dict["Sn"] as? String {
                self.sn = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListClusterNodesResponseBody.Nodes.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListClusterNodesResponseBody.Nodes.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var nextToken: String?

    public var nodes: [ListClusterNodesResponseBody.Nodes]?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["Nodes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Nodes"] as? [Any?] {
            var tmp : [ListClusterNodesResponseBody.Nodes] = []
            for v in value {
                if v != nil {
                    var model = ListClusterNodesResponseBody.Nodes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodes = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListClusterNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListClusterNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListClustersRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
    public var maxResults: Int64?

    public var nextToken: String?

    public var resourceGroupId: String?

    public var tags: [ListClustersRequest.Tags]?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [ListClustersRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListClustersRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
    }
}

public class ListClustersResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
        public var clusterDescription: String?

        public var clusterId: String?

        public var clusterName: String?

        public var clusterType: String?

        public var components: Any?

        public var computingIpVersion: String?

        public var createTime: String?

        public var hpnZone: String?

        public var nodeCount: Int64?

        public var nodeGroupCount: Int64?

        public var operatingState: String?

        public var resourceGroupId: String?

        public var tags: [ListClustersResponseBody.Clusters.Tags]?

        public var taskId: String?

        public var updateTime: String?

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
            if self.clusterDescription != nil {
                map["ClusterDescription"] = self.clusterDescription!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.clusterType != nil {
                map["ClusterType"] = self.clusterType!
            }
            if self.components != nil {
                map["Components"] = self.components!
            }
            if self.computingIpVersion != nil {
                map["ComputingIpVersion"] = self.computingIpVersion!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.hpnZone != nil {
                map["HpnZone"] = self.hpnZone!
            }
            if self.nodeCount != nil {
                map["NodeCount"] = self.nodeCount!
            }
            if self.nodeGroupCount != nil {
                map["NodeGroupCount"] = self.nodeGroupCount!
            }
            if self.operatingState != nil {
                map["OperatingState"] = self.operatingState!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterDescription"] as? String {
                self.clusterDescription = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ClusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["ClusterType"] as? String {
                self.clusterType = value
            }
            if let value = dict["Components"] as? Any {
                self.components = value
            }
            if let value = dict["ComputingIpVersion"] as? String {
                self.computingIpVersion = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["HpnZone"] as? String {
                self.hpnZone = value
            }
            if let value = dict["NodeCount"] as? Int64 {
                self.nodeCount = value
            }
            if let value = dict["NodeGroupCount"] as? Int64 {
                self.nodeGroupCount = value
            }
            if let value = dict["OperatingState"] as? String {
                self.operatingState = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListClustersResponseBody.Clusters.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListClustersResponseBody.Clusters.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var clusters: [ListClustersResponseBody.Clusters]?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusters != nil {
            var tmp : [Any] = []
            for k in self.clusters! {
                tmp.append(k.toMap())
            }
            map["Clusters"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Clusters"] as? [Any?] {
            var tmp : [ListClustersResponseBody.Clusters] = []
            for v in value {
                if v != nil {
                    var model = ListClustersResponseBody.Clusters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.clusters = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClustersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListClustersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDiagnosticResultsRequest : Tea.TeaModel {
    public var diagType: String?

    public var maxResults: Int64?

    public var nextToken: String?

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
        if self.diagType != nil {
            map["DiagType"] = self.diagType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiagType"] as? String {
            self.diagType = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ListDiagnosticResultsResponseBody : Tea.TeaModel {
    public class DiagnosticResults : Tea.TeaModel {
        public var clusterId: String?

        public var clusterName: String?

        public var creationTime: String?

        public var diagContent: String?

        public var diagId: String?

        public var diagResult: String?

        public var finishedTime: String?

        public var resourceId: String?

        public var serverName: String?

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
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.diagContent != nil {
                map["DiagContent"] = self.diagContent!
            }
            if self.diagId != nil {
                map["DiagId"] = self.diagId!
            }
            if self.diagResult != nil {
                map["DiagResult"] = self.diagResult!
            }
            if self.finishedTime != nil {
                map["FinishedTime"] = self.finishedTime!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.serverName != nil {
                map["ServerName"] = self.serverName!
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["DiagContent"] as? String {
                self.diagContent = value
            }
            if let value = dict["DiagId"] as? String {
                self.diagId = value
            }
            if let value = dict["DiagResult"] as? String {
                self.diagResult = value
            }
            if let value = dict["FinishedTime"] as? String {
                self.finishedTime = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ServerName"] as? String {
                self.serverName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var diagnosticResults: [ListDiagnosticResultsResponseBody.DiagnosticResults]?

    public var maxResults: Int64?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diagnosticResults != nil {
            var tmp : [Any] = []
            for k in self.diagnosticResults! {
                tmp.append(k.toMap())
            }
            map["DiagnosticResults"] = tmp
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiagnosticResults"] as? [Any?] {
            var tmp : [ListDiagnosticResultsResponseBody.DiagnosticResults] = []
            for v in value {
                if v != nil {
                    var model = ListDiagnosticResultsResponseBody.DiagnosticResults()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.diagnosticResults = tmp
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDiagnosticResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDiagnosticResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDiagnosticResultsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFreeNodesRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
    public var hpnZone: String?

    public var machineType: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var operatingStates: [String]?

    public var resourceGroupId: String?

    public var tags: [ListFreeNodesRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hpnZone != nil {
            map["HpnZone"] = self.hpnZone!
        }
        if self.machineType != nil {
            map["MachineType"] = self.machineType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.operatingStates != nil {
            map["OperatingStates"] = self.operatingStates!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HpnZone"] as? String {
            self.hpnZone = value
        }
        if let value = dict["MachineType"] as? String {
            self.machineType = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OperatingStates"] as? [String] {
            self.operatingStates = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [ListFreeNodesRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListFreeNodesRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
    }
}

public class ListFreeNodesResponseBody : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
        public var commodityCode: String?

        public var createTime: String?

        public var expiredTime: String?

        public var hpnZone: String?

        public var hyperNodeId: String?

        public var machineType: String?

        public var nodeId: String?

        public var operatingState: String?

        public var resourceGroupId: String?

        public var sn: String?

        public var tags: [ListFreeNodesResponseBody.Nodes.Tags]?

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
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.hpnZone != nil {
                map["HpnZone"] = self.hpnZone!
            }
            if self.hyperNodeId != nil {
                map["HyperNodeId"] = self.hyperNodeId!
            }
            if self.machineType != nil {
                map["MachineType"] = self.machineType!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.operatingState != nil {
                map["OperatingState"] = self.operatingState!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.sn != nil {
                map["Sn"] = self.sn!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["HpnZone"] as? String {
                self.hpnZone = value
            }
            if let value = dict["HyperNodeId"] as? String {
                self.hyperNodeId = value
            }
            if let value = dict["MachineType"] as? String {
                self.machineType = value
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
            if let value = dict["OperatingState"] as? String {
                self.operatingState = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Sn"] as? String {
                self.sn = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListFreeNodesResponseBody.Nodes.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListFreeNodesResponseBody.Nodes.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var nextToken: String?

    public var nodes: [ListFreeNodesResponseBody.Nodes]?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["Nodes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Nodes"] as? [Any?] {
            var tmp : [ListFreeNodesResponseBody.Nodes] = []
            for v in value {
                if v != nil {
                    var model = ListFreeNodesResponseBody.Nodes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodes = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListFreeNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFreeNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFreeNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListImagesRequest : Tea.TeaModel {
    public var architecture: String?

    public var imageVersion: String?

    public var platform: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.architecture != nil {
            map["Architecture"] = self.architecture!
        }
        if self.imageVersion != nil {
            map["ImageVersion"] = self.imageVersion!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Architecture"] as? String {
            self.architecture = value
        }
        if let value = dict["ImageVersion"] as? String {
            self.imageVersion = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
    }
}

public class ListImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public var architecture: String?

        public var description_: String?

        public var imageId: String?

        public var imageName: String?

        public var imageVersion: String?

        public var nodeCount: Int64?

        public var platform: String?

        public var releaseFileMd5: String?

        public var releaseFileSize: String?

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
            if self.architecture != nil {
                map["Architecture"] = self.architecture!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.imageVersion != nil {
                map["ImageVersion"] = self.imageVersion!
            }
            if self.nodeCount != nil {
                map["NodeCount"] = self.nodeCount!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.releaseFileMd5 != nil {
                map["ReleaseFileMd5"] = self.releaseFileMd5!
            }
            if self.releaseFileSize != nil {
                map["ReleaseFileSize"] = self.releaseFileSize!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Architecture"] as? String {
                self.architecture = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageName"] as? String {
                self.imageName = value
            }
            if let value = dict["ImageVersion"] as? String {
                self.imageVersion = value
            }
            if let value = dict["NodeCount"] as? Int64 {
                self.nodeCount = value
            }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
            if let value = dict["ReleaseFileMd5"] as? String {
                self.releaseFileMd5 = value
            }
            if let value = dict["ReleaseFileSize"] as? String {
                self.releaseFileSize = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var images: [ListImagesResponseBody.Images]?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Images"] as? [Any?] {
            var tmp : [ListImagesResponseBody.Images] = []
            for v in value {
                if v != nil {
                    var model = ListImagesResponseBody.Images()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.images = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListImagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListImagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMachineNetworkInfoRequest : Tea.TeaModel {
    public class MachineHpnInfo : Tea.TeaModel {
        public var hpnZone: String?

        public var machineType: String?

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
            if self.hpnZone != nil {
                map["HpnZone"] = self.hpnZone!
            }
            if self.machineType != nil {
                map["MachineType"] = self.machineType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HpnZone"] as? String {
                self.hpnZone = value
            }
            if let value = dict["MachineType"] as? String {
                self.machineType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var machineHpnInfo: [ListMachineNetworkInfoRequest.MachineHpnInfo]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.machineHpnInfo != nil {
            var tmp : [Any] = []
            for k in self.machineHpnInfo! {
                tmp.append(k.toMap())
            }
            map["MachineHpnInfo"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MachineHpnInfo"] as? [Any?] {
            var tmp : [ListMachineNetworkInfoRequest.MachineHpnInfo] = []
            for v in value {
                if v != nil {
                    var model = ListMachineNetworkInfoRequest.MachineHpnInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.machineHpnInfo = tmp
        }
    }
}

public class ListMachineNetworkInfoShrinkRequest : Tea.TeaModel {
    public var machineHpnInfoShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.machineHpnInfoShrink != nil {
            map["MachineHpnInfo"] = self.machineHpnInfoShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MachineHpnInfo"] as? String {
            self.machineHpnInfoShrink = value
        }
    }
}

public class ListMachineNetworkInfoResponseBody : Tea.TeaModel {
    public class MachineNetworkInfo : Tea.TeaModel {
        public var clusterNet: String?

        public var enableJumboFrame: Bool?

        public var hpnZone: String?

        public var isDpuMode: Bool?

        public var machineType: String?

        public var netArch: String?

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
            if self.clusterNet != nil {
                map["ClusterNet"] = self.clusterNet!
            }
            if self.enableJumboFrame != nil {
                map["EnableJumboFrame"] = self.enableJumboFrame!
            }
            if self.hpnZone != nil {
                map["HpnZone"] = self.hpnZone!
            }
            if self.isDpuMode != nil {
                map["IsDpuMode"] = self.isDpuMode!
            }
            if self.machineType != nil {
                map["MachineType"] = self.machineType!
            }
            if self.netArch != nil {
                map["NetArch"] = self.netArch!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterNet"] as? String {
                self.clusterNet = value
            }
            if let value = dict["EnableJumboFrame"] as? Bool {
                self.enableJumboFrame = value
            }
            if let value = dict["HpnZone"] as? String {
                self.hpnZone = value
            }
            if let value = dict["IsDpuMode"] as? Bool {
                self.isDpuMode = value
            }
            if let value = dict["MachineType"] as? String {
                self.machineType = value
            }
            if let value = dict["NetArch"] as? String {
                self.netArch = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var machineNetworkInfo: [ListMachineNetworkInfoResponseBody.MachineNetworkInfo]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.machineNetworkInfo != nil {
            var tmp : [Any] = []
            for k in self.machineNetworkInfo! {
                tmp.append(k.toMap())
            }
            map["MachineNetworkInfo"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MachineNetworkInfo"] as? [Any?] {
            var tmp : [ListMachineNetworkInfoResponseBody.MachineNetworkInfo] = []
            for v in value {
                if v != nil {
                    var model = ListMachineNetworkInfoResponseBody.MachineNetworkInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.machineNetworkInfo = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListMachineNetworkInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMachineNetworkInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMachineNetworkInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMachineTypesRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class ListMachineTypesResponseBody : Tea.TeaModel {
    public class MachineTypes : Tea.TeaModel {
        public var bondNum: Int32?

        public var cpuInfo: String?

        public var diskInfo: String?

        public var gpuInfo: String?

        public var memoryInfo: String?

        public var name: String?

        public var networkInfo: String?

        public var nodeCount: String?

        public var totalCpuCore: Int32?

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
            if self.bondNum != nil {
                map["BondNum"] = self.bondNum!
            }
            if self.cpuInfo != nil {
                map["CpuInfo"] = self.cpuInfo!
            }
            if self.diskInfo != nil {
                map["DiskInfo"] = self.diskInfo!
            }
            if self.gpuInfo != nil {
                map["GpuInfo"] = self.gpuInfo!
            }
            if self.memoryInfo != nil {
                map["MemoryInfo"] = self.memoryInfo!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.networkInfo != nil {
                map["NetworkInfo"] = self.networkInfo!
            }
            if self.nodeCount != nil {
                map["NodeCount"] = self.nodeCount!
            }
            if self.totalCpuCore != nil {
                map["TotalCpuCore"] = self.totalCpuCore!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BondNum"] as? Int32 {
                self.bondNum = value
            }
            if let value = dict["CpuInfo"] as? String {
                self.cpuInfo = value
            }
            if let value = dict["DiskInfo"] as? String {
                self.diskInfo = value
            }
            if let value = dict["GpuInfo"] as? String {
                self.gpuInfo = value
            }
            if let value = dict["MemoryInfo"] as? String {
                self.memoryInfo = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NetworkInfo"] as? String {
                self.networkInfo = value
            }
            if let value = dict["NodeCount"] as? String {
                self.nodeCount = value
            }
            if let value = dict["TotalCpuCore"] as? Int32 {
                self.totalCpuCore = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var machineTypes: [ListMachineTypesResponseBody.MachineTypes]?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.machineTypes != nil {
            var tmp : [Any] = []
            for k in self.machineTypes! {
                tmp.append(k.toMap())
            }
            map["MachineTypes"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MachineTypes"] as? [Any?] {
            var tmp : [ListMachineTypesResponseBody.MachineTypes] = []
            for v in value {
                if v != nil {
                    var model = ListMachineTypesResponseBody.MachineTypes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.machineTypes = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListMachineTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMachineTypesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMachineTypesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNetTestResultsRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var netTestType: String?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.netTestType != nil {
            map["NetTestType"] = self.netTestType!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NetTestType"] as? String {
            self.netTestType = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ListNetTestResultsResponseBody : Tea.TeaModel {
    public class NetTestResults : Tea.TeaModel {
        public class CommTest : Tea.TeaModel {
            public class Hosts : Tea.TeaModel {
                public var IP: String?

                public var resourceId: String?

                public var serverName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.IP != nil {
                        map["IP"] = self.IP!
                    }
                    if self.resourceId != nil {
                        map["ResourceId"] = self.resourceId!
                    }
                    if self.serverName != nil {
                        map["ServerName"] = self.serverName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["IP"] as? String {
                        self.IP = value
                    }
                    if let value = dict["ResourceId"] as? String {
                        self.resourceId = value
                    }
                    if let value = dict["ServerName"] as? String {
                        self.serverName = value
                    }
                }
            }
            public var GPUNum: String?

            public var hosts: [ListNetTestResultsResponseBody.NetTestResults.CommTest.Hosts]?

            public var model: String?

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
                if self.GPUNum != nil {
                    map["GPUNum"] = self.GPUNum!
                }
                if self.hosts != nil {
                    var tmp : [Any] = []
                    for k in self.hosts! {
                        tmp.append(k.toMap())
                    }
                    map["Hosts"] = tmp
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GPUNum"] as? String {
                    self.GPUNum = value
                }
                if let value = dict["Hosts"] as? [Any?] {
                    var tmp : [ListNetTestResultsResponseBody.NetTestResults.CommTest.Hosts] = []
                    for v in value {
                        if v != nil {
                            var model = ListNetTestResultsResponseBody.NetTestResults.CommTest.Hosts()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.hosts = tmp
                }
                if let value = dict["Model"] as? String {
                    self.model = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class DelayTest : Tea.TeaModel {
            public class Hosts : Tea.TeaModel {
                public var bond: String?

                public var IP: String?

                public var resourceId: String?

                public var serverName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bond != nil {
                        map["Bond"] = self.bond!
                    }
                    if self.IP != nil {
                        map["IP"] = self.IP!
                    }
                    if self.resourceId != nil {
                        map["ResourceId"] = self.resourceId!
                    }
                    if self.serverName != nil {
                        map["ServerName"] = self.serverName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bond"] as? String {
                        self.bond = value
                    }
                    if let value = dict["IP"] as? String {
                        self.IP = value
                    }
                    if let value = dict["ResourceId"] as? String {
                        self.resourceId = value
                    }
                    if let value = dict["ServerName"] as? String {
                        self.serverName = value
                    }
                }
            }
            public var hosts: [ListNetTestResultsResponseBody.NetTestResults.DelayTest.Hosts]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hosts != nil {
                    var tmp : [Any] = []
                    for k in self.hosts! {
                        tmp.append(k.toMap())
                    }
                    map["Hosts"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Hosts"] as? [Any?] {
                    var tmp : [ListNetTestResultsResponseBody.NetTestResults.DelayTest.Hosts] = []
                    for v in value {
                        if v != nil {
                            var model = ListNetTestResultsResponseBody.NetTestResults.DelayTest.Hosts()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.hosts = tmp
                }
            }
        }
        public class TrafficTest : Tea.TeaModel {
            public class Clients : Tea.TeaModel {
                public var bond: String?

                public var IP: String?

                public var resourceId: String?

                public var serverName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bond != nil {
                        map["Bond"] = self.bond!
                    }
                    if self.IP != nil {
                        map["IP"] = self.IP!
                    }
                    if self.resourceId != nil {
                        map["ResourceId"] = self.resourceId!
                    }
                    if self.serverName != nil {
                        map["ServerName"] = self.serverName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bond"] as? String {
                        self.bond = value
                    }
                    if let value = dict["IP"] as? String {
                        self.IP = value
                    }
                    if let value = dict["ResourceId"] as? String {
                        self.resourceId = value
                    }
                    if let value = dict["ServerName"] as? String {
                        self.serverName = value
                    }
                }
            }
            public class Servers : Tea.TeaModel {
                public var bond: String?

                public var IP: String?

                public var resourceId: String?

                public var serverName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bond != nil {
                        map["Bond"] = self.bond!
                    }
                    if self.IP != nil {
                        map["IP"] = self.IP!
                    }
                    if self.resourceId != nil {
                        map["ResourceId"] = self.resourceId!
                    }
                    if self.serverName != nil {
                        map["ServerName"] = self.serverName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bond"] as? String {
                        self.bond = value
                    }
                    if let value = dict["IP"] as? String {
                        self.IP = value
                    }
                    if let value = dict["ResourceId"] as? String {
                        self.resourceId = value
                    }
                    if let value = dict["ServerName"] as? String {
                        self.serverName = value
                    }
                }
            }
            public var clients: [ListNetTestResultsResponseBody.NetTestResults.TrafficTest.Clients]?

            public var duration: Int64?

            public var GDR: String?

            public var protocol_: String?

            public var QP: Int64?

            public var servers: [ListNetTestResultsResponseBody.NetTestResults.TrafficTest.Servers]?

            public var trafficModel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clients != nil {
                    var tmp : [Any] = []
                    for k in self.clients! {
                        tmp.append(k.toMap())
                    }
                    map["Clients"] = tmp
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.GDR != nil {
                    map["GDR"] = self.GDR!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.QP != nil {
                    map["QP"] = self.QP!
                }
                if self.servers != nil {
                    var tmp : [Any] = []
                    for k in self.servers! {
                        tmp.append(k.toMap())
                    }
                    map["Servers"] = tmp
                }
                if self.trafficModel != nil {
                    map["TrafficModel"] = self.trafficModel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Clients"] as? [Any?] {
                    var tmp : [ListNetTestResultsResponseBody.NetTestResults.TrafficTest.Clients] = []
                    for v in value {
                        if v != nil {
                            var model = ListNetTestResultsResponseBody.NetTestResults.TrafficTest.Clients()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.clients = tmp
                }
                if let value = dict["Duration"] as? Int64 {
                    self.duration = value
                }
                if let value = dict["GDR"] as? String {
                    self.GDR = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["QP"] as? Int64 {
                    self.QP = value
                }
                if let value = dict["Servers"] as? [Any?] {
                    var tmp : [ListNetTestResultsResponseBody.NetTestResults.TrafficTest.Servers] = []
                    for v in value {
                        if v != nil {
                            var model = ListNetTestResultsResponseBody.NetTestResults.TrafficTest.Servers()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.servers = tmp
                }
                if let value = dict["TrafficModel"] as? String {
                    self.trafficModel = value
                }
            }
        }
        public var clusterId: String?

        public var clusterName: String?

        public var commTest: ListNetTestResultsResponseBody.NetTestResults.CommTest?

        public var creationTime: String?

        public var delayTest: ListNetTestResultsResponseBody.NetTestResults.DelayTest?

        public var finishedTime: String?

        public var netTestType: String?

        public var networkMode: String?

        public var port: String?

        public var status: String?

        public var testId: String?

        public var trafficTest: ListNetTestResultsResponseBody.NetTestResults.TrafficTest?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commTest?.validate()
            try self.delayTest?.validate()
            try self.trafficTest?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.commTest != nil {
                map["CommTest"] = self.commTest?.toMap()
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.delayTest != nil {
                map["DelayTest"] = self.delayTest?.toMap()
            }
            if self.finishedTime != nil {
                map["FinishedTime"] = self.finishedTime!
            }
            if self.netTestType != nil {
                map["NetTestType"] = self.netTestType!
            }
            if self.networkMode != nil {
                map["NetworkMode"] = self.networkMode!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.testId != nil {
                map["TestId"] = self.testId!
            }
            if self.trafficTest != nil {
                map["TrafficTest"] = self.trafficTest?.toMap()
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
            if let value = dict["CommTest"] as? [String: Any?] {
                var model = ListNetTestResultsResponseBody.NetTestResults.CommTest()
                model.fromMap(value)
                self.commTest = model
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["DelayTest"] as? [String: Any?] {
                var model = ListNetTestResultsResponseBody.NetTestResults.DelayTest()
                model.fromMap(value)
                self.delayTest = model
            }
            if let value = dict["FinishedTime"] as? String {
                self.finishedTime = value
            }
            if let value = dict["NetTestType"] as? String {
                self.netTestType = value
            }
            if let value = dict["NetworkMode"] as? String {
                self.networkMode = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TestId"] as? String {
                self.testId = value
            }
            if let value = dict["TrafficTest"] as? [String: Any?] {
                var model = ListNetTestResultsResponseBody.NetTestResults.TrafficTest()
                model.fromMap(value)
                self.trafficTest = model
            }
        }
    }
    public var maxResults: Int64?

    public var netTestResults: [ListNetTestResultsResponseBody.NetTestResults]?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.netTestResults != nil {
            var tmp : [Any] = []
            for k in self.netTestResults! {
                tmp.append(k.toMap())
            }
            map["NetTestResults"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NetTestResults"] as? [Any?] {
            var tmp : [ListNetTestResultsResponseBody.NetTestResults] = []
            for v in value {
                if v != nil {
                    var model = ListNetTestResultsResponseBody.NetTestResults()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.netTestResults = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListNetTestResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNetTestResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNetTestResultsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNodeGroupsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var nodeGroupId: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
    }
}

public class ListNodeGroupsResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public var clusterId: String?

        public var clusterName: String?

        public var createTime: String?

        public var description_: String?

        public var fileSystemMountEnabled: Bool?

        public var groupId: String?

        public var groupName: String?

        public var imageId: String?

        public var imageName: String?

        public var machineType: String?

        public var nodeCount: Int64?

        public var updateTime: String?

        public var virtualGpuEnabled: Bool?

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
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fileSystemMountEnabled != nil {
                map["FileSystemMountEnabled"] = self.fileSystemMountEnabled!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.machineType != nil {
                map["MachineType"] = self.machineType!
            }
            if self.nodeCount != nil {
                map["NodeCount"] = self.nodeCount!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.virtualGpuEnabled != nil {
                map["VirtualGpuEnabled"] = self.virtualGpuEnabled!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
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
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FileSystemMountEnabled"] as? Bool {
                self.fileSystemMountEnabled = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageName"] as? String {
                self.imageName = value
            }
            if let value = dict["MachineType"] as? String {
                self.machineType = value
            }
            if let value = dict["NodeCount"] as? Int64 {
                self.nodeCount = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["VirtualGpuEnabled"] as? Bool {
                self.virtualGpuEnabled = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var groups: [ListNodeGroupsResponseBody.Groups]?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groups != nil {
            var tmp : [Any] = []
            for k in self.groups! {
                tmp.append(k.toMap())
            }
            map["Groups"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Groups"] as? [Any?] {
            var tmp : [ListNodeGroupsResponseBody.Groups] = []
            for v in value {
                if v != nil {
                    var model = ListNodeGroupsResponseBody.Groups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.groups = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListNodeGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodeGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNodeGroupsResponseBody()
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

public class ListUserClusterTypesResponseBody : Tea.TeaModel {
    public class ClusterTypes : Tea.TeaModel {
        public var accessType: String?

        public var typeName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessType != nil {
                map["AccessType"] = self.accessType!
            }
            if self.typeName != nil {
                map["TypeName"] = self.typeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessType"] as? String {
                self.accessType = value
            }
            if let value = dict["TypeName"] as? String {
                self.typeName = value
            }
        }
    }
    public var clusterTypes: [ListUserClusterTypesResponseBody.ClusterTypes]?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterTypes != nil {
            var tmp : [Any] = []
            for k in self.clusterTypes! {
                tmp.append(k.toMap())
            }
            map["ClusterTypes"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterTypes"] as? [Any?] {
            var tmp : [ListUserClusterTypesResponseBody.ClusterTypes] = []
            for v in value {
                if v != nil {
                    var model = ListUserClusterTypesResponseBody.ClusterTypes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.clusterTypes = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListUserClusterTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserClusterTypesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUserClusterTypesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVscsRequest : Tea.TeaModel {
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
    public var maxResults: Int32?

    public var nextToken: String?

    public var nodeIds: [String]?

    public var resourceGroupId: String?

    public var tag: [ListVscsRequest.Tag]?

    public var vscName: String?

    public override init() {
        super.init()
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
        if self.nodeIds != nil {
            map["NodeIds"] = self.nodeIds!
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
        if self.vscName != nil {
            map["VscName"] = self.vscName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NodeIds"] as? [String] {
            self.nodeIds = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListVscsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListVscsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VscName"] as? String {
            self.vscName = value
        }
    }
}

public class ListVscsShrinkRequest : Tea.TeaModel {
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
    public var maxResults: Int32?

    public var nextToken: String?

    public var nodeIdsShrink: String?

    public var resourceGroupId: String?

    public var tag: [ListVscsShrinkRequest.Tag]?

    public var vscName: String?

    public override init() {
        super.init()
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
        if self.nodeIdsShrink != nil {
            map["NodeIds"] = self.nodeIdsShrink!
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
        if self.vscName != nil {
            map["VscName"] = self.vscName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NodeIds"] as? String {
            self.nodeIdsShrink = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListVscsShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListVscsShrinkRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VscName"] as? String {
            self.vscName = value
        }
    }
}

public class ListVscsResponseBody : Tea.TeaModel {
    public class Vscs : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
        public var nodeId: String?

        public var resourceGroupId: String?

        public var status: String?

        public var tags: [ListVscsResponseBody.Vscs.Tags]?

        public var vscId: String?

        public var vscName: String?

        public var vscType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.vscId != nil {
                map["VscId"] = self.vscId!
            }
            if self.vscName != nil {
                map["VscName"] = self.vscName!
            }
            if self.vscType != nil {
                map["VscType"] = self.vscType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListVscsResponseBody.Vscs.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListVscsResponseBody.Vscs.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["VscId"] as? String {
                self.vscId = value
            }
            if let value = dict["VscName"] as? String {
                self.vscName = value
            }
            if let value = dict["VscType"] as? String {
                self.vscType = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var vscs: [ListVscsResponseBody.Vscs]?

    public override init() {
        super.init()
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
        if self.vscs != nil {
            var tmp : [Any] = []
            for k in self.vscs! {
                tmp.append(k.toMap())
            }
            map["Vscs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["Vscs"] as? [Any?] {
            var tmp : [ListVscsResponseBody.Vscs] = []
            for v in value {
                if v != nil {
                    var model = ListVscsResponseBody.Vscs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vscs = tmp
        }
    }
}

public class ListVscsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVscsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVscsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RebootNodesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ignoreFailedNodeTasks: Bool?

    public var nodes: [String]?

    public override init() {
        super.init()
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
        if self.ignoreFailedNodeTasks != nil {
            map["IgnoreFailedNodeTasks"] = self.ignoreFailedNodeTasks!
        }
        if self.nodes != nil {
            map["Nodes"] = self.nodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["IgnoreFailedNodeTasks"] as? Bool {
            self.ignoreFailedNodeTasks = value
        }
        if let value = dict["Nodes"] as? [String] {
            self.nodes = value
        }
    }
}

public class RebootNodesShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ignoreFailedNodeTasks: Bool?

    public var nodesShrink: String?

    public override init() {
        super.init()
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
        if self.ignoreFailedNodeTasks != nil {
            map["IgnoreFailedNodeTasks"] = self.ignoreFailedNodeTasks!
        }
        if self.nodesShrink != nil {
            map["Nodes"] = self.nodesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["IgnoreFailedNodeTasks"] as? Bool {
            self.ignoreFailedNodeTasks = value
        }
        if let value = dict["Nodes"] as? String {
            self.nodesShrink = value
        }
    }
}

public class RebootNodesResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class RebootNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebootNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RebootNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReimageNodesRequest : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public var hostname: String?

        public var imageId: String?

        public var loginPassword: String?

        public var nodeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.loginPassword != nil {
                map["LoginPassword"] = self.loginPassword!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Hostname"] as? String {
                self.hostname = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["LoginPassword"] as? String {
                self.loginPassword = value
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
        }
    }
    public var clusterId: String?

    public var ignoreFailedNodeTasks: Bool?

    public var nodes: [ReimageNodesRequest.Nodes]?

    public var userData: String?

    public override init() {
        super.init()
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
        if self.ignoreFailedNodeTasks != nil {
            map["IgnoreFailedNodeTasks"] = self.ignoreFailedNodeTasks!
        }
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["Nodes"] = tmp
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["IgnoreFailedNodeTasks"] as? Bool {
            self.ignoreFailedNodeTasks = value
        }
        if let value = dict["Nodes"] as? [Any?] {
            var tmp : [ReimageNodesRequest.Nodes] = []
            for v in value {
                if v != nil {
                    var model = ReimageNodesRequest.Nodes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodes = tmp
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class ReimageNodesShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ignoreFailedNodeTasks: Bool?

    public var nodesShrink: String?

    public var userData: String?

    public override init() {
        super.init()
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
        if self.ignoreFailedNodeTasks != nil {
            map["IgnoreFailedNodeTasks"] = self.ignoreFailedNodeTasks!
        }
        if self.nodesShrink != nil {
            map["Nodes"] = self.nodesShrink!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["IgnoreFailedNodeTasks"] as? Bool {
            self.ignoreFailedNodeTasks = value
        }
        if let value = dict["Nodes"] as? String {
            self.nodesShrink = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class ReimageNodesResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class ReimageNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReimageNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReimageNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunCommandRequest : Tea.TeaModel {
    public var clientToken: String?

    public var commandContent: String?

    public var commandId: String?

    public var contentEncoding: String?

    public var description_: String?

    public var enableParameter: Bool?

    public var frequency: String?

    public var launcher: String?

    public var name: String?

    public var nodeIdList: [String]?

    public var parameters: [String: Any]?

    public var repeatMode: String?

    public var terminationMode: String?

    public var timeout: Int32?

    public var username: String?

    public var workingDir: String?

    public override init() {
        super.init()
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
        if self.commandContent != nil {
            map["CommandContent"] = self.commandContent!
        }
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        if self.contentEncoding != nil {
            map["ContentEncoding"] = self.contentEncoding!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enableParameter != nil {
            map["EnableParameter"] = self.enableParameter!
        }
        if self.frequency != nil {
            map["Frequency"] = self.frequency!
        }
        if self.launcher != nil {
            map["Launcher"] = self.launcher!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nodeIdList != nil {
            map["NodeIdList"] = self.nodeIdList!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.repeatMode != nil {
            map["RepeatMode"] = self.repeatMode!
        }
        if self.terminationMode != nil {
            map["TerminationMode"] = self.terminationMode!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.workingDir != nil {
            map["WorkingDir"] = self.workingDir!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CommandContent"] as? String {
            self.commandContent = value
        }
        if let value = dict["CommandId"] as? String {
            self.commandId = value
        }
        if let value = dict["ContentEncoding"] as? String {
            self.contentEncoding = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnableParameter"] as? Bool {
            self.enableParameter = value
        }
        if let value = dict["Frequency"] as? String {
            self.frequency = value
        }
        if let value = dict["Launcher"] as? String {
            self.launcher = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NodeIdList"] as? [String] {
            self.nodeIdList = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["RepeatMode"] as? String {
            self.repeatMode = value
        }
        if let value = dict["TerminationMode"] as? String {
            self.terminationMode = value
        }
        if let value = dict["Timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
        if let value = dict["WorkingDir"] as? String {
            self.workingDir = value
        }
    }
}

public class RunCommandShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var commandContent: String?

    public var commandId: String?

    public var contentEncoding: String?

    public var description_: String?

    public var enableParameter: Bool?

    public var frequency: String?

    public var launcher: String?

    public var name: String?

    public var nodeIdListShrink: String?

    public var parametersShrink: String?

    public var repeatMode: String?

    public var terminationMode: String?

    public var timeout: Int32?

    public var username: String?

    public var workingDir: String?

    public override init() {
        super.init()
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
        if self.commandContent != nil {
            map["CommandContent"] = self.commandContent!
        }
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        if self.contentEncoding != nil {
            map["ContentEncoding"] = self.contentEncoding!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enableParameter != nil {
            map["EnableParameter"] = self.enableParameter!
        }
        if self.frequency != nil {
            map["Frequency"] = self.frequency!
        }
        if self.launcher != nil {
            map["Launcher"] = self.launcher!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nodeIdListShrink != nil {
            map["NodeIdList"] = self.nodeIdListShrink!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.repeatMode != nil {
            map["RepeatMode"] = self.repeatMode!
        }
        if self.terminationMode != nil {
            map["TerminationMode"] = self.terminationMode!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.workingDir != nil {
            map["WorkingDir"] = self.workingDir!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CommandContent"] as? String {
            self.commandContent = value
        }
        if let value = dict["CommandId"] as? String {
            self.commandId = value
        }
        if let value = dict["ContentEncoding"] as? String {
            self.contentEncoding = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnableParameter"] as? Bool {
            self.enableParameter = value
        }
        if let value = dict["Frequency"] as? String {
            self.frequency = value
        }
        if let value = dict["Launcher"] as? String {
            self.launcher = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NodeIdList"] as? String {
            self.nodeIdListShrink = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["RepeatMode"] as? String {
            self.repeatMode = value
        }
        if let value = dict["TerminationMode"] as? String {
            self.terminationMode = value
        }
        if let value = dict["Timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
        if let value = dict["WorkingDir"] as? String {
            self.workingDir = value
        }
    }
}

public class RunCommandResponseBody : Tea.TeaModel {
    public var invokeId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InvokeId"] as? String {
            self.invokeId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RunCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunCommandResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RunCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendFileRequest : Tea.TeaModel {
    public var content: String?

    public var contentType: String?

    public var description_: String?

    public var fileGroup: String?

    public var fileMode: String?

    public var fileOwner: String?

    public var name: String?

    public var nodeIdList: [String]?

    public var overwrite: Bool?

    public var targetDir: String?

    public var timeout: Int32?

    public override init() {
        super.init()
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
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileGroup != nil {
            map["FileGroup"] = self.fileGroup!
        }
        if self.fileMode != nil {
            map["FileMode"] = self.fileMode!
        }
        if self.fileOwner != nil {
            map["FileOwner"] = self.fileOwner!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nodeIdList != nil {
            map["NodeIdList"] = self.nodeIdList!
        }
        if self.overwrite != nil {
            map["Overwrite"] = self.overwrite!
        }
        if self.targetDir != nil {
            map["TargetDir"] = self.targetDir!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["ContentType"] as? String {
            self.contentType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileGroup"] as? String {
            self.fileGroup = value
        }
        if let value = dict["FileMode"] as? String {
            self.fileMode = value
        }
        if let value = dict["FileOwner"] as? String {
            self.fileOwner = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NodeIdList"] as? [String] {
            self.nodeIdList = value
        }
        if let value = dict["Overwrite"] as? Bool {
            self.overwrite = value
        }
        if let value = dict["TargetDir"] as? String {
            self.targetDir = value
        }
        if let value = dict["Timeout"] as? Int32 {
            self.timeout = value
        }
    }
}

public class SendFileShrinkRequest : Tea.TeaModel {
    public var content: String?

    public var contentType: String?

    public var description_: String?

    public var fileGroup: String?

    public var fileMode: String?

    public var fileOwner: String?

    public var name: String?

    public var nodeIdListShrink: String?

    public var overwrite: Bool?

    public var targetDir: String?

    public var timeout: Int32?

    public override init() {
        super.init()
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
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileGroup != nil {
            map["FileGroup"] = self.fileGroup!
        }
        if self.fileMode != nil {
            map["FileMode"] = self.fileMode!
        }
        if self.fileOwner != nil {
            map["FileOwner"] = self.fileOwner!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nodeIdListShrink != nil {
            map["NodeIdList"] = self.nodeIdListShrink!
        }
        if self.overwrite != nil {
            map["Overwrite"] = self.overwrite!
        }
        if self.targetDir != nil {
            map["TargetDir"] = self.targetDir!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["ContentType"] as? String {
            self.contentType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileGroup"] as? String {
            self.fileGroup = value
        }
        if let value = dict["FileMode"] as? String {
            self.fileMode = value
        }
        if let value = dict["FileOwner"] as? String {
            self.fileOwner = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NodeIdList"] as? String {
            self.nodeIdListShrink = value
        }
        if let value = dict["Overwrite"] as? Bool {
            self.overwrite = value
        }
        if let value = dict["TargetDir"] as? String {
            self.targetDir = value
        }
        if let value = dict["Timeout"] as? Int32 {
            self.timeout = value
        }
    }
}

public class SendFileResponseBody : Tea.TeaModel {
    public var invokeId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InvokeId"] as? String {
            self.invokeId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SendFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ShrinkClusterRequest : Tea.TeaModel {
    public class NodeGroups : Tea.TeaModel {
        public class HyperNodes : Tea.TeaModel {
            public var hyperNodeId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hyperNodeId != nil {
                    map["HyperNodeId"] = self.hyperNodeId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HyperNodeId"] as? String {
                    self.hyperNodeId = value
                }
            }
        }
        public class Nodes : Tea.TeaModel {
            public var nodeId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
                }
            }
        }
        public var hyperNodes: [ShrinkClusterRequest.NodeGroups.HyperNodes]?

        public var nodeGroupId: String?

        public var nodes: [ShrinkClusterRequest.NodeGroups.Nodes]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hyperNodes != nil {
                var tmp : [Any] = []
                for k in self.hyperNodes! {
                    tmp.append(k.toMap())
                }
                map["HyperNodes"] = tmp
            }
            if self.nodeGroupId != nil {
                map["NodeGroupId"] = self.nodeGroupId!
            }
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HyperNodes"] as? [Any?] {
                var tmp : [ShrinkClusterRequest.NodeGroups.HyperNodes] = []
                for v in value {
                    if v != nil {
                        var model = ShrinkClusterRequest.NodeGroups.HyperNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hyperNodes = tmp
            }
            if let value = dict["NodeGroupId"] as? String {
                self.nodeGroupId = value
            }
            if let value = dict["Nodes"] as? [Any?] {
                var tmp : [ShrinkClusterRequest.NodeGroups.Nodes] = []
                for v in value {
                    if v != nil {
                        var model = ShrinkClusterRequest.NodeGroups.Nodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodes = tmp
            }
        }
    }
    public var clusterId: String?

    public var ignoreFailedNodeTasks: Bool?

    public var nodeGroups: [ShrinkClusterRequest.NodeGroups]?

    public override init() {
        super.init()
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
        if self.ignoreFailedNodeTasks != nil {
            map["IgnoreFailedNodeTasks"] = self.ignoreFailedNodeTasks!
        }
        if self.nodeGroups != nil {
            var tmp : [Any] = []
            for k in self.nodeGroups! {
                tmp.append(k.toMap())
            }
            map["NodeGroups"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["IgnoreFailedNodeTasks"] as? Bool {
            self.ignoreFailedNodeTasks = value
        }
        if let value = dict["NodeGroups"] as? [Any?] {
            var tmp : [ShrinkClusterRequest.NodeGroups] = []
            for v in value {
                if v != nil {
                    var model = ShrinkClusterRequest.NodeGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodeGroups = tmp
        }
    }
}

public class ShrinkClusterShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ignoreFailedNodeTasks: Bool?

    public var nodeGroupsShrink: String?

    public override init() {
        super.init()
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
        if self.ignoreFailedNodeTasks != nil {
            map["IgnoreFailedNodeTasks"] = self.ignoreFailedNodeTasks!
        }
        if self.nodeGroupsShrink != nil {
            map["NodeGroups"] = self.nodeGroupsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["IgnoreFailedNodeTasks"] as? Bool {
            self.ignoreFailedNodeTasks = value
        }
        if let value = dict["NodeGroups"] as? String {
            self.nodeGroupsShrink = value
        }
    }
}

public class ShrinkClusterResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class ShrinkClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ShrinkClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ShrinkClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopInvocationRequest : Tea.TeaModel {
    public var invokeId: String?

    public var nodeIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.nodeIdList != nil {
            map["NodeIdList"] = self.nodeIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InvokeId"] as? String {
            self.invokeId = value
        }
        if let value = dict["NodeIdList"] as? [String] {
            self.nodeIdList = value
        }
    }
}

public class StopInvocationShrinkRequest : Tea.TeaModel {
    public var invokeId: String?

    public var nodeIdListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.nodeIdListShrink != nil {
            map["NodeIdList"] = self.nodeIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InvokeId"] as? String {
            self.invokeId = value
        }
        if let value = dict["NodeIdList"] as? String {
            self.nodeIdListShrink = value
        }
    }
}

public class StopInvocationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class StopInvocationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopInvocationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopInvocationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopNodesRequest : Tea.TeaModel {
    public var ignoreFailedNodeTasks: Bool?

    public var nodes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ignoreFailedNodeTasks != nil {
            map["IgnoreFailedNodeTasks"] = self.ignoreFailedNodeTasks!
        }
        if self.nodes != nil {
            map["Nodes"] = self.nodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IgnoreFailedNodeTasks"] as? Bool {
            self.ignoreFailedNodeTasks = value
        }
        if let value = dict["Nodes"] as? [String] {
            self.nodes = value
        }
    }
}

public class StopNodesShrinkRequest : Tea.TeaModel {
    public var ignoreFailedNodeTasks: Bool?

    public var nodesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ignoreFailedNodeTasks != nil {
            map["IgnoreFailedNodeTasks"] = self.ignoreFailedNodeTasks!
        }
        if self.nodesShrink != nil {
            map["Nodes"] = self.nodesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IgnoreFailedNodeTasks"] as? Bool {
            self.ignoreFailedNodeTasks = value
        }
        if let value = dict["Nodes"] as? String {
            self.nodesShrink = value
        }
    }
}

public class StopNodesResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class StopNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopNodesResponseBody()
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

public class UpdateNodeGroupRequest : Tea.TeaModel {
    public var fileSystemMountEnabled: Bool?

    public var imageId: String?

    public var keyPairName: String?

    public var loginPassword: String?

    public var newNodeGroupName: String?

    public var nodeGroupId: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystemMountEnabled != nil {
            map["FileSystemMountEnabled"] = self.fileSystemMountEnabled!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.loginPassword != nil {
            map["LoginPassword"] = self.loginPassword!
        }
        if self.newNodeGroupName != nil {
            map["NewNodeGroupName"] = self.newNodeGroupName!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemMountEnabled"] as? Bool {
            self.fileSystemMountEnabled = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["LoginPassword"] as? String {
            self.loginPassword = value
        }
        if let value = dict["NewNodeGroupName"] as? String {
            self.newNodeGroupName = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class UpdateNodeGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class UpdateNodeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNodeGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateNodeGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
