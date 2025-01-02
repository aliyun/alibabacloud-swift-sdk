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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("OperationType") {
            self.operationType = dict["OperationType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ApproveOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceRegionId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceRegionId") {
            self.resourceRegionId = dict["ResourceRegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BasicArgs") {
                    self.basicArgs = dict["BasicArgs"] as! Any
                }
                if dict.keys.contains("NodeUnits") {
                    self.nodeUnits = dict["NodeUnits"] as! [Any]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComponentConfig") {
                var model = CreateClusterRequest.Components.ComponentConfig()
                model.fromMap(dict["ComponentConfig"] as! [String: Any])
                self.componentConfig = model
            }
            if dict.keys.contains("ComponentType") {
                self.componentType = dict["ComponentType"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Subnet") {
                            self.subnet = dict["Subnet"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BondDefaultSubnet") {
                        self.bondDefaultSubnet = dict["BondDefaultSubnet"] as! String
                    }
                    if dict.keys.contains("Bonds") {
                        var tmp : [CreateClusterRequest.Networks.IpAllocationPolicy.BondPolicy.Bonds] = []
                        for v in dict["Bonds"] as! [Any] {
                            var model = CreateClusterRequest.Networks.IpAllocationPolicy.BondPolicy.Bonds()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Subnet") {
                            self.subnet = dict["Subnet"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Bonds") {
                        var tmp : [CreateClusterRequest.Networks.IpAllocationPolicy.MachineTypePolicy.Bonds] = []
                        for v in dict["Bonds"] as! [Any] {
                            var model = CreateClusterRequest.Networks.IpAllocationPolicy.MachineTypePolicy.Bonds()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.bonds = tmp
                    }
                    if dict.keys.contains("MachineType") {
                        self.machineType = dict["MachineType"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Subnet") {
                            self.subnet = dict["Subnet"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Bonds") {
                        var tmp : [CreateClusterRequest.Networks.IpAllocationPolicy.NodePolicy.Bonds] = []
                        for v in dict["Bonds"] as! [Any] {
                            var model = CreateClusterRequest.Networks.IpAllocationPolicy.NodePolicy.Bonds()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.bonds = tmp
                    }
                    if dict.keys.contains("NodeId") {
                        self.nodeId = dict["NodeId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BondPolicy") {
                    var model = CreateClusterRequest.Networks.IpAllocationPolicy.BondPolicy()
                    model.fromMap(dict["BondPolicy"] as! [String: Any])
                    self.bondPolicy = model
                }
                if dict.keys.contains("MachineTypePolicy") {
                    var tmp : [CreateClusterRequest.Networks.IpAllocationPolicy.MachineTypePolicy] = []
                    for v in dict["MachineTypePolicy"] as! [Any] {
                        var model = CreateClusterRequest.Networks.IpAllocationPolicy.MachineTypePolicy()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.machineTypePolicy = tmp
                }
                if dict.keys.contains("NodePolicy") {
                    var tmp : [CreateClusterRequest.Networks.IpAllocationPolicy.NodePolicy] = []
                    for v in dict["NodePolicy"] as! [Any] {
                        var model = CreateClusterRequest.Networks.IpAllocationPolicy.NodePolicy()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SubnetCidr") {
                        self.subnetCidr = dict["SubnetCidr"] as! String
                    }
                    if dict.keys.contains("SubnetType") {
                        self.subnetType = dict["SubnetType"] as! String
                    }
                    if dict.keys.contains("ZoneId") {
                        self.zoneId = dict["ZoneId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CenId") {
                    self.cenId = dict["CenId"] as! String
                }
                if dict.keys.contains("CloudLinkCidr") {
                    self.cloudLinkCidr = dict["CloudLinkCidr"] as! String
                }
                if dict.keys.contains("CloudLinkId") {
                    self.cloudLinkId = dict["CloudLinkId"] as! String
                }
                if dict.keys.contains("MonitorVpcId") {
                    self.monitorVpcId = dict["MonitorVpcId"] as! String
                }
                if dict.keys.contains("MonitorVswitchId") {
                    self.monitorVswitchId = dict["MonitorVswitchId"] as! String
                }
                if dict.keys.contains("VpdCidr") {
                    self.vpdCidr = dict["VpdCidr"] as! String
                }
                if dict.keys.contains("VpdSubnets") {
                    var tmp : [CreateClusterRequest.Networks.NewVpdInfo.VpdSubnets] = []
                    for v in dict["VpdSubnets"] as! [Any] {
                        var model = CreateClusterRequest.Networks.NewVpdInfo.VpdSubnets()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("VpdId") {
                    self.vpdId = dict["VpdId"] as! String
                }
                if dict.keys.contains("VpdSubnets") {
                    self.vpdSubnets = dict["VpdSubnets"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IpAllocationPolicy") {
                var tmp : [CreateClusterRequest.Networks.IpAllocationPolicy] = []
                for v in dict["IpAllocationPolicy"] as! [Any] {
                    var model = CreateClusterRequest.Networks.IpAllocationPolicy()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ipAllocationPolicy = tmp
            }
            if dict.keys.contains("NewVpdInfo") {
                var model = CreateClusterRequest.Networks.NewVpdInfo()
                model.fromMap(dict["NewVpdInfo"] as! [String: Any])
                self.newVpdInfo = model
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("TailIpVersion") {
                self.tailIpVersion = dict["TailIpVersion"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VSwitchZoneId") {
                self.vSwitchZoneId = dict["VSwitchZoneId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpdInfo") {
                var model = CreateClusterRequest.Networks.VpdInfo()
                model.fromMap(dict["VpdInfo"] as! [String: Any])
                self.vpdInfo = model
            }
        }
    }
    public class NodeGroups : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Hostname") {
                    self.hostname = dict["Hostname"] as! String
                }
                if dict.keys.contains("LoginPassword") {
                    self.loginPassword = dict["LoginPassword"] as! String
                }
                if dict.keys.contains("NodeId") {
                    self.nodeId = dict["NodeId"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var imageId: String?

        public var machineType: String?

        public var nodeGroupDescription: String?

        public var nodeGroupName: String?

        public var nodes: [CreateClusterRequest.NodeGroups.Nodes]?

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
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
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
            if self.userData != nil {
                map["UserData"] = self.userData!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("MachineType") {
                self.machineType = dict["MachineType"] as! String
            }
            if dict.keys.contains("NodeGroupDescription") {
                self.nodeGroupDescription = dict["NodeGroupDescription"] as! String
            }
            if dict.keys.contains("NodeGroupName") {
                self.nodeGroupName = dict["NodeGroupName"] as! String
            }
            if dict.keys.contains("Nodes") {
                var tmp : [CreateClusterRequest.NodeGroups.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = CreateClusterRequest.NodeGroups.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("UserData") {
                self.userData = dict["UserData"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterDescription") {
            self.clusterDescription = dict["ClusterDescription"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("Components") {
            var tmp : [CreateClusterRequest.Components] = []
            for v in dict["Components"] as! [Any] {
                var model = CreateClusterRequest.Components()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.components = tmp
        }
        if dict.keys.contains("HpnZone") {
            self.hpnZone = dict["HpnZone"] as! String
        }
        if dict.keys.contains("IgnoreFailedNodeTasks") {
            self.ignoreFailedNodeTasks = dict["IgnoreFailedNodeTasks"] as! Bool
        }
        if dict.keys.contains("Networks") {
            var model = CreateClusterRequest.Networks()
            model.fromMap(dict["Networks"] as! [String: Any])
            self.networks = model
        }
        if dict.keys.contains("NimizVSwitches") {
            self.nimizVSwitches = dict["NimizVSwitches"] as! [String]
        }
        if dict.keys.contains("NodeGroups") {
            var tmp : [CreateClusterRequest.NodeGroups] = []
            for v in dict["NodeGroups"] as! [Any] {
                var model = CreateClusterRequest.NodeGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodeGroups = tmp
        }
        if dict.keys.contains("OpenEniJumboFrame") {
            self.openEniJumboFrame = dict["OpenEniJumboFrame"] as! Bool
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateClusterRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateClusterRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterDescription") {
            self.clusterDescription = dict["ClusterDescription"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("Components") {
            self.componentsShrink = dict["Components"] as! String
        }
        if dict.keys.contains("HpnZone") {
            self.hpnZone = dict["HpnZone"] as! String
        }
        if dict.keys.contains("IgnoreFailedNodeTasks") {
            self.ignoreFailedNodeTasks = dict["IgnoreFailedNodeTasks"] as! Bool
        }
        if dict.keys.contains("Networks") {
            self.networksShrink = dict["Networks"] as! String
        }
        if dict.keys.contains("NimizVSwitches") {
            self.nimizVSwitchesShrink = dict["NimizVSwitches"] as! String
        }
        if dict.keys.contains("NodeGroups") {
            self.nodeGroupsShrink = dict["NodeGroups"] as! String
        }
        if dict.keys.contains("OpenEniJumboFrame") {
            self.openEniJumboFrame = dict["OpenEniJumboFrame"] as! Bool
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateClusterShrinkRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateClusterShrinkRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComponentId") {
                self.componentId = dict["ComponentId"] as! String
            }
            if dict.keys.contains("ComponentType") {
                self.componentType = dict["ComponentType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VpdId") {
                self.vpdId = dict["VpdId"] as! String
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

    public var networks: [DescribeClusterResponseBody.Networks]?

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
            var tmp : [Any] = []
            for k in self.networks! {
                tmp.append(k.toMap())
            }
            map["Networks"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterDescription") {
            self.clusterDescription = dict["ClusterDescription"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("Components") {
            var tmp : [DescribeClusterResponseBody.Components] = []
            for v in dict["Components"] as! [Any] {
                var model = DescribeClusterResponseBody.Components()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.components = tmp
        }
        if dict.keys.contains("ComputingIpVersion") {
            self.computingIpVersion = dict["ComputingIpVersion"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("HpnZone") {
            self.hpnZone = dict["HpnZone"] as! String
        }
        if dict.keys.contains("Networks") {
            var tmp : [DescribeClusterResponseBody.Networks] = []
            for v in dict["Networks"] as! [Any] {
                var model = DescribeClusterResponseBody.Networks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.networks = tmp
        }
        if dict.keys.contains("NodeCount") {
            self.nodeCount = dict["NodeCount"] as! Int64
        }
        if dict.keys.contains("NodeGroupCount") {
            self.nodeGroupCount = dict["NodeGroupCount"] as! Int64
        }
        if dict.keys.contains("OpenEniJumboFrame") {
            self.openEniJumboFrame = dict["OpenEniJumboFrame"] as! String
        }
        if dict.keys.contains("OperatingState") {
            self.operatingState = dict["OperatingState"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContentEncoding") {
            self.contentEncoding = dict["ContentEncoding"] as! String
        }
        if dict.keys.contains("IncludeOutput") {
            self.includeOutput = dict["IncludeOutput"] as! Bool
        }
        if dict.keys.contains("InvokeId") {
            self.invokeId = dict["InvokeId"] as! String
        }
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CreationTime") {
                            self.creationTime = dict["CreationTime"] as! String
                        }
                        if dict.keys.contains("Dropped") {
                            self.dropped = dict["Dropped"] as! Int32
                        }
                        if dict.keys.contains("ErrorCode") {
                            self.errorCode = dict["ErrorCode"] as! String
                        }
                        if dict.keys.contains("ErrorInfo") {
                            self.errorInfo = dict["ErrorInfo"] as! String
                        }
                        if dict.keys.contains("ExitCode") {
                            self.exitCode = dict["ExitCode"] as! Int32
                        }
                        if dict.keys.contains("FinishTime") {
                            self.finishTime = dict["FinishTime"] as! String
                        }
                        if dict.keys.contains("InvocationStatus") {
                            self.invocationStatus = dict["InvocationStatus"] as! String
                        }
                        if dict.keys.contains("NodeId") {
                            self.nodeId = dict["NodeId"] as! String
                        }
                        if dict.keys.contains("NodeInvokeStatus") {
                            self.nodeInvokeStatus = dict["NodeInvokeStatus"] as! String
                        }
                        if dict.keys.contains("Output") {
                            self.output = dict["Output"] as! String
                        }
                        if dict.keys.contains("Repeats") {
                            self.repeats = dict["Repeats"] as! Int32
                        }
                        if dict.keys.contains("StartTime") {
                            self.startTime = dict["StartTime"] as! String
                        }
                        if dict.keys.contains("StopTime") {
                            self.stopTime = dict["StopTime"] as! String
                        }
                        if dict.keys.contains("Timed") {
                            self.timed = dict["Timed"] as! String
                        }
                        if dict.keys.contains("UpdateTime") {
                            self.updateTime = dict["UpdateTime"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("InvokeNode") {
                        var tmp : [DescribeInvocationsResponseBody.Invocations.Invocation.InvokeNodes.InvokeNode] = []
                        for v in dict["InvokeNode"] as! [Any] {
                            var model = DescribeInvocationsResponseBody.Invocations.Invocation.InvokeNodes.InvokeNode()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommandContent") {
                    self.commandContent = dict["CommandContent"] as! String
                }
                if dict.keys.contains("CommandDescription") {
                    self.commandDescription = dict["CommandDescription"] as! String
                }
                if dict.keys.contains("CommandName") {
                    self.commandName = dict["CommandName"] as! String
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("Frequency") {
                    self.frequency = dict["Frequency"] as! String
                }
                if dict.keys.contains("InvocationStatus") {
                    self.invocationStatus = dict["InvocationStatus"] as! String
                }
                if dict.keys.contains("InvokeId") {
                    self.invokeId = dict["InvokeId"] as! String
                }
                if dict.keys.contains("InvokeNodes") {
                    var model = DescribeInvocationsResponseBody.Invocations.Invocation.InvokeNodes()
                    model.fromMap(dict["InvokeNodes"] as! [String: Any])
                    self.invokeNodes = model
                }
                if dict.keys.contains("InvokeStatus") {
                    self.invokeStatus = dict["InvokeStatus"] as! String
                }
                if dict.keys.contains("Parameters") {
                    self.parameters = dict["Parameters"] as! String
                }
                if dict.keys.contains("RepeatMode") {
                    self.repeatMode = dict["RepeatMode"] as! String
                }
                if dict.keys.contains("Timeout") {
                    self.timeout = dict["Timeout"] as! Int32
                }
                if dict.keys.contains("Username") {
                    self.username = dict["Username"] as! String
                }
                if dict.keys.contains("WorkingDir") {
                    self.workingDir = dict["WorkingDir"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Invocation") {
                var tmp : [DescribeInvocationsResponseBody.Invocations.Invocation] = []
                for v in dict["Invocation"] as! [Any] {
                    var model = DescribeInvocationsResponseBody.Invocations.Invocation()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Invocations") {
            var model = DescribeInvocationsResponseBody.Invocations()
            model.fromMap(dict["Invocations"] as! [String: Any])
            self.invocations = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInvocationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! String
        }
    }
}

public class DescribeNodeResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BondName") {
                self.bondName = dict["BondName"] as! String
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("SubnetId") {
                self.subnetId = dict["SubnetId"] as! String
            }
            if dict.keys.contains("VpdId") {
                self.vpdId = dict["VpdId"] as! String
            }
        }
    }
    public var clusterId: String?

    public var clusterName: String?

    public var createTime: String?

    public var expiredTime: String?

    public var hostname: String?

    public var hpnZone: String?

    public var imageId: String?

    public var imageName: String?

    public var machineType: String?

    public var networks: [DescribeNodeResponseBody.Networks]?

    public var nodeGroupId: String?

    public var nodeGroupName: String?

    public var nodeId: String?

    public var operatingState: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var sn: String?

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
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.hpnZone != nil {
            map["HpnZone"] = self.hpnZone!
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ExpiredTime") {
            self.expiredTime = dict["ExpiredTime"] as! String
        }
        if dict.keys.contains("Hostname") {
            self.hostname = dict["Hostname"] as! String
        }
        if dict.keys.contains("HpnZone") {
            self.hpnZone = dict["HpnZone"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
        if dict.keys.contains("MachineType") {
            self.machineType = dict["MachineType"] as! String
        }
        if dict.keys.contains("Networks") {
            var tmp : [DescribeNodeResponseBody.Networks] = []
            for v in dict["Networks"] as! [Any] {
                var model = DescribeNodeResponseBody.Networks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.networks = tmp
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("NodeGroupName") {
            self.nodeGroupName = dict["NodeGroupName"] as! String
        }
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("OperatingState") {
            self.operatingState = dict["OperatingState"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Sn") {
            self.sn = dict["Sn"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InvokeId") {
            self.invokeId = dict["InvokeId"] as! String
        }
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CreationTime") {
                            self.creationTime = dict["CreationTime"] as! String
                        }
                        if dict.keys.contains("ErrorCode") {
                            self.errorCode = dict["ErrorCode"] as! String
                        }
                        if dict.keys.contains("ErrorInfo") {
                            self.errorInfo = dict["ErrorInfo"] as! String
                        }
                        if dict.keys.contains("FinishTime") {
                            self.finishTime = dict["FinishTime"] as! String
                        }
                        if dict.keys.contains("InvocationStatus") {
                            self.invocationStatus = dict["InvocationStatus"] as! String
                        }
                        if dict.keys.contains("NodeId") {
                            self.nodeId = dict["NodeId"] as! String
                        }
                        if dict.keys.contains("StartTime") {
                            self.startTime = dict["StartTime"] as! String
                        }
                        if dict.keys.contains("UpdateTime") {
                            self.updateTime = dict["UpdateTime"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("InvokeNode") {
                        var tmp : [DescribeSendFileResultsResponseBody.Invocations.Invocation.InvokeNodes.InvokeNode] = []
                        for v in dict["InvokeNode"] as! [Any] {
                            var model = DescribeSendFileResultsResponseBody.Invocations.Invocation.InvokeNodes.InvokeNode()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("ContentType") {
                    self.contentType = dict["ContentType"] as! String
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("FileGroup") {
                    self.fileGroup = dict["FileGroup"] as! String
                }
                if dict.keys.contains("FileMode") {
                    self.fileMode = dict["FileMode"] as! String
                }
                if dict.keys.contains("FileOwner") {
                    self.fileOwner = dict["FileOwner"] as! String
                }
                if dict.keys.contains("InvocationStatus") {
                    self.invocationStatus = dict["InvocationStatus"] as! String
                }
                if dict.keys.contains("InvokeNodes") {
                    var model = DescribeSendFileResultsResponseBody.Invocations.Invocation.InvokeNodes()
                    model.fromMap(dict["InvokeNodes"] as! [String: Any])
                    self.invokeNodes = model
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NodeCount") {
                    self.nodeCount = dict["NodeCount"] as! Int32
                }
                if dict.keys.contains("Overwrite") {
                    self.overwrite = dict["Overwrite"] as! Bool
                }
                if dict.keys.contains("TargetDir") {
                    self.targetDir = dict["TargetDir"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Invocation") {
                var tmp : [DescribeSendFileResultsResponseBody.Invocations.Invocation] = []
                for v in dict["Invocation"] as! [Any] {
                    var model = DescribeSendFileResultsResponseBody.Invocations.Invocation()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Invocations") {
            var model = DescribeSendFileResultsResponseBody.Invocations()
            model.fromMap(dict["Invocations"] as! [String: Any])
            self.invocations = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSendFileResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TaskState") {
                    self.taskState = dict["TaskState"] as! String
                }
                if dict.keys.contains("TaskType") {
                    self.taskType = dict["TaskType"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("StageTag") {
                self.stageTag = dict["StageTag"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("StepName") {
                self.stepName = dict["StepName"] as! String
            }
            if dict.keys.contains("StepState") {
                self.stepState = dict["StepState"] as! String
            }
            if dict.keys.contains("StepType") {
                self.stepType = dict["StepType"] as! String
            }
            if dict.keys.contains("SubTasks") {
                var tmp : [DescribeTaskResponseBody.Steps.SubTasks] = []
                for v in dict["SubTasks"] as! [Any] {
                    var model = DescribeTaskResponseBody.Steps.SubTasks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subTasks = tmp
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NodeIds") {
            self.nodeIds = dict["NodeIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Steps") {
            var tmp : [DescribeTaskResponseBody.Steps] = []
            for v in dict["Steps"] as! [Any] {
                var model = DescribeTaskResponseBody.Steps()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.steps = tmp
        }
        if dict.keys.contains("TaskState") {
            self.taskState = dict["TaskState"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Zones") {
            var tmp : [DescribeZonesResponseBody.Zones] = []
            for v in dict["Zones"] as! [Any] {
                var model = DescribeZonesResponseBody.Zones()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Subnet") {
                        self.subnet = dict["Subnet"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BondDefaultSubnet") {
                    self.bondDefaultSubnet = dict["BondDefaultSubnet"] as! String
                }
                if dict.keys.contains("Bonds") {
                    var tmp : [ExtendClusterRequest.IpAllocationPolicy.BondPolicy.Bonds] = []
                    for v in dict["Bonds"] as! [Any] {
                        var model = ExtendClusterRequest.IpAllocationPolicy.BondPolicy.Bonds()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Subnet") {
                        self.subnet = dict["Subnet"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bonds") {
                    var tmp : [ExtendClusterRequest.IpAllocationPolicy.MachineTypePolicy.Bonds] = []
                    for v in dict["Bonds"] as! [Any] {
                        var model = ExtendClusterRequest.IpAllocationPolicy.MachineTypePolicy.Bonds()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.bonds = tmp
                }
                if dict.keys.contains("MachineType") {
                    self.machineType = dict["MachineType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Subnet") {
                        self.subnet = dict["Subnet"] as! String
                    }
                }
            }
            public var bonds: [ExtendClusterRequest.IpAllocationPolicy.NodePolicy.Bonds]?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bonds") {
                    var tmp : [ExtendClusterRequest.IpAllocationPolicy.NodePolicy.Bonds] = []
                    for v in dict["Bonds"] as! [Any] {
                        var model = ExtendClusterRequest.IpAllocationPolicy.NodePolicy.Bonds()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.bonds = tmp
                }
                if dict.keys.contains("NodeId") {
                    self.nodeId = dict["NodeId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BondPolicy") {
                var model = ExtendClusterRequest.IpAllocationPolicy.BondPolicy()
                model.fromMap(dict["BondPolicy"] as! [String: Any])
                self.bondPolicy = model
            }
            if dict.keys.contains("MachineTypePolicy") {
                var tmp : [ExtendClusterRequest.IpAllocationPolicy.MachineTypePolicy] = []
                for v in dict["MachineTypePolicy"] as! [Any] {
                    var model = ExtendClusterRequest.IpAllocationPolicy.MachineTypePolicy()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.machineTypePolicy = tmp
            }
            if dict.keys.contains("NodePolicy") {
                var tmp : [ExtendClusterRequest.IpAllocationPolicy.NodePolicy] = []
                for v in dict["NodePolicy"] as! [Any] {
                    var model = ExtendClusterRequest.IpAllocationPolicy.NodePolicy()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodePolicy = tmp
            }
        }
    }
    public class NodeGroups : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Hostname") {
                    self.hostname = dict["Hostname"] as! String
                }
                if dict.keys.contains("LoginPassword") {
                    self.loginPassword = dict["LoginPassword"] as! String
                }
                if dict.keys.contains("NodeId") {
                    self.nodeId = dict["NodeId"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var nodeGroupId: String?

        public var nodes: [ExtendClusterRequest.NodeGroups.Nodes]?

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
            if self.userData != nil {
                map["UserData"] = self.userData!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeGroupId") {
                self.nodeGroupId = dict["NodeGroupId"] as! String
            }
            if dict.keys.contains("Nodes") {
                var tmp : [ExtendClusterRequest.NodeGroups.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = ExtendClusterRequest.NodeGroups.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("UserData") {
                self.userData = dict["UserData"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("IgnoreFailedNodeTasks") {
            self.ignoreFailedNodeTasks = dict["IgnoreFailedNodeTasks"] as! Bool
        }
        if dict.keys.contains("IpAllocationPolicy") {
            var tmp : [ExtendClusterRequest.IpAllocationPolicy] = []
            for v in dict["IpAllocationPolicy"] as! [Any] {
                var model = ExtendClusterRequest.IpAllocationPolicy()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ipAllocationPolicy = tmp
        }
        if dict.keys.contains("NodeGroups") {
            var tmp : [ExtendClusterRequest.NodeGroups] = []
            for v in dict["NodeGroups"] as! [Any] {
                var model = ExtendClusterRequest.NodeGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodeGroups = tmp
        }
        if dict.keys.contains("VSwitchZoneId") {
            self.vSwitchZoneId = dict["VSwitchZoneId"] as! String
        }
        if dict.keys.contains("VpdSubnets") {
            self.vpdSubnets = dict["VpdSubnets"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("IgnoreFailedNodeTasks") {
            self.ignoreFailedNodeTasks = dict["IgnoreFailedNodeTasks"] as! Bool
        }
        if dict.keys.contains("IpAllocationPolicy") {
            self.ipAllocationPolicyShrink = dict["IpAllocationPolicy"] as! String
        }
        if dict.keys.contains("NodeGroups") {
            self.nodeGroupsShrink = dict["NodeGroups"] as! String
        }
        if dict.keys.contains("VSwitchZoneId") {
            self.vSwitchZoneId = dict["VSwitchZoneId"] as! String
        }
        if dict.keys.contains("VpdSubnets") {
            self.vpdSubnetsShrink = dict["VpdSubnets"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ExtendClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClusterNodesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var maxResults: Int64?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BondName") {
                    self.bondName = dict["BondName"] as! String
                }
                if dict.keys.contains("Ip") {
                    self.ip = dict["Ip"] as! String
                }
                if dict.keys.contains("SubnetId") {
                    self.subnetId = dict["SubnetId"] as! String
                }
                if dict.keys.contains("VpdId") {
                    self.vpdId = dict["VpdId"] as! String
                }
            }
        }
        public var createTime: String?

        public var expiredTime: String?

        public var hostname: String?

        public var hpnZone: String?

        public var imageId: String?

        public var machineType: String?

        public var networks: [ListClusterNodesResponseBody.Nodes.Networks]?

        public var nodeGroupId: String?

        public var nodeGroupName: String?

        public var nodeId: String?

        public var operatingState: String?

        public var sn: String?

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
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.hpnZone != nil {
                map["HpnZone"] = self.hpnZone!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
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
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("HpnZone") {
                self.hpnZone = dict["HpnZone"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("MachineType") {
                self.machineType = dict["MachineType"] as! String
            }
            if dict.keys.contains("Networks") {
                var tmp : [ListClusterNodesResponseBody.Nodes.Networks] = []
                for v in dict["Networks"] as! [Any] {
                    var model = ListClusterNodesResponseBody.Nodes.Networks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.networks = tmp
            }
            if dict.keys.contains("NodeGroupId") {
                self.nodeGroupId = dict["NodeGroupId"] as! String
            }
            if dict.keys.contains("NodeGroupName") {
                self.nodeGroupName = dict["NodeGroupName"] as! String
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("OperatingState") {
                self.operatingState = dict["OperatingState"] as! String
            }
            if dict.keys.contains("Sn") {
                self.sn = dict["Sn"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Nodes") {
            var tmp : [ListClusterNodesResponseBody.Nodes] = []
            for v in dict["Nodes"] as! [Any] {
                var model = ListClusterNodesResponseBody.Nodes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodes = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListClusterNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClustersRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class ListClustersResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterDescription") {
                self.clusterDescription = dict["ClusterDescription"] as! String
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterName") {
                self.clusterName = dict["ClusterName"] as! String
            }
            if dict.keys.contains("ClusterType") {
                self.clusterType = dict["ClusterType"] as! String
            }
            if dict.keys.contains("Components") {
                self.components = dict["Components"] as! Any
            }
            if dict.keys.contains("ComputingIpVersion") {
                self.computingIpVersion = dict["ComputingIpVersion"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("HpnZone") {
                self.hpnZone = dict["HpnZone"] as! String
            }
            if dict.keys.contains("NodeCount") {
                self.nodeCount = dict["NodeCount"] as! Int64
            }
            if dict.keys.contains("NodeGroupCount") {
                self.nodeGroupCount = dict["NodeGroupCount"] as! Int64
            }
            if dict.keys.contains("OperatingState") {
                self.operatingState = dict["OperatingState"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clusters") {
            var tmp : [ListClustersResponseBody.Clusters] = []
            for v in dict["Clusters"] as! [Any] {
                var model = ListClustersResponseBody.Clusters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clusters = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFreeNodesRequest : Tea.TeaModel {
    public var hpnZone: String?

    public var machineType: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HpnZone") {
            self.hpnZone = dict["HpnZone"] as! String
        }
        if dict.keys.contains("MachineType") {
            self.machineType = dict["MachineType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class ListFreeNodesResponseBody : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public var createTime: String?

        public var expiredTime: String?

        public var hpnZone: String?

        public var machineType: String?

        public var nodeId: String?

        public var resourceGroupId: String?

        public var sn: String?

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
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.hpnZone != nil {
                map["HpnZone"] = self.hpnZone!
            }
            if self.machineType != nil {
                map["MachineType"] = self.machineType!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.sn != nil {
                map["Sn"] = self.sn!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("HpnZone") {
                self.hpnZone = dict["HpnZone"] as! String
            }
            if dict.keys.contains("MachineType") {
                self.machineType = dict["MachineType"] as! String
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Sn") {
                self.sn = dict["Sn"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Nodes") {
            var tmp : [ListFreeNodesResponseBody.Nodes] = []
            for v in dict["Nodes"] as! [Any] {
                var model = ListFreeNodesResponseBody.Nodes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodes = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListFreeNodesResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("IgnoreFailedNodeTasks") {
            self.ignoreFailedNodeTasks = dict["IgnoreFailedNodeTasks"] as! Bool
        }
        if dict.keys.contains("Nodes") {
            self.nodes = dict["Nodes"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("IgnoreFailedNodeTasks") {
            self.ignoreFailedNodeTasks = dict["IgnoreFailedNodeTasks"] as! Bool
        }
        if dict.keys.contains("Nodes") {
            self.nodesShrink = dict["Nodes"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RebootNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("LoginPassword") {
                self.loginPassword = dict["LoginPassword"] as! String
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("IgnoreFailedNodeTasks") {
            self.ignoreFailedNodeTasks = dict["IgnoreFailedNodeTasks"] as! Bool
        }
        if dict.keys.contains("Nodes") {
            var tmp : [ReimageNodesRequest.Nodes] = []
            for v in dict["Nodes"] as! [Any] {
                var model = ReimageNodesRequest.Nodes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodes = tmp
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("IgnoreFailedNodeTasks") {
            self.ignoreFailedNodeTasks = dict["IgnoreFailedNodeTasks"] as! Bool
        }
        if dict.keys.contains("Nodes") {
            self.nodesShrink = dict["Nodes"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReimageNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunCommandRequest : Tea.TeaModel {
    public var clientToken: String?

    public var commandContent: String?

    public var contentEncoding: String?

    public var description_: String?

    public var enableParameter: Bool?

    public var frequency: String?

    public var name: String?

    public var nodeIdList: [String]?

    public var parameters: [String: Any]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commandContent != nil {
            map["CommandContent"] = self.commandContent!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CommandContent") {
            self.commandContent = dict["CommandContent"] as! String
        }
        if dict.keys.contains("ContentEncoding") {
            self.contentEncoding = dict["ContentEncoding"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EnableParameter") {
            self.enableParameter = dict["EnableParameter"] as! Bool
        }
        if dict.keys.contains("Frequency") {
            self.frequency = dict["Frequency"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NodeIdList") {
            self.nodeIdList = dict["NodeIdList"] as! [String]
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("RepeatMode") {
            self.repeatMode = dict["RepeatMode"] as! String
        }
        if dict.keys.contains("Timeout") {
            self.timeout = dict["Timeout"] as! Int32
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("WorkingDir") {
            self.workingDir = dict["WorkingDir"] as! String
        }
    }
}

public class RunCommandShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var commandContent: String?

    public var contentEncoding: String?

    public var description_: String?

    public var enableParameter: Bool?

    public var frequency: String?

    public var name: String?

    public var nodeIdListShrink: String?

    public var parametersShrink: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commandContent != nil {
            map["CommandContent"] = self.commandContent!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CommandContent") {
            self.commandContent = dict["CommandContent"] as! String
        }
        if dict.keys.contains("ContentEncoding") {
            self.contentEncoding = dict["ContentEncoding"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EnableParameter") {
            self.enableParameter = dict["EnableParameter"] as! Bool
        }
        if dict.keys.contains("Frequency") {
            self.frequency = dict["Frequency"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NodeIdList") {
            self.nodeIdListShrink = dict["NodeIdList"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("RepeatMode") {
            self.repeatMode = dict["RepeatMode"] as! String
        }
        if dict.keys.contains("Timeout") {
            self.timeout = dict["Timeout"] as! Int32
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("WorkingDir") {
            self.workingDir = dict["WorkingDir"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InvokeId") {
            self.invokeId = dict["InvokeId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunCommandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentType") {
            self.contentType = dict["ContentType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileGroup") {
            self.fileGroup = dict["FileGroup"] as! String
        }
        if dict.keys.contains("FileMode") {
            self.fileMode = dict["FileMode"] as! String
        }
        if dict.keys.contains("FileOwner") {
            self.fileOwner = dict["FileOwner"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NodeIdList") {
            self.nodeIdList = dict["NodeIdList"] as! [String]
        }
        if dict.keys.contains("Overwrite") {
            self.overwrite = dict["Overwrite"] as! Bool
        }
        if dict.keys.contains("TargetDir") {
            self.targetDir = dict["TargetDir"] as! String
        }
        if dict.keys.contains("Timeout") {
            self.timeout = dict["Timeout"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentType") {
            self.contentType = dict["ContentType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileGroup") {
            self.fileGroup = dict["FileGroup"] as! String
        }
        if dict.keys.contains("FileMode") {
            self.fileMode = dict["FileMode"] as! String
        }
        if dict.keys.contains("FileOwner") {
            self.fileOwner = dict["FileOwner"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NodeIdList") {
            self.nodeIdListShrink = dict["NodeIdList"] as! String
        }
        if dict.keys.contains("Overwrite") {
            self.overwrite = dict["Overwrite"] as! Bool
        }
        if dict.keys.contains("TargetDir") {
            self.targetDir = dict["TargetDir"] as! String
        }
        if dict.keys.contains("Timeout") {
            self.timeout = dict["Timeout"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InvokeId") {
            self.invokeId = dict["InvokeId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ShrinkClusterRequest : Tea.TeaModel {
    public class NodeGroups : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NodeId") {
                    self.nodeId = dict["NodeId"] as! String
                }
            }
        }
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeGroupId") {
                self.nodeGroupId = dict["NodeGroupId"] as! String
            }
            if dict.keys.contains("Nodes") {
                var tmp : [ShrinkClusterRequest.NodeGroups.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = ShrinkClusterRequest.NodeGroups.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("IgnoreFailedNodeTasks") {
            self.ignoreFailedNodeTasks = dict["IgnoreFailedNodeTasks"] as! Bool
        }
        if dict.keys.contains("NodeGroups") {
            var tmp : [ShrinkClusterRequest.NodeGroups] = []
            for v in dict["NodeGroups"] as! [Any] {
                var model = ShrinkClusterRequest.NodeGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("IgnoreFailedNodeTasks") {
            self.ignoreFailedNodeTasks = dict["IgnoreFailedNodeTasks"] as! Bool
        }
        if dict.keys.contains("NodeGroups") {
            self.nodeGroupsShrink = dict["NodeGroups"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ShrinkClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InvokeId") {
            self.invokeId = dict["InvokeId"] as! String
        }
        if dict.keys.contains("NodeIdList") {
            self.nodeIdList = dict["NodeIdList"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InvokeId") {
            self.invokeId = dict["InvokeId"] as! String
        }
        if dict.keys.contains("NodeIdList") {
            self.nodeIdListShrink = dict["NodeIdList"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopInvocationResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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
