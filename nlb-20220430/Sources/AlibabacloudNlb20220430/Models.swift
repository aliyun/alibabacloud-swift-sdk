import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddServersToServerGroupRequest : Tea.TeaModel {
    public class Servers : Tea.TeaModel {
        public var description_: String?

        public var port: Int32?

        public var serverId: String?

        public var serverIp: String?

        public var serverType: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.serverId != nil {
                map["ServerId"] = self.serverId!
            }
            if self.serverIp != nil {
                map["ServerIp"] = self.serverIp!
            }
            if self.serverType != nil {
                map["ServerType"] = self.serverType!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
                self.serverId = dict["ServerId"] as! String
            }
            if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
                self.serverIp = dict["ServerIp"] as! String
            }
            if dict.keys.contains("ServerType") && dict["ServerType"] != nil {
                self.serverType = dict["ServerType"] as! String
            }
            if dict.keys.contains("Weight") && dict["Weight"] != nil {
                self.weight = dict["Weight"] as! Int32
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var serverGroupId: String?

    public var servers: [AddServersToServerGroupRequest.Servers]?

    public override init() {
        super.init()
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
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        if self.servers != nil {
            var tmp : [Any] = []
            for k in self.servers! {
                tmp.append(k.toMap())
            }
            map["Servers"] = tmp
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
        if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
        if dict.keys.contains("Servers") && dict["Servers"] != nil {
            var tmp : [AddServersToServerGroupRequest.Servers] = []
            for v in dict["Servers"] as! [Any] {
                var model = AddServersToServerGroupRequest.Servers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.servers = tmp
        }
    }
}

public class AddServersToServerGroupResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public var serverGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
    }
}

public class AddServersToServerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddServersToServerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddServersToServerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateAdditionalCertificatesWithListenerRequest : Tea.TeaModel {
    public var additionalCertificateIds: [String]?

    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

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
        if self.additionalCertificateIds != nil {
            map["AdditionalCertificateIds"] = self.additionalCertificateIds!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalCertificateIds") && dict["AdditionalCertificateIds"] != nil {
            self.additionalCertificateIds = dict["AdditionalCertificateIds"] as! [String]
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") && dict["ListenerId"] != nil {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AssociateAdditionalCertificatesWithListenerResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AssociateAdditionalCertificatesWithListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateAdditionalCertificatesWithListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AssociateAdditionalCertificatesWithListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachCommonBandwidthPackageToLoadBalancerRequest : Tea.TeaModel {
    public var bandwidthPackageId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

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
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BandwidthPackageId") && dict["BandwidthPackageId"] != nil {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AttachCommonBandwidthPackageToLoadBalancerResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AttachCommonBandwidthPackageToLoadBalancerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachCommonBandwidthPackageToLoadBalancerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachCommonBandwidthPackageToLoadBalancerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelShiftLoadBalancerZonesRequest : Tea.TeaModel {
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
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

    public var regionId: String?

    public var zoneMappings: [CancelShiftLoadBalancerZonesRequest.ZoneMappings]?

    public override init() {
        super.init()
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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneMappings") && dict["ZoneMappings"] != nil {
            var tmp : [CancelShiftLoadBalancerZonesRequest.ZoneMappings] = []
            for v in dict["ZoneMappings"] as! [Any] {
                var model = CancelShiftLoadBalancerZonesRequest.ZoneMappings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.zoneMappings = tmp
        }
    }
}

public class CancelShiftLoadBalancerZonesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class CancelShiftLoadBalancerZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelShiftLoadBalancerZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CancelShiftLoadBalancerZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateListenerRequest : Tea.TeaModel {
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
    public var alpnEnabled: Bool?

    public var alpnPolicy: String?

    public var caCertificateIds: [String]?

    public var caEnabled: Bool?

    public var certificateIds: [String]?

    public var clientToken: String?

    public var cps: Int32?

    public var dryRun: Bool?

    public var endPort: Int32?

    public var idleTimeout: Int32?

    public var listenerDescription: String?

    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var loadBalancerId: String?

    public var mss: Int32?

    public var proxyProtocolEnabled: Bool?

    public var regionId: String?

    public var secSensorEnabled: Bool?

    public var securityPolicyId: String?

    public var serverGroupId: String?

    public var startPort: Int32?

    public var tag: [CreateListenerRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alpnEnabled != nil {
            map["AlpnEnabled"] = self.alpnEnabled!
        }
        if self.alpnPolicy != nil {
            map["AlpnPolicy"] = self.alpnPolicy!
        }
        if self.caCertificateIds != nil {
            map["CaCertificateIds"] = self.caCertificateIds!
        }
        if self.caEnabled != nil {
            map["CaEnabled"] = self.caEnabled!
        }
        if self.certificateIds != nil {
            map["CertificateIds"] = self.certificateIds!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.cps != nil {
            map["Cps"] = self.cps!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endPort != nil {
            map["EndPort"] = self.endPort!
        }
        if self.idleTimeout != nil {
            map["IdleTimeout"] = self.idleTimeout!
        }
        if self.listenerDescription != nil {
            map["ListenerDescription"] = self.listenerDescription!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.mss != nil {
            map["Mss"] = self.mss!
        }
        if self.proxyProtocolEnabled != nil {
            map["ProxyProtocolEnabled"] = self.proxyProtocolEnabled!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.secSensorEnabled != nil {
            map["SecSensorEnabled"] = self.secSensorEnabled!
        }
        if self.securityPolicyId != nil {
            map["SecurityPolicyId"] = self.securityPolicyId!
        }
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        if self.startPort != nil {
            map["StartPort"] = self.startPort!
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
        if dict.keys.contains("AlpnEnabled") && dict["AlpnEnabled"] != nil {
            self.alpnEnabled = dict["AlpnEnabled"] as! Bool
        }
        if dict.keys.contains("AlpnPolicy") && dict["AlpnPolicy"] != nil {
            self.alpnPolicy = dict["AlpnPolicy"] as! String
        }
        if dict.keys.contains("CaCertificateIds") && dict["CaCertificateIds"] != nil {
            self.caCertificateIds = dict["CaCertificateIds"] as! [String]
        }
        if dict.keys.contains("CaEnabled") && dict["CaEnabled"] != nil {
            self.caEnabled = dict["CaEnabled"] as! Bool
        }
        if dict.keys.contains("CertificateIds") && dict["CertificateIds"] != nil {
            self.certificateIds = dict["CertificateIds"] as! [String]
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Cps") && dict["Cps"] != nil {
            self.cps = dict["Cps"] as! Int32
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndPort") && dict["EndPort"] != nil {
            self.endPort = dict["EndPort"] as! Int32
        }
        if dict.keys.contains("IdleTimeout") && dict["IdleTimeout"] != nil {
            self.idleTimeout = dict["IdleTimeout"] as! Int32
        }
        if dict.keys.contains("ListenerDescription") && dict["ListenerDescription"] != nil {
            self.listenerDescription = dict["ListenerDescription"] as! String
        }
        if dict.keys.contains("ListenerPort") && dict["ListenerPort"] != nil {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") && dict["ListenerProtocol"] != nil {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("Mss") && dict["Mss"] != nil {
            self.mss = dict["Mss"] as! Int32
        }
        if dict.keys.contains("ProxyProtocolEnabled") && dict["ProxyProtocolEnabled"] != nil {
            self.proxyProtocolEnabled = dict["ProxyProtocolEnabled"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecSensorEnabled") && dict["SecSensorEnabled"] != nil {
            self.secSensorEnabled = dict["SecSensorEnabled"] as! Bool
        }
        if dict.keys.contains("SecurityPolicyId") && dict["SecurityPolicyId"] != nil {
            self.securityPolicyId = dict["SecurityPolicyId"] as! String
        }
        if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
        if dict.keys.contains("StartPort") && dict["StartPort"] != nil {
            self.startPort = dict["StartPort"] as! Int32
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateListenerRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateListenerRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class CreateListenerResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var listenerId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("ListenerId") && dict["ListenerId"] != nil {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLoadBalancerRequest : Tea.TeaModel {
    public class DeletionProtectionConfig : Tea.TeaModel {
        public var enabled: Bool?

        public var reason: String?

        public override init() {
            super.init()
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
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("Reason") && dict["Reason"] != nil {
                self.reason = dict["Reason"] as! String
            }
        }
    }
    public class LoadBalancerBillingConfig : Tea.TeaModel {
        public var payType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PayType") && dict["PayType"] != nil {
                self.payType = dict["PayType"] as! String
            }
        }
    }
    public class ModificationProtectionConfig : Tea.TeaModel {
        public var reason: String?

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
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Reason") && dict["Reason"] != nil {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class ZoneMappings : Tea.TeaModel {
        public var allocationId: String?

        public var privateIPv4Address: String?

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
            if self.allocationId != nil {
                map["AllocationId"] = self.allocationId!
            }
            if self.privateIPv4Address != nil {
                map["PrivateIPv4Address"] = self.privateIPv4Address!
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
            if dict.keys.contains("AllocationId") && dict["AllocationId"] != nil {
                self.allocationId = dict["AllocationId"] as! String
            }
            if dict.keys.contains("PrivateIPv4Address") && dict["PrivateIPv4Address"] != nil {
                self.privateIPv4Address = dict["PrivateIPv4Address"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var addressIpVersion: String?

    public var addressType: String?

    public var bandwidthPackageId: String?

    public var clientToken: String?

    public var deletionProtectionConfig: CreateLoadBalancerRequest.DeletionProtectionConfig?

    public var dryRun: Bool?

    public var loadBalancerBillingConfig: CreateLoadBalancerRequest.LoadBalancerBillingConfig?

    public var loadBalancerName: String?

    public var loadBalancerType: String?

    public var modificationProtectionConfig: CreateLoadBalancerRequest.ModificationProtectionConfig?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [CreateLoadBalancerRequest.Tag]?

    public var vpcId: String?

    public var zoneMappings: [CreateLoadBalancerRequest.ZoneMappings]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deletionProtectionConfig?.validate()
        try self.loadBalancerBillingConfig?.validate()
        try self.modificationProtectionConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressIpVersion != nil {
            map["AddressIpVersion"] = self.addressIpVersion!
        }
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deletionProtectionConfig != nil {
            map["DeletionProtectionConfig"] = self.deletionProtectionConfig?.toMap()
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.loadBalancerBillingConfig != nil {
            map["LoadBalancerBillingConfig"] = self.loadBalancerBillingConfig?.toMap()
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
        }
        if self.loadBalancerType != nil {
            map["LoadBalancerType"] = self.loadBalancerType!
        }
        if self.modificationProtectionConfig != nil {
            map["ModificationProtectionConfig"] = self.modificationProtectionConfig?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
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
        if dict.keys.contains("AddressIpVersion") && dict["AddressIpVersion"] != nil {
            self.addressIpVersion = dict["AddressIpVersion"] as! String
        }
        if dict.keys.contains("AddressType") && dict["AddressType"] != nil {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("BandwidthPackageId") && dict["BandwidthPackageId"] != nil {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeletionProtectionConfig") && dict["DeletionProtectionConfig"] != nil {
            var model = CreateLoadBalancerRequest.DeletionProtectionConfig()
            model.fromMap(dict["DeletionProtectionConfig"] as! [String: Any])
            self.deletionProtectionConfig = model
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerBillingConfig") && dict["LoadBalancerBillingConfig"] != nil {
            var model = CreateLoadBalancerRequest.LoadBalancerBillingConfig()
            model.fromMap(dict["LoadBalancerBillingConfig"] as! [String: Any])
            self.loadBalancerBillingConfig = model
        }
        if dict.keys.contains("LoadBalancerName") && dict["LoadBalancerName"] != nil {
            self.loadBalancerName = dict["LoadBalancerName"] as! String
        }
        if dict.keys.contains("LoadBalancerType") && dict["LoadBalancerType"] != nil {
            self.loadBalancerType = dict["LoadBalancerType"] as! String
        }
        if dict.keys.contains("ModificationProtectionConfig") && dict["ModificationProtectionConfig"] != nil {
            var model = CreateLoadBalancerRequest.ModificationProtectionConfig()
            model.fromMap(dict["ModificationProtectionConfig"] as! [String: Any])
            self.modificationProtectionConfig = model
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateLoadBalancerRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateLoadBalancerRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneMappings") && dict["ZoneMappings"] != nil {
            var tmp : [CreateLoadBalancerRequest.ZoneMappings] = []
            for v in dict["ZoneMappings"] as! [Any] {
                var model = CreateLoadBalancerRequest.ZoneMappings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.zoneMappings = tmp
        }
    }
}

public class CreateLoadBalancerResponseBody : Tea.TeaModel {
    public var loadbalancerId: String?

    public var orderId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loadbalancerId != nil {
            map["LoadbalancerId"] = self.loadbalancerId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoadbalancerId") && dict["LoadbalancerId"] != nil {
            self.loadbalancerId = dict["LoadbalancerId"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateLoadBalancerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLoadBalancerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateLoadBalancerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSecurityPolicyRequest : Tea.TeaModel {
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
    public var ciphers: [String]?

    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

    public var securityPolicyName: String?

    public var tag: [CreateSecurityPolicyRequest.Tag]?

    public var tlsVersions: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ciphers != nil {
            map["Ciphers"] = self.ciphers!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityPolicyName != nil {
            map["SecurityPolicyName"] = self.securityPolicyName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.tlsVersions != nil {
            map["TlsVersions"] = self.tlsVersions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ciphers") && dict["Ciphers"] != nil {
            self.ciphers = dict["Ciphers"] as! [String]
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
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityPolicyName") && dict["SecurityPolicyName"] != nil {
            self.securityPolicyName = dict["SecurityPolicyName"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateSecurityPolicyRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateSecurityPolicyRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TlsVersions") && dict["TlsVersions"] != nil {
            self.tlsVersions = dict["TlsVersions"] as! [String]
        }
    }
}

public class CreateSecurityPolicyResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public var securityPolicyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityPolicyId != nil {
            map["SecurityPolicyId"] = self.securityPolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityPolicyId") && dict["SecurityPolicyId"] != nil {
            self.securityPolicyId = dict["SecurityPolicyId"] as! String
        }
    }
}

public class CreateSecurityPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSecurityPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateSecurityPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServerGroupRequest : Tea.TeaModel {
    public class HealthCheckConfig : Tea.TeaModel {
        public var healthCheckConnectPort: Int32?

        public var healthCheckConnectTimeout: Int32?

        public var healthCheckDomain: String?

        public var healthCheckEnabled: Bool?

        public var healthCheckHttpCode: [String]?

        public var healthCheckInterval: Int32?

        public var healthCheckType: String?

        public var healthCheckUrl: String?

        public var healthyThreshold: Int32?

        public var httpCheckMethod: String?

        public var unhealthyThreshold: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.healthCheckConnectPort != nil {
                map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
            }
            if self.healthCheckConnectTimeout != nil {
                map["HealthCheckConnectTimeout"] = self.healthCheckConnectTimeout!
            }
            if self.healthCheckDomain != nil {
                map["HealthCheckDomain"] = self.healthCheckDomain!
            }
            if self.healthCheckEnabled != nil {
                map["HealthCheckEnabled"] = self.healthCheckEnabled!
            }
            if self.healthCheckHttpCode != nil {
                map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
            }
            if self.healthCheckInterval != nil {
                map["HealthCheckInterval"] = self.healthCheckInterval!
            }
            if self.healthCheckType != nil {
                map["HealthCheckType"] = self.healthCheckType!
            }
            if self.healthCheckUrl != nil {
                map["HealthCheckUrl"] = self.healthCheckUrl!
            }
            if self.healthyThreshold != nil {
                map["HealthyThreshold"] = self.healthyThreshold!
            }
            if self.httpCheckMethod != nil {
                map["HttpCheckMethod"] = self.httpCheckMethod!
            }
            if self.unhealthyThreshold != nil {
                map["UnhealthyThreshold"] = self.unhealthyThreshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HealthCheckConnectPort") && dict["HealthCheckConnectPort"] != nil {
                self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
            }
            if dict.keys.contains("HealthCheckConnectTimeout") && dict["HealthCheckConnectTimeout"] != nil {
                self.healthCheckConnectTimeout = dict["HealthCheckConnectTimeout"] as! Int32
            }
            if dict.keys.contains("HealthCheckDomain") && dict["HealthCheckDomain"] != nil {
                self.healthCheckDomain = dict["HealthCheckDomain"] as! String
            }
            if dict.keys.contains("HealthCheckEnabled") && dict["HealthCheckEnabled"] != nil {
                self.healthCheckEnabled = dict["HealthCheckEnabled"] as! Bool
            }
            if dict.keys.contains("HealthCheckHttpCode") && dict["HealthCheckHttpCode"] != nil {
                self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! [String]
            }
            if dict.keys.contains("HealthCheckInterval") && dict["HealthCheckInterval"] != nil {
                self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
            }
            if dict.keys.contains("HealthCheckType") && dict["HealthCheckType"] != nil {
                self.healthCheckType = dict["HealthCheckType"] as! String
            }
            if dict.keys.contains("HealthCheckUrl") && dict["HealthCheckUrl"] != nil {
                self.healthCheckUrl = dict["HealthCheckUrl"] as! String
            }
            if dict.keys.contains("HealthyThreshold") && dict["HealthyThreshold"] != nil {
                self.healthyThreshold = dict["HealthyThreshold"] as! Int32
            }
            if dict.keys.contains("HttpCheckMethod") && dict["HttpCheckMethod"] != nil {
                self.httpCheckMethod = dict["HttpCheckMethod"] as! String
            }
            if dict.keys.contains("UnhealthyThreshold") && dict["UnhealthyThreshold"] != nil {
                self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var addressIPVersion: String?

    public var anyPortEnabled: Bool?

    public var clientToken: String?

    public var connectionDrainEnabled: Bool?

    public var connectionDrainTimeout: Int32?

    public var dryRun: Bool?

    public var healthCheckConfig: CreateServerGroupRequest.HealthCheckConfig?

    public var preserveClientIpEnabled: Bool?

    public var protocol_: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var scheduler: String?

    public var serverGroupName: String?

    public var serverGroupType: String?

    public var tag: [CreateServerGroupRequest.Tag]?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.healthCheckConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressIPVersion != nil {
            map["AddressIPVersion"] = self.addressIPVersion!
        }
        if self.anyPortEnabled != nil {
            map["AnyPortEnabled"] = self.anyPortEnabled!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.connectionDrainEnabled != nil {
            map["ConnectionDrainEnabled"] = self.connectionDrainEnabled!
        }
        if self.connectionDrainTimeout != nil {
            map["ConnectionDrainTimeout"] = self.connectionDrainTimeout!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.healthCheckConfig != nil {
            map["HealthCheckConfig"] = self.healthCheckConfig?.toMap()
        }
        if self.preserveClientIpEnabled != nil {
            map["PreserveClientIpEnabled"] = self.preserveClientIpEnabled!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.serverGroupName != nil {
            map["ServerGroupName"] = self.serverGroupName!
        }
        if self.serverGroupType != nil {
            map["ServerGroupType"] = self.serverGroupType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressIPVersion") && dict["AddressIPVersion"] != nil {
            self.addressIPVersion = dict["AddressIPVersion"] as! String
        }
        if dict.keys.contains("AnyPortEnabled") && dict["AnyPortEnabled"] != nil {
            self.anyPortEnabled = dict["AnyPortEnabled"] as! Bool
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectionDrainEnabled") && dict["ConnectionDrainEnabled"] != nil {
            self.connectionDrainEnabled = dict["ConnectionDrainEnabled"] as! Bool
        }
        if dict.keys.contains("ConnectionDrainTimeout") && dict["ConnectionDrainTimeout"] != nil {
            self.connectionDrainTimeout = dict["ConnectionDrainTimeout"] as! Int32
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("HealthCheckConfig") && dict["HealthCheckConfig"] != nil {
            var model = CreateServerGroupRequest.HealthCheckConfig()
            model.fromMap(dict["HealthCheckConfig"] as! [String: Any])
            self.healthCheckConfig = model
        }
        if dict.keys.contains("PreserveClientIpEnabled") && dict["PreserveClientIpEnabled"] != nil {
            self.preserveClientIpEnabled = dict["PreserveClientIpEnabled"] as! Bool
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Scheduler") && dict["Scheduler"] != nil {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("ServerGroupName") && dict["ServerGroupName"] != nil {
            self.serverGroupName = dict["ServerGroupName"] as! String
        }
        if dict.keys.contains("ServerGroupType") && dict["ServerGroupType"] != nil {
            self.serverGroupType = dict["ServerGroupType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateServerGroupRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateServerGroupRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class CreateServerGroupResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public var serverGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
    }
}

public class CreateServerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateServerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteListenerRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

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
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
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
        if dict.keys.contains("ListenerId") && dict["ListenerId"] != nil {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteListenerResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteLoadBalancerRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteLoadBalancerResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteLoadBalancerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLoadBalancerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteLoadBalancerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSecurityPolicyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var securityPolicyId: String?

    public override init() {
        super.init()
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
        if self.securityPolicyId != nil {
            map["SecurityPolicyId"] = self.securityPolicyId!
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
        if dict.keys.contains("SecurityPolicyId") && dict["SecurityPolicyId"] != nil {
            self.securityPolicyId = dict["SecurityPolicyId"] as! String
        }
    }
}

public class DeleteSecurityPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteSecurityPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSecurityPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteSecurityPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteServerGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var serverGroupId: String?

    public override init() {
        super.init()
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
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
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
        if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
    }
}

public class DeleteServerGroupResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteServerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteServerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var clientToken: String?

    public var serviceCode: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ServiceCode") && dict["ServiceCode"] != nil {
            self.serviceCode = dict["ServiceCode"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
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
            if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionEndpoint") && dict["RegionEndpoint"] != nil {
                self.regionEndpoint = dict["RegionEndpoint"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
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
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class DescribeZonesRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var clientToken: String?

    public var regionId: String?

    public var serviceCode: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceCode") && dict["ServiceCode"] != nil {
            self.serviceCode = dict["ServiceCode"] as! String
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
            if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Zones") && dict["Zones"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class DetachCommonBandwidthPackageFromLoadBalancerRequest : Tea.TeaModel {
    public var bandwidthPackageId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

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
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BandwidthPackageId") && dict["BandwidthPackageId"] != nil {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DetachCommonBandwidthPackageFromLoadBalancerResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetachCommonBandwidthPackageFromLoadBalancerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachCommonBandwidthPackageFromLoadBalancerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetachCommonBandwidthPackageFromLoadBalancerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableLoadBalancerIpv6InternetRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DisableLoadBalancerIpv6InternetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DisableLoadBalancerIpv6InternetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableLoadBalancerIpv6InternetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableLoadBalancerIpv6InternetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisassociateAdditionalCertificatesWithListenerRequest : Tea.TeaModel {
    public var additionalCertificateIds: [String]?

    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

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
        if self.additionalCertificateIds != nil {
            map["AdditionalCertificateIds"] = self.additionalCertificateIds!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalCertificateIds") && dict["AdditionalCertificateIds"] != nil {
            self.additionalCertificateIds = dict["AdditionalCertificateIds"] as! [String]
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") && dict["ListenerId"] != nil {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DisassociateAdditionalCertificatesWithListenerResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DisassociateAdditionalCertificatesWithListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisassociateAdditionalCertificatesWithListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisassociateAdditionalCertificatesWithListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableLoadBalancerIpv6InternetRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class EnableLoadBalancerIpv6InternetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class EnableLoadBalancerIpv6InternetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableLoadBalancerIpv6InternetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableLoadBalancerIpv6InternetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJobStatusRequest : Tea.TeaModel {
    public var clientToken: String?

    public var jobId: String?

    public override init() {
        super.init()
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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
    }
}

public class GetJobStatusResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class GetJobStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetJobStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetListenerAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

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
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
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
        if dict.keys.contains("ListenerId") && dict["ListenerId"] != nil {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetListenerAttributeResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                self.tagValue = dict["TagValue"] as! String
            }
        }
    }
    public var alpnEnabled: Bool?

    public var alpnPolicy: String?

    public var caCertificateIds: [String]?

    public var caEnabled: Bool?

    public var certificateIds: [String]?

    public var cps: Int32?

    public var endPort: String?

    public var idleTimeout: Int32?

    public var listenerDescription: String?

    public var listenerId: String?

    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var listenerStatus: String?

    public var loadBalancerId: String?

    public var mss: Int32?

    public var proxyProtocolEnabled: Bool?

    public var regionId: String?

    public var requestId: String?

    public var secSensorEnabled: Bool?

    public var securityPolicyId: String?

    public var serverGroupId: String?

    public var startPort: String?

    public var tags: [GetListenerAttributeResponseBody.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alpnEnabled != nil {
            map["AlpnEnabled"] = self.alpnEnabled!
        }
        if self.alpnPolicy != nil {
            map["AlpnPolicy"] = self.alpnPolicy!
        }
        if self.caCertificateIds != nil {
            map["CaCertificateIds"] = self.caCertificateIds!
        }
        if self.caEnabled != nil {
            map["CaEnabled"] = self.caEnabled!
        }
        if self.certificateIds != nil {
            map["CertificateIds"] = self.certificateIds!
        }
        if self.cps != nil {
            map["Cps"] = self.cps!
        }
        if self.endPort != nil {
            map["EndPort"] = self.endPort!
        }
        if self.idleTimeout != nil {
            map["IdleTimeout"] = self.idleTimeout!
        }
        if self.listenerDescription != nil {
            map["ListenerDescription"] = self.listenerDescription!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.listenerStatus != nil {
            map["ListenerStatus"] = self.listenerStatus!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.mss != nil {
            map["Mss"] = self.mss!
        }
        if self.proxyProtocolEnabled != nil {
            map["ProxyProtocolEnabled"] = self.proxyProtocolEnabled!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secSensorEnabled != nil {
            map["SecSensorEnabled"] = self.secSensorEnabled!
        }
        if self.securityPolicyId != nil {
            map["SecurityPolicyId"] = self.securityPolicyId!
        }
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        if self.startPort != nil {
            map["StartPort"] = self.startPort!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlpnEnabled") && dict["AlpnEnabled"] != nil {
            self.alpnEnabled = dict["AlpnEnabled"] as! Bool
        }
        if dict.keys.contains("AlpnPolicy") && dict["AlpnPolicy"] != nil {
            self.alpnPolicy = dict["AlpnPolicy"] as! String
        }
        if dict.keys.contains("CaCertificateIds") && dict["CaCertificateIds"] != nil {
            self.caCertificateIds = dict["CaCertificateIds"] as! [String]
        }
        if dict.keys.contains("CaEnabled") && dict["CaEnabled"] != nil {
            self.caEnabled = dict["CaEnabled"] as! Bool
        }
        if dict.keys.contains("CertificateIds") && dict["CertificateIds"] != nil {
            self.certificateIds = dict["CertificateIds"] as! [String]
        }
        if dict.keys.contains("Cps") && dict["Cps"] != nil {
            self.cps = dict["Cps"] as! Int32
        }
        if dict.keys.contains("EndPort") && dict["EndPort"] != nil {
            self.endPort = dict["EndPort"] as! String
        }
        if dict.keys.contains("IdleTimeout") && dict["IdleTimeout"] != nil {
            self.idleTimeout = dict["IdleTimeout"] as! Int32
        }
        if dict.keys.contains("ListenerDescription") && dict["ListenerDescription"] != nil {
            self.listenerDescription = dict["ListenerDescription"] as! String
        }
        if dict.keys.contains("ListenerId") && dict["ListenerId"] != nil {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("ListenerPort") && dict["ListenerPort"] != nil {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") && dict["ListenerProtocol"] != nil {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("ListenerStatus") && dict["ListenerStatus"] != nil {
            self.listenerStatus = dict["ListenerStatus"] as! String
        }
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("Mss") && dict["Mss"] != nil {
            self.mss = dict["Mss"] as! Int32
        }
        if dict.keys.contains("ProxyProtocolEnabled") && dict["ProxyProtocolEnabled"] != nil {
            self.proxyProtocolEnabled = dict["ProxyProtocolEnabled"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecSensorEnabled") && dict["SecSensorEnabled"] != nil {
            self.secSensorEnabled = dict["SecSensorEnabled"] as! Bool
        }
        if dict.keys.contains("SecurityPolicyId") && dict["SecurityPolicyId"] != nil {
            self.securityPolicyId = dict["SecurityPolicyId"] as! String
        }
        if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
        if dict.keys.contains("StartPort") && dict["StartPort"] != nil {
            self.startPort = dict["StartPort"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [GetListenerAttributeResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = GetListenerAttributeResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class GetListenerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetListenerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetListenerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetListenerHealthStatusRequest : Tea.TeaModel {
    public var listenerId: String?

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
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
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
        if dict.keys.contains("ListenerId") && dict["ListenerId"] != nil {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetListenerHealthStatusResponseBody : Tea.TeaModel {
    public class ListenerHealthStatus : Tea.TeaModel {
        public class ServerGroupInfos : Tea.TeaModel {
            public class NonNormalServers : Tea.TeaModel {
                public class Reason : Tea.TeaModel {
                    public var reasonCode: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.reasonCode != nil {
                            map["ReasonCode"] = self.reasonCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ReasonCode") && dict["ReasonCode"] != nil {
                            self.reasonCode = dict["ReasonCode"] as! String
                        }
                    }
                }
                public var port: Int32?

                public var reason: GetListenerHealthStatusResponseBody.ListenerHealthStatus.ServerGroupInfos.NonNormalServers.Reason?

                public var serverId: String?

                public var serverIp: String?

                public var status: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.reason?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.reason != nil {
                        map["Reason"] = self.reason?.toMap()
                    }
                    if self.serverId != nil {
                        map["ServerId"] = self.serverId!
                    }
                    if self.serverIp != nil {
                        map["ServerIp"] = self.serverIp!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Port") && dict["Port"] != nil {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Reason") && dict["Reason"] != nil {
                        var model = GetListenerHealthStatusResponseBody.ListenerHealthStatus.ServerGroupInfos.NonNormalServers.Reason()
                        model.fromMap(dict["Reason"] as! [String: Any])
                        self.reason = model
                    }
                    if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
                        self.serverId = dict["ServerId"] as! String
                    }
                    if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
                        self.serverIp = dict["ServerIp"] as! String
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! String
                    }
                }
            }
            public var heathCheckEnabled: Bool?

            public var nonNormalServers: [GetListenerHealthStatusResponseBody.ListenerHealthStatus.ServerGroupInfos.NonNormalServers]?

            public var serverGroupId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.heathCheckEnabled != nil {
                    map["HeathCheckEnabled"] = self.heathCheckEnabled!
                }
                if self.nonNormalServers != nil {
                    var tmp : [Any] = []
                    for k in self.nonNormalServers! {
                        tmp.append(k.toMap())
                    }
                    map["NonNormalServers"] = tmp
                }
                if self.serverGroupId != nil {
                    map["ServerGroupId"] = self.serverGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HeathCheckEnabled") && dict["HeathCheckEnabled"] != nil {
                    self.heathCheckEnabled = dict["HeathCheckEnabled"] as! Bool
                }
                if dict.keys.contains("NonNormalServers") && dict["NonNormalServers"] != nil {
                    var tmp : [GetListenerHealthStatusResponseBody.ListenerHealthStatus.ServerGroupInfos.NonNormalServers] = []
                    for v in dict["NonNormalServers"] as! [Any] {
                        var model = GetListenerHealthStatusResponseBody.ListenerHealthStatus.ServerGroupInfos.NonNormalServers()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.nonNormalServers = tmp
                }
                if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
                    self.serverGroupId = dict["ServerGroupId"] as! String
                }
            }
        }
        public var listenerId: String?

        public var listenerPort: Int32?

        public var listenerProtocol: String?

        public var serverGroupInfos: [GetListenerHealthStatusResponseBody.ListenerHealthStatus.ServerGroupInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.listenerPort != nil {
                map["ListenerPort"] = self.listenerPort!
            }
            if self.listenerProtocol != nil {
                map["ListenerProtocol"] = self.listenerProtocol!
            }
            if self.serverGroupInfos != nil {
                var tmp : [Any] = []
                for k in self.serverGroupInfos! {
                    tmp.append(k.toMap())
                }
                map["ServerGroupInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ListenerId") && dict["ListenerId"] != nil {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("ListenerPort") && dict["ListenerPort"] != nil {
                self.listenerPort = dict["ListenerPort"] as! Int32
            }
            if dict.keys.contains("ListenerProtocol") && dict["ListenerProtocol"] != nil {
                self.listenerProtocol = dict["ListenerProtocol"] as! String
            }
            if dict.keys.contains("ServerGroupInfos") && dict["ServerGroupInfos"] != nil {
                var tmp : [GetListenerHealthStatusResponseBody.ListenerHealthStatus.ServerGroupInfos] = []
                for v in dict["ServerGroupInfos"] as! [Any] {
                    var model = GetListenerHealthStatusResponseBody.ListenerHealthStatus.ServerGroupInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serverGroupInfos = tmp
            }
        }
    }
    public var listenerHealthStatus: [GetListenerHealthStatusResponseBody.ListenerHealthStatus]?

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
        if self.listenerHealthStatus != nil {
            var tmp : [Any] = []
            for k in self.listenerHealthStatus! {
                tmp.append(k.toMap())
            }
            map["ListenerHealthStatus"] = tmp
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
        if dict.keys.contains("ListenerHealthStatus") && dict["ListenerHealthStatus"] != nil {
            var tmp : [GetListenerHealthStatusResponseBody.ListenerHealthStatus] = []
            for v in dict["ListenerHealthStatus"] as! [Any] {
                var model = GetListenerHealthStatusResponseBody.ListenerHealthStatus()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.listenerHealthStatus = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class GetListenerHealthStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetListenerHealthStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetListenerHealthStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLoadBalancerAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetLoadBalancerAttributeResponseBody : Tea.TeaModel {
    public class DeletionProtectionConfig : Tea.TeaModel {
        public var enabled: Bool?

        public var enabledTime: String?

        public var reason: String?

        public override init() {
            super.init()
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
            if self.enabledTime != nil {
                map["EnabledTime"] = self.enabledTime!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("EnabledTime") && dict["EnabledTime"] != nil {
                self.enabledTime = dict["EnabledTime"] as! String
            }
            if dict.keys.contains("Reason") && dict["Reason"] != nil {
                self.reason = dict["Reason"] as! String
            }
        }
    }
    public class LoadBalancerBillingConfig : Tea.TeaModel {
        public var payType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PayType") && dict["PayType"] != nil {
                self.payType = dict["PayType"] as! String
            }
        }
    }
    public class ModificationProtectionConfig : Tea.TeaModel {
        public var enabledTime: String?

        public var reason: String?

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
            if self.enabledTime != nil {
                map["EnabledTime"] = self.enabledTime!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnabledTime") && dict["EnabledTime"] != nil {
                self.enabledTime = dict["EnabledTime"] as! String
            }
            if dict.keys.contains("Reason") && dict["Reason"] != nil {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class OperationLocks : Tea.TeaModel {
        public var lockReason: String?

        public var lockType: String?

        public override init() {
            super.init()
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
            if self.lockType != nil {
                map["LockType"] = self.lockType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LockReason") && dict["LockReason"] != nil {
                self.lockReason = dict["LockReason"] as! String
            }
            if dict.keys.contains("LockType") && dict["LockType"] != nil {
                self.lockType = dict["LockType"] as! String
            }
        }
    }
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                self.tagValue = dict["TagValue"] as! String
            }
        }
    }
    public class ZoneMappings : Tea.TeaModel {
        public class LoadBalancerAddresses : Tea.TeaModel {
            public var allocationId: String?

            public var eniId: String?

            public var ipv6Address: String?

            public var privateIPv4Address: String?

            public var privateIPv4HcStatus: String?

            public var privateIPv6HcStatus: String?

            public var publicIPv4Address: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allocationId != nil {
                    map["AllocationId"] = self.allocationId!
                }
                if self.eniId != nil {
                    map["EniId"] = self.eniId!
                }
                if self.ipv6Address != nil {
                    map["Ipv6Address"] = self.ipv6Address!
                }
                if self.privateIPv4Address != nil {
                    map["PrivateIPv4Address"] = self.privateIPv4Address!
                }
                if self.privateIPv4HcStatus != nil {
                    map["PrivateIPv4HcStatus"] = self.privateIPv4HcStatus!
                }
                if self.privateIPv6HcStatus != nil {
                    map["PrivateIPv6HcStatus"] = self.privateIPv6HcStatus!
                }
                if self.publicIPv4Address != nil {
                    map["PublicIPv4Address"] = self.publicIPv4Address!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllocationId") && dict["AllocationId"] != nil {
                    self.allocationId = dict["AllocationId"] as! String
                }
                if dict.keys.contains("EniId") && dict["EniId"] != nil {
                    self.eniId = dict["EniId"] as! String
                }
                if dict.keys.contains("Ipv6Address") && dict["Ipv6Address"] != nil {
                    self.ipv6Address = dict["Ipv6Address"] as! String
                }
                if dict.keys.contains("PrivateIPv4Address") && dict["PrivateIPv4Address"] != nil {
                    self.privateIPv4Address = dict["PrivateIPv4Address"] as! String
                }
                if dict.keys.contains("PrivateIPv4HcStatus") && dict["PrivateIPv4HcStatus"] != nil {
                    self.privateIPv4HcStatus = dict["PrivateIPv4HcStatus"] as! String
                }
                if dict.keys.contains("PrivateIPv6HcStatus") && dict["PrivateIPv6HcStatus"] != nil {
                    self.privateIPv6HcStatus = dict["PrivateIPv6HcStatus"] as! String
                }
                if dict.keys.contains("PublicIPv4Address") && dict["PublicIPv4Address"] != nil {
                    self.publicIPv4Address = dict["PublicIPv4Address"] as! String
                }
            }
        }
        public var loadBalancerAddresses: [GetLoadBalancerAttributeResponseBody.ZoneMappings.LoadBalancerAddresses]?

        public var status: String?

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
            if self.loadBalancerAddresses != nil {
                var tmp : [Any] = []
                for k in self.loadBalancerAddresses! {
                    tmp.append(k.toMap())
                }
                map["LoadBalancerAddresses"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            if dict.keys.contains("LoadBalancerAddresses") && dict["LoadBalancerAddresses"] != nil {
                var tmp : [GetLoadBalancerAttributeResponseBody.ZoneMappings.LoadBalancerAddresses] = []
                for v in dict["LoadBalancerAddresses"] as! [Any] {
                    var model = GetLoadBalancerAttributeResponseBody.ZoneMappings.LoadBalancerAddresses()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.loadBalancerAddresses = tmp
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var addressIpVersion: String?

    public var addressType: String?

    public var bandwidthPackageId: String?

    public var cps: Int32?

    public var createTime: String?

    public var crossZoneEnabled: Bool?

    public var DNSName: String?

    public var deletionProtectionConfig: GetLoadBalancerAttributeResponseBody.DeletionProtectionConfig?

    public var ipv6AddressType: String?

    public var loadBalancerBillingConfig: GetLoadBalancerAttributeResponseBody.LoadBalancerBillingConfig?

    public var loadBalancerBusinessStatus: String?

    public var loadBalancerId: String?

    public var loadBalancerName: String?

    public var loadBalancerStatus: String?

    public var loadBalancerType: String?

    public var modificationProtectionConfig: GetLoadBalancerAttributeResponseBody.ModificationProtectionConfig?

    public var operationLocks: [GetLoadBalancerAttributeResponseBody.OperationLocks]?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var securityGroupIds: [String]?

    public var tags: [GetLoadBalancerAttributeResponseBody.Tags]?

    public var vpcId: String?

    public var zoneMappings: [GetLoadBalancerAttributeResponseBody.ZoneMappings]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deletionProtectionConfig?.validate()
        try self.loadBalancerBillingConfig?.validate()
        try self.modificationProtectionConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressIpVersion != nil {
            map["AddressIpVersion"] = self.addressIpVersion!
        }
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.cps != nil {
            map["Cps"] = self.cps!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.crossZoneEnabled != nil {
            map["CrossZoneEnabled"] = self.crossZoneEnabled!
        }
        if self.DNSName != nil {
            map["DNSName"] = self.DNSName!
        }
        if self.deletionProtectionConfig != nil {
            map["DeletionProtectionConfig"] = self.deletionProtectionConfig?.toMap()
        }
        if self.ipv6AddressType != nil {
            map["Ipv6AddressType"] = self.ipv6AddressType!
        }
        if self.loadBalancerBillingConfig != nil {
            map["LoadBalancerBillingConfig"] = self.loadBalancerBillingConfig?.toMap()
        }
        if self.loadBalancerBusinessStatus != nil {
            map["LoadBalancerBusinessStatus"] = self.loadBalancerBusinessStatus!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
        }
        if self.loadBalancerStatus != nil {
            map["LoadBalancerStatus"] = self.loadBalancerStatus!
        }
        if self.loadBalancerType != nil {
            map["LoadBalancerType"] = self.loadBalancerType!
        }
        if self.modificationProtectionConfig != nil {
            map["ModificationProtectionConfig"] = self.modificationProtectionConfig?.toMap()
        }
        if self.operationLocks != nil {
            var tmp : [Any] = []
            for k in self.operationLocks! {
                tmp.append(k.toMap())
            }
            map["OperationLocks"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityGroupIds != nil {
            map["SecurityGroupIds"] = self.securityGroupIds!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
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
        if dict.keys.contains("AddressIpVersion") && dict["AddressIpVersion"] != nil {
            self.addressIpVersion = dict["AddressIpVersion"] as! String
        }
        if dict.keys.contains("AddressType") && dict["AddressType"] != nil {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("BandwidthPackageId") && dict["BandwidthPackageId"] != nil {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("Cps") && dict["Cps"] != nil {
            self.cps = dict["Cps"] as! Int32
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CrossZoneEnabled") && dict["CrossZoneEnabled"] != nil {
            self.crossZoneEnabled = dict["CrossZoneEnabled"] as! Bool
        }
        if dict.keys.contains("DNSName") && dict["DNSName"] != nil {
            self.DNSName = dict["DNSName"] as! String
        }
        if dict.keys.contains("DeletionProtectionConfig") && dict["DeletionProtectionConfig"] != nil {
            var model = GetLoadBalancerAttributeResponseBody.DeletionProtectionConfig()
            model.fromMap(dict["DeletionProtectionConfig"] as! [String: Any])
            self.deletionProtectionConfig = model
        }
        if dict.keys.contains("Ipv6AddressType") && dict["Ipv6AddressType"] != nil {
            self.ipv6AddressType = dict["Ipv6AddressType"] as! String
        }
        if dict.keys.contains("LoadBalancerBillingConfig") && dict["LoadBalancerBillingConfig"] != nil {
            var model = GetLoadBalancerAttributeResponseBody.LoadBalancerBillingConfig()
            model.fromMap(dict["LoadBalancerBillingConfig"] as! [String: Any])
            self.loadBalancerBillingConfig = model
        }
        if dict.keys.contains("LoadBalancerBusinessStatus") && dict["LoadBalancerBusinessStatus"] != nil {
            self.loadBalancerBusinessStatus = dict["LoadBalancerBusinessStatus"] as! String
        }
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LoadBalancerName") && dict["LoadBalancerName"] != nil {
            self.loadBalancerName = dict["LoadBalancerName"] as! String
        }
        if dict.keys.contains("LoadBalancerStatus") && dict["LoadBalancerStatus"] != nil {
            self.loadBalancerStatus = dict["LoadBalancerStatus"] as! String
        }
        if dict.keys.contains("LoadBalancerType") && dict["LoadBalancerType"] != nil {
            self.loadBalancerType = dict["LoadBalancerType"] as! String
        }
        if dict.keys.contains("ModificationProtectionConfig") && dict["ModificationProtectionConfig"] != nil {
            var model = GetLoadBalancerAttributeResponseBody.ModificationProtectionConfig()
            model.fromMap(dict["ModificationProtectionConfig"] as! [String: Any])
            self.modificationProtectionConfig = model
        }
        if dict.keys.contains("OperationLocks") && dict["OperationLocks"] != nil {
            var tmp : [GetLoadBalancerAttributeResponseBody.OperationLocks] = []
            for v in dict["OperationLocks"] as! [Any] {
                var model = GetLoadBalancerAttributeResponseBody.OperationLocks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.operationLocks = tmp
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityGroupIds") && dict["SecurityGroupIds"] != nil {
            self.securityGroupIds = dict["SecurityGroupIds"] as! [String]
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [GetLoadBalancerAttributeResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = GetLoadBalancerAttributeResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneMappings") && dict["ZoneMappings"] != nil {
            var tmp : [GetLoadBalancerAttributeResponseBody.ZoneMappings] = []
            for v in dict["ZoneMappings"] as! [Any] {
                var model = GetLoadBalancerAttributeResponseBody.ZoneMappings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.zoneMappings = tmp
        }
    }
}

public class GetLoadBalancerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLoadBalancerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetLoadBalancerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListListenerCertificatesRequest : Tea.TeaModel {
    public var certType: String?

    public var listenerId: String?

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
        if self.certType != nil {
            map["CertType"] = self.certType!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
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
        if dict.keys.contains("CertType") && dict["CertType"] != nil {
            self.certType = dict["CertType"] as! String
        }
        if dict.keys.contains("ListenerId") && dict["ListenerId"] != nil {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListListenerCertificatesResponseBody : Tea.TeaModel {
    public class Certificates : Tea.TeaModel {
        public var certificateId: String?

        public var certificateType: String?

        public var isDefault: Bool?

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
            if self.certificateId != nil {
                map["CertificateId"] = self.certificateId!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
                self.certificateId = dict["CertificateId"] as! String
            }
            if dict.keys.contains("CertificateType") && dict["CertificateType"] != nil {
                self.certificateType = dict["CertificateType"] as! String
            }
            if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var certificateIds: [String]?

    public var certificates: [ListListenerCertificatesResponseBody.Certificates]?

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
        if self.certificateIds != nil {
            map["CertificateIds"] = self.certificateIds!
        }
        if self.certificates != nil {
            var tmp : [Any] = []
            for k in self.certificates! {
                tmp.append(k.toMap())
            }
            map["Certificates"] = tmp
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
        if dict.keys.contains("CertificateIds") && dict["CertificateIds"] != nil {
            self.certificateIds = dict["CertificateIds"] as! [String]
        }
        if dict.keys.contains("Certificates") && dict["Certificates"] != nil {
            var tmp : [ListListenerCertificatesResponseBody.Certificates] = []
            for v in dict["Certificates"] as! [Any] {
                var model = ListListenerCertificatesResponseBody.Certificates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certificates = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListListenerCertificatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListListenerCertificatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListListenerCertificatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListListenersRequest : Tea.TeaModel {
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
    public var listenerIds: [String]?

    public var listenerProtocol: String?

    public var loadBalancerIds: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var tag: [ListListenersRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listenerIds != nil {
            map["ListenerIds"] = self.listenerIds!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalancerIds != nil {
            map["LoadBalancerIds"] = self.loadBalancerIds!
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
        if dict.keys.contains("ListenerIds") && dict["ListenerIds"] != nil {
            self.listenerIds = dict["ListenerIds"] as! [String]
        }
        if dict.keys.contains("ListenerProtocol") && dict["ListenerProtocol"] != nil {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerIds") && dict["LoadBalancerIds"] != nil {
            self.loadBalancerIds = dict["LoadBalancerIds"] as! [String]
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListListenersRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListListenersRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListListenersResponseBody : Tea.TeaModel {
    public class Listeners : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var alpnEnabled: Bool?

        public var alpnPolicy: String?

        public var caCertificateIds: [String]?

        public var caEnabled: Bool?

        public var certificateIds: [String]?

        public var cps: Int32?

        public var endPort: String?

        public var idleTimeout: Int32?

        public var listenerDescription: String?

        public var listenerId: String?

        public var listenerPort: Int32?

        public var listenerProtocol: String?

        public var listenerStatus: String?

        public var loadBalancerId: String?

        public var mss: Int32?

        public var proxyProtocolEnabled: Bool?

        public var regionId: String?

        public var secSensorEnabled: Bool?

        public var securityPolicyId: String?

        public var serverGroupId: String?

        public var startPort: String?

        public var tags: [ListListenersResponseBody.Listeners.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpnEnabled != nil {
                map["AlpnEnabled"] = self.alpnEnabled!
            }
            if self.alpnPolicy != nil {
                map["AlpnPolicy"] = self.alpnPolicy!
            }
            if self.caCertificateIds != nil {
                map["CaCertificateIds"] = self.caCertificateIds!
            }
            if self.caEnabled != nil {
                map["CaEnabled"] = self.caEnabled!
            }
            if self.certificateIds != nil {
                map["CertificateIds"] = self.certificateIds!
            }
            if self.cps != nil {
                map["Cps"] = self.cps!
            }
            if self.endPort != nil {
                map["EndPort"] = self.endPort!
            }
            if self.idleTimeout != nil {
                map["IdleTimeout"] = self.idleTimeout!
            }
            if self.listenerDescription != nil {
                map["ListenerDescription"] = self.listenerDescription!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.listenerPort != nil {
                map["ListenerPort"] = self.listenerPort!
            }
            if self.listenerProtocol != nil {
                map["ListenerProtocol"] = self.listenerProtocol!
            }
            if self.listenerStatus != nil {
                map["ListenerStatus"] = self.listenerStatus!
            }
            if self.loadBalancerId != nil {
                map["LoadBalancerId"] = self.loadBalancerId!
            }
            if self.mss != nil {
                map["Mss"] = self.mss!
            }
            if self.proxyProtocolEnabled != nil {
                map["ProxyProtocolEnabled"] = self.proxyProtocolEnabled!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.secSensorEnabled != nil {
                map["SecSensorEnabled"] = self.secSensorEnabled!
            }
            if self.securityPolicyId != nil {
                map["SecurityPolicyId"] = self.securityPolicyId!
            }
            if self.serverGroupId != nil {
                map["ServerGroupId"] = self.serverGroupId!
            }
            if self.startPort != nil {
                map["StartPort"] = self.startPort!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlpnEnabled") && dict["AlpnEnabled"] != nil {
                self.alpnEnabled = dict["AlpnEnabled"] as! Bool
            }
            if dict.keys.contains("AlpnPolicy") && dict["AlpnPolicy"] != nil {
                self.alpnPolicy = dict["AlpnPolicy"] as! String
            }
            if dict.keys.contains("CaCertificateIds") && dict["CaCertificateIds"] != nil {
                self.caCertificateIds = dict["CaCertificateIds"] as! [String]
            }
            if dict.keys.contains("CaEnabled") && dict["CaEnabled"] != nil {
                self.caEnabled = dict["CaEnabled"] as! Bool
            }
            if dict.keys.contains("CertificateIds") && dict["CertificateIds"] != nil {
                self.certificateIds = dict["CertificateIds"] as! [String]
            }
            if dict.keys.contains("Cps") && dict["Cps"] != nil {
                self.cps = dict["Cps"] as! Int32
            }
            if dict.keys.contains("EndPort") && dict["EndPort"] != nil {
                self.endPort = dict["EndPort"] as! String
            }
            if dict.keys.contains("IdleTimeout") && dict["IdleTimeout"] != nil {
                self.idleTimeout = dict["IdleTimeout"] as! Int32
            }
            if dict.keys.contains("ListenerDescription") && dict["ListenerDescription"] != nil {
                self.listenerDescription = dict["ListenerDescription"] as! String
            }
            if dict.keys.contains("ListenerId") && dict["ListenerId"] != nil {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("ListenerPort") && dict["ListenerPort"] != nil {
                self.listenerPort = dict["ListenerPort"] as! Int32
            }
            if dict.keys.contains("ListenerProtocol") && dict["ListenerProtocol"] != nil {
                self.listenerProtocol = dict["ListenerProtocol"] as! String
            }
            if dict.keys.contains("ListenerStatus") && dict["ListenerStatus"] != nil {
                self.listenerStatus = dict["ListenerStatus"] as! String
            }
            if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
                self.loadBalancerId = dict["LoadBalancerId"] as! String
            }
            if dict.keys.contains("Mss") && dict["Mss"] != nil {
                self.mss = dict["Mss"] as! Int32
            }
            if dict.keys.contains("ProxyProtocolEnabled") && dict["ProxyProtocolEnabled"] != nil {
                self.proxyProtocolEnabled = dict["ProxyProtocolEnabled"] as! Bool
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SecSensorEnabled") && dict["SecSensorEnabled"] != nil {
                self.secSensorEnabled = dict["SecSensorEnabled"] as! Bool
            }
            if dict.keys.contains("SecurityPolicyId") && dict["SecurityPolicyId"] != nil {
                self.securityPolicyId = dict["SecurityPolicyId"] as! String
            }
            if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
                self.serverGroupId = dict["ServerGroupId"] as! String
            }
            if dict.keys.contains("StartPort") && dict["StartPort"] != nil {
                self.startPort = dict["StartPort"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListListenersResponseBody.Listeners.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListListenersResponseBody.Listeners.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
        }
    }
    public var listeners: [ListListenersResponseBody.Listeners]?

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
        if self.listeners != nil {
            var tmp : [Any] = []
            for k in self.listeners! {
                tmp.append(k.toMap())
            }
            map["Listeners"] = tmp
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
        if dict.keys.contains("Listeners") && dict["Listeners"] != nil {
            var tmp : [ListListenersResponseBody.Listeners] = []
            for v in dict["Listeners"] as! [Any] {
                var model = ListListenersResponseBody.Listeners()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.listeners = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListListenersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListListenersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListListenersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLoadBalancersRequest : Tea.TeaModel {
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
    public var addressIpVersion: String?

    public var addressType: String?

    public var DNSName: String?

    public var ipv6AddressType: String?

    public var loadBalancerBusinessStatus: String?

    public var loadBalancerIds: [String]?

    public var loadBalancerNames: [String]?

    public var loadBalancerStatus: String?

    public var loadBalancerType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [ListLoadBalancersRequest.Tag]?

    public var vpcIds: [String]?

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
        if self.addressIpVersion != nil {
            map["AddressIpVersion"] = self.addressIpVersion!
        }
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.DNSName != nil {
            map["DNSName"] = self.DNSName!
        }
        if self.ipv6AddressType != nil {
            map["Ipv6AddressType"] = self.ipv6AddressType!
        }
        if self.loadBalancerBusinessStatus != nil {
            map["LoadBalancerBusinessStatus"] = self.loadBalancerBusinessStatus!
        }
        if self.loadBalancerIds != nil {
            map["LoadBalancerIds"] = self.loadBalancerIds!
        }
        if self.loadBalancerNames != nil {
            map["LoadBalancerNames"] = self.loadBalancerNames!
        }
        if self.loadBalancerStatus != nil {
            map["LoadBalancerStatus"] = self.loadBalancerStatus!
        }
        if self.loadBalancerType != nil {
            map["LoadBalancerType"] = self.loadBalancerType!
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
        if self.vpcIds != nil {
            map["VpcIds"] = self.vpcIds!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressIpVersion") && dict["AddressIpVersion"] != nil {
            self.addressIpVersion = dict["AddressIpVersion"] as! String
        }
        if dict.keys.contains("AddressType") && dict["AddressType"] != nil {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("DNSName") && dict["DNSName"] != nil {
            self.DNSName = dict["DNSName"] as! String
        }
        if dict.keys.contains("Ipv6AddressType") && dict["Ipv6AddressType"] != nil {
            self.ipv6AddressType = dict["Ipv6AddressType"] as! String
        }
        if dict.keys.contains("LoadBalancerBusinessStatus") && dict["LoadBalancerBusinessStatus"] != nil {
            self.loadBalancerBusinessStatus = dict["LoadBalancerBusinessStatus"] as! String
        }
        if dict.keys.contains("LoadBalancerIds") && dict["LoadBalancerIds"] != nil {
            self.loadBalancerIds = dict["LoadBalancerIds"] as! [String]
        }
        if dict.keys.contains("LoadBalancerNames") && dict["LoadBalancerNames"] != nil {
            self.loadBalancerNames = dict["LoadBalancerNames"] as! [String]
        }
        if dict.keys.contains("LoadBalancerStatus") && dict["LoadBalancerStatus"] != nil {
            self.loadBalancerStatus = dict["LoadBalancerStatus"] as! String
        }
        if dict.keys.contains("LoadBalancerType") && dict["LoadBalancerType"] != nil {
            self.loadBalancerType = dict["LoadBalancerType"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListLoadBalancersRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListLoadBalancersRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VpcIds") && dict["VpcIds"] != nil {
            self.vpcIds = dict["VpcIds"] as! [String]
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ListLoadBalancersResponseBody : Tea.TeaModel {
    public class LoadBalancers : Tea.TeaModel {
        public class DeletionProtectionConfig : Tea.TeaModel {
            public var enabled: Bool?

            public var enabledTime: String?

            public var reason: String?

            public override init() {
                super.init()
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
                if self.enabledTime != nil {
                    map["EnabledTime"] = self.enabledTime!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("EnabledTime") && dict["EnabledTime"] != nil {
                    self.enabledTime = dict["EnabledTime"] as! String
                }
                if dict.keys.contains("Reason") && dict["Reason"] != nil {
                    self.reason = dict["Reason"] as! String
                }
            }
        }
        public class LoadBalancerBillingConfig : Tea.TeaModel {
            public var payType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PayType") && dict["PayType"] != nil {
                    self.payType = dict["PayType"] as! String
                }
            }
        }
        public class ModificationProtectionConfig : Tea.TeaModel {
            public var enabledTime: String?

            public var reason: String?

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
                if self.enabledTime != nil {
                    map["EnabledTime"] = self.enabledTime!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnabledTime") && dict["EnabledTime"] != nil {
                    self.enabledTime = dict["EnabledTime"] as! String
                }
                if dict.keys.contains("Reason") && dict["Reason"] != nil {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class OperationLocks : Tea.TeaModel {
            public var lockReason: String?

            public var lockType: String?

            public override init() {
                super.init()
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
                if self.lockType != nil {
                    map["LockType"] = self.lockType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LockReason") && dict["LockReason"] != nil {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("LockType") && dict["LockType"] != nil {
                    self.lockType = dict["LockType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class ZoneMappings : Tea.TeaModel {
            public class LoadBalancerAddresses : Tea.TeaModel {
                public var allocationId: String?

                public var eniId: String?

                public var ipv6Address: String?

                public var privateIPv4Address: String?

                public var privateIPv4HcStatus: String?

                public var privateIPv6HcStatus: String?

                public var publicIPv4Address: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.allocationId != nil {
                        map["AllocationId"] = self.allocationId!
                    }
                    if self.eniId != nil {
                        map["EniId"] = self.eniId!
                    }
                    if self.ipv6Address != nil {
                        map["Ipv6Address"] = self.ipv6Address!
                    }
                    if self.privateIPv4Address != nil {
                        map["PrivateIPv4Address"] = self.privateIPv4Address!
                    }
                    if self.privateIPv4HcStatus != nil {
                        map["PrivateIPv4HcStatus"] = self.privateIPv4HcStatus!
                    }
                    if self.privateIPv6HcStatus != nil {
                        map["PrivateIPv6HcStatus"] = self.privateIPv6HcStatus!
                    }
                    if self.publicIPv4Address != nil {
                        map["PublicIPv4Address"] = self.publicIPv4Address!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AllocationId") && dict["AllocationId"] != nil {
                        self.allocationId = dict["AllocationId"] as! String
                    }
                    if dict.keys.contains("EniId") && dict["EniId"] != nil {
                        self.eniId = dict["EniId"] as! String
                    }
                    if dict.keys.contains("Ipv6Address") && dict["Ipv6Address"] != nil {
                        self.ipv6Address = dict["Ipv6Address"] as! String
                    }
                    if dict.keys.contains("PrivateIPv4Address") && dict["PrivateIPv4Address"] != nil {
                        self.privateIPv4Address = dict["PrivateIPv4Address"] as! String
                    }
                    if dict.keys.contains("PrivateIPv4HcStatus") && dict["PrivateIPv4HcStatus"] != nil {
                        self.privateIPv4HcStatus = dict["PrivateIPv4HcStatus"] as! String
                    }
                    if dict.keys.contains("PrivateIPv6HcStatus") && dict["PrivateIPv6HcStatus"] != nil {
                        self.privateIPv6HcStatus = dict["PrivateIPv6HcStatus"] as! String
                    }
                    if dict.keys.contains("PublicIPv4Address") && dict["PublicIPv4Address"] != nil {
                        self.publicIPv4Address = dict["PublicIPv4Address"] as! String
                    }
                }
            }
            public var loadBalancerAddresses: [ListLoadBalancersResponseBody.LoadBalancers.ZoneMappings.LoadBalancerAddresses]?

            public var status: String?

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
                if self.loadBalancerAddresses != nil {
                    var tmp : [Any] = []
                    for k in self.loadBalancerAddresses! {
                        tmp.append(k.toMap())
                    }
                    map["LoadBalancerAddresses"] = tmp
                }
                if self.status != nil {
                    map["Status"] = self.status!
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
                if dict.keys.contains("LoadBalancerAddresses") && dict["LoadBalancerAddresses"] != nil {
                    var tmp : [ListLoadBalancersResponseBody.LoadBalancers.ZoneMappings.LoadBalancerAddresses] = []
                    for v in dict["LoadBalancerAddresses"] as! [Any] {
                        var model = ListLoadBalancersResponseBody.LoadBalancers.ZoneMappings.LoadBalancerAddresses()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.loadBalancerAddresses = tmp
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var addressIpVersion: String?

        public var addressType: String?

        public var bandwidthPackageId: String?

        public var createTime: String?

        public var crossZoneEnabled: Bool?

        public var DNSName: String?

        public var deletionProtectionConfig: ListLoadBalancersResponseBody.LoadBalancers.DeletionProtectionConfig?

        public var ipv6AddressType: String?

        public var loadBalancerBillingConfig: ListLoadBalancersResponseBody.LoadBalancers.LoadBalancerBillingConfig?

        public var loadBalancerBusinessStatus: String?

        public var loadBalancerId: String?

        public var loadBalancerName: String?

        public var loadBalancerStatus: String?

        public var loadBalancerType: String?

        public var modificationProtectionConfig: ListLoadBalancersResponseBody.LoadBalancers.ModificationProtectionConfig?

        public var operationLocks: [ListLoadBalancersResponseBody.LoadBalancers.OperationLocks]?

        public var regionId: String?

        public var resourceGroupId: String?

        public var securityGroupIds: [String]?

        public var tags: [ListLoadBalancersResponseBody.LoadBalancers.Tags]?

        public var vpcId: String?

        public var zoneMappings: [ListLoadBalancersResponseBody.LoadBalancers.ZoneMappings]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.deletionProtectionConfig?.validate()
            try self.loadBalancerBillingConfig?.validate()
            try self.modificationProtectionConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addressIpVersion != nil {
                map["AddressIpVersion"] = self.addressIpVersion!
            }
            if self.addressType != nil {
                map["AddressType"] = self.addressType!
            }
            if self.bandwidthPackageId != nil {
                map["BandwidthPackageId"] = self.bandwidthPackageId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.crossZoneEnabled != nil {
                map["CrossZoneEnabled"] = self.crossZoneEnabled!
            }
            if self.DNSName != nil {
                map["DNSName"] = self.DNSName!
            }
            if self.deletionProtectionConfig != nil {
                map["DeletionProtectionConfig"] = self.deletionProtectionConfig?.toMap()
            }
            if self.ipv6AddressType != nil {
                map["Ipv6AddressType"] = self.ipv6AddressType!
            }
            if self.loadBalancerBillingConfig != nil {
                map["LoadBalancerBillingConfig"] = self.loadBalancerBillingConfig?.toMap()
            }
            if self.loadBalancerBusinessStatus != nil {
                map["LoadBalancerBusinessStatus"] = self.loadBalancerBusinessStatus!
            }
            if self.loadBalancerId != nil {
                map["LoadBalancerId"] = self.loadBalancerId!
            }
            if self.loadBalancerName != nil {
                map["LoadBalancerName"] = self.loadBalancerName!
            }
            if self.loadBalancerStatus != nil {
                map["LoadBalancerStatus"] = self.loadBalancerStatus!
            }
            if self.loadBalancerType != nil {
                map["LoadBalancerType"] = self.loadBalancerType!
            }
            if self.modificationProtectionConfig != nil {
                map["ModificationProtectionConfig"] = self.modificationProtectionConfig?.toMap()
            }
            if self.operationLocks != nil {
                var tmp : [Any] = []
                for k in self.operationLocks! {
                    tmp.append(k.toMap())
                }
                map["OperationLocks"] = tmp
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.securityGroupIds != nil {
                map["SecurityGroupIds"] = self.securityGroupIds!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
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
            if dict.keys.contains("AddressIpVersion") && dict["AddressIpVersion"] != nil {
                self.addressIpVersion = dict["AddressIpVersion"] as! String
            }
            if dict.keys.contains("AddressType") && dict["AddressType"] != nil {
                self.addressType = dict["AddressType"] as! String
            }
            if dict.keys.contains("BandwidthPackageId") && dict["BandwidthPackageId"] != nil {
                self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CrossZoneEnabled") && dict["CrossZoneEnabled"] != nil {
                self.crossZoneEnabled = dict["CrossZoneEnabled"] as! Bool
            }
            if dict.keys.contains("DNSName") && dict["DNSName"] != nil {
                self.DNSName = dict["DNSName"] as! String
            }
            if dict.keys.contains("DeletionProtectionConfig") && dict["DeletionProtectionConfig"] != nil {
                var model = ListLoadBalancersResponseBody.LoadBalancers.DeletionProtectionConfig()
                model.fromMap(dict["DeletionProtectionConfig"] as! [String: Any])
                self.deletionProtectionConfig = model
            }
            if dict.keys.contains("Ipv6AddressType") && dict["Ipv6AddressType"] != nil {
                self.ipv6AddressType = dict["Ipv6AddressType"] as! String
            }
            if dict.keys.contains("LoadBalancerBillingConfig") && dict["LoadBalancerBillingConfig"] != nil {
                var model = ListLoadBalancersResponseBody.LoadBalancers.LoadBalancerBillingConfig()
                model.fromMap(dict["LoadBalancerBillingConfig"] as! [String: Any])
                self.loadBalancerBillingConfig = model
            }
            if dict.keys.contains("LoadBalancerBusinessStatus") && dict["LoadBalancerBusinessStatus"] != nil {
                self.loadBalancerBusinessStatus = dict["LoadBalancerBusinessStatus"] as! String
            }
            if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
                self.loadBalancerId = dict["LoadBalancerId"] as! String
            }
            if dict.keys.contains("LoadBalancerName") && dict["LoadBalancerName"] != nil {
                self.loadBalancerName = dict["LoadBalancerName"] as! String
            }
            if dict.keys.contains("LoadBalancerStatus") && dict["LoadBalancerStatus"] != nil {
                self.loadBalancerStatus = dict["LoadBalancerStatus"] as! String
            }
            if dict.keys.contains("LoadBalancerType") && dict["LoadBalancerType"] != nil {
                self.loadBalancerType = dict["LoadBalancerType"] as! String
            }
            if dict.keys.contains("ModificationProtectionConfig") && dict["ModificationProtectionConfig"] != nil {
                var model = ListLoadBalancersResponseBody.LoadBalancers.ModificationProtectionConfig()
                model.fromMap(dict["ModificationProtectionConfig"] as! [String: Any])
                self.modificationProtectionConfig = model
            }
            if dict.keys.contains("OperationLocks") && dict["OperationLocks"] != nil {
                var tmp : [ListLoadBalancersResponseBody.LoadBalancers.OperationLocks] = []
                for v in dict["OperationLocks"] as! [Any] {
                    var model = ListLoadBalancersResponseBody.LoadBalancers.OperationLocks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.operationLocks = tmp
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SecurityGroupIds") && dict["SecurityGroupIds"] != nil {
                self.securityGroupIds = dict["SecurityGroupIds"] as! [String]
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListLoadBalancersResponseBody.LoadBalancers.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListLoadBalancersResponseBody.LoadBalancers.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("ZoneMappings") && dict["ZoneMappings"] != nil {
                var tmp : [ListLoadBalancersResponseBody.LoadBalancers.ZoneMappings] = []
                for v in dict["ZoneMappings"] as! [Any] {
                    var model = ListLoadBalancersResponseBody.LoadBalancers.ZoneMappings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.zoneMappings = tmp
            }
        }
    }
    public var loadBalancers: [ListLoadBalancersResponseBody.LoadBalancers]?

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
        if self.loadBalancers != nil {
            var tmp : [Any] = []
            for k in self.loadBalancers! {
                tmp.append(k.toMap())
            }
            map["LoadBalancers"] = tmp
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
        if dict.keys.contains("LoadBalancers") && dict["LoadBalancers"] != nil {
            var tmp : [ListLoadBalancersResponseBody.LoadBalancers] = []
            for v in dict["LoadBalancers"] as! [Any] {
                var model = ListLoadBalancersResponseBody.LoadBalancers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.loadBalancers = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListLoadBalancersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLoadBalancersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListLoadBalancersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSecurityPolicyRequest : Tea.TeaModel {
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
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var securityPolicyIds: [String]?

    public var securityPolicyNames: [String]?

    public var tag: [ListSecurityPolicyRequest.Tag]?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityPolicyIds != nil {
            map["SecurityPolicyIds"] = self.securityPolicyIds!
        }
        if self.securityPolicyNames != nil {
            map["SecurityPolicyNames"] = self.securityPolicyNames!
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
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityPolicyIds") && dict["SecurityPolicyIds"] != nil {
            self.securityPolicyIds = dict["SecurityPolicyIds"] as! [String]
        }
        if dict.keys.contains("SecurityPolicyNames") && dict["SecurityPolicyNames"] != nil {
            self.securityPolicyNames = dict["SecurityPolicyNames"] as! [String]
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListSecurityPolicyRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListSecurityPolicyRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListSecurityPolicyResponseBody : Tea.TeaModel {
    public class SecurityPolicies : Tea.TeaModel {
        public class RelatedListeners : Tea.TeaModel {
            public var listenerId: String?

            public var listenerPort: Int64?

            public var listenerProtocol: String?

            public var loadBalancerId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.listenerId != nil {
                    map["ListenerId"] = self.listenerId!
                }
                if self.listenerPort != nil {
                    map["ListenerPort"] = self.listenerPort!
                }
                if self.listenerProtocol != nil {
                    map["ListenerProtocol"] = self.listenerProtocol!
                }
                if self.loadBalancerId != nil {
                    map["LoadBalancerId"] = self.loadBalancerId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ListenerId") && dict["ListenerId"] != nil {
                    self.listenerId = dict["ListenerId"] as! String
                }
                if dict.keys.contains("ListenerPort") && dict["ListenerPort"] != nil {
                    self.listenerPort = dict["ListenerPort"] as! Int64
                }
                if dict.keys.contains("ListenerProtocol") && dict["ListenerProtocol"] != nil {
                    self.listenerProtocol = dict["ListenerProtocol"] as! String
                }
                if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
                    self.loadBalancerId = dict["LoadBalancerId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var ciphers: String?

        public var regionId: String?

        public var relatedListeners: [ListSecurityPolicyResponseBody.SecurityPolicies.RelatedListeners]?

        public var resourceGroupId: String?

        public var securityPolicyId: String?

        public var securityPolicyName: String?

        public var securityPolicyStatus: String?

        public var tags: [ListSecurityPolicyResponseBody.SecurityPolicies.Tags]?

        public var tlsVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ciphers != nil {
                map["Ciphers"] = self.ciphers!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.relatedListeners != nil {
                var tmp : [Any] = []
                for k in self.relatedListeners! {
                    tmp.append(k.toMap())
                }
                map["RelatedListeners"] = tmp
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.securityPolicyId != nil {
                map["SecurityPolicyId"] = self.securityPolicyId!
            }
            if self.securityPolicyName != nil {
                map["SecurityPolicyName"] = self.securityPolicyName!
            }
            if self.securityPolicyStatus != nil {
                map["SecurityPolicyStatus"] = self.securityPolicyStatus!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tlsVersion != nil {
                map["TlsVersion"] = self.tlsVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ciphers") && dict["Ciphers"] != nil {
                self.ciphers = dict["Ciphers"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RelatedListeners") && dict["RelatedListeners"] != nil {
                var tmp : [ListSecurityPolicyResponseBody.SecurityPolicies.RelatedListeners] = []
                for v in dict["RelatedListeners"] as! [Any] {
                    var model = ListSecurityPolicyResponseBody.SecurityPolicies.RelatedListeners()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.relatedListeners = tmp
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SecurityPolicyId") && dict["SecurityPolicyId"] != nil {
                self.securityPolicyId = dict["SecurityPolicyId"] as! String
            }
            if dict.keys.contains("SecurityPolicyName") && dict["SecurityPolicyName"] != nil {
                self.securityPolicyName = dict["SecurityPolicyName"] as! String
            }
            if dict.keys.contains("SecurityPolicyStatus") && dict["SecurityPolicyStatus"] != nil {
                self.securityPolicyStatus = dict["SecurityPolicyStatus"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListSecurityPolicyResponseBody.SecurityPolicies.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListSecurityPolicyResponseBody.SecurityPolicies.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TlsVersion") && dict["TlsVersion"] != nil {
                self.tlsVersion = dict["TlsVersion"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var securityPolicies: [ListSecurityPolicyResponseBody.SecurityPolicies]?

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
        if self.securityPolicies != nil {
            var tmp : [Any] = []
            for k in self.securityPolicies! {
                tmp.append(k.toMap())
            }
            map["SecurityPolicies"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityPolicies") && dict["SecurityPolicies"] != nil {
            var tmp : [ListSecurityPolicyResponseBody.SecurityPolicies] = []
            for v in dict["SecurityPolicies"] as! [Any] {
                var model = ListSecurityPolicyResponseBody.SecurityPolicies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.securityPolicies = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListSecurityPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSecurityPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListSecurityPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServerGroupServersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serverGroupId: String?

    public var serverIds: [String]?

    public var serverIps: [String]?

    public override init() {
        super.init()
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
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        if self.serverIds != nil {
            map["ServerIds"] = self.serverIds!
        }
        if self.serverIps != nil {
            map["ServerIps"] = self.serverIps!
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
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
        if dict.keys.contains("ServerIds") && dict["ServerIds"] != nil {
            self.serverIds = dict["ServerIds"] as! [String]
        }
        if dict.keys.contains("ServerIps") && dict["ServerIps"] != nil {
            self.serverIps = dict["ServerIps"] as! [String]
        }
    }
}

public class ListServerGroupServersResponseBody : Tea.TeaModel {
    public class Servers : Tea.TeaModel {
        public var description_: String?

        public var port: Int32?

        public var serverGroupId: String?

        public var serverId: String?

        public var serverIp: String?

        public var serverType: String?

        public var status: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.serverGroupId != nil {
                map["ServerGroupId"] = self.serverGroupId!
            }
            if self.serverId != nil {
                map["ServerId"] = self.serverId!
            }
            if self.serverIp != nil {
                map["ServerIp"] = self.serverIp!
            }
            if self.serverType != nil {
                map["ServerType"] = self.serverType!
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
                self.serverGroupId = dict["ServerGroupId"] as! String
            }
            if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
                self.serverId = dict["ServerId"] as! String
            }
            if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
                self.serverIp = dict["ServerIp"] as! String
            }
            if dict.keys.contains("ServerType") && dict["ServerType"] != nil {
                self.serverType = dict["ServerType"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Weight") && dict["Weight"] != nil {
                self.weight = dict["Weight"] as! Int32
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var servers: [ListServerGroupServersResponseBody.Servers]?

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
        if self.servers != nil {
            var tmp : [Any] = []
            for k in self.servers! {
                tmp.append(k.toMap())
            }
            map["Servers"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Servers") && dict["Servers"] != nil {
            var tmp : [ListServerGroupServersResponseBody.Servers] = []
            for v in dict["Servers"] as! [Any] {
                var model = ListServerGroupServersResponseBody.Servers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.servers = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListServerGroupServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServerGroupServersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListServerGroupServersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServerGroupsRequest : Tea.TeaModel {
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
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serverGroupIds: [String]?

    public var serverGroupNames: [String]?

    public var serverGroupType: String?

    public var tag: [ListServerGroupsRequest.Tag]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serverGroupIds != nil {
            map["ServerGroupIds"] = self.serverGroupIds!
        }
        if self.serverGroupNames != nil {
            map["ServerGroupNames"] = self.serverGroupNames!
        }
        if self.serverGroupType != nil {
            map["ServerGroupType"] = self.serverGroupType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
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
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServerGroupIds") && dict["ServerGroupIds"] != nil {
            self.serverGroupIds = dict["ServerGroupIds"] as! [String]
        }
        if dict.keys.contains("ServerGroupNames") && dict["ServerGroupNames"] != nil {
            self.serverGroupNames = dict["ServerGroupNames"] as! [String]
        }
        if dict.keys.contains("ServerGroupType") && dict["ServerGroupType"] != nil {
            self.serverGroupType = dict["ServerGroupType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListServerGroupsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListServerGroupsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class ListServerGroupsResponseBody : Tea.TeaModel {
    public class ServerGroups : Tea.TeaModel {
        public class HealthCheck : Tea.TeaModel {
            public var healthCheckConnectPort: Int32?

            public var healthCheckConnectTimeout: Int32?

            public var healthCheckDomain: String?

            public var healthCheckEnabled: Bool?

            public var healthCheckHttpCode: [String]?

            public var healthCheckInterval: Int32?

            public var healthCheckType: String?

            public var healthCheckUrl: String?

            public var healthyThreshold: Int32?

            public var httpCheckMethod: String?

            public var unhealthyThreshold: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.healthCheckConnectPort != nil {
                    map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
                }
                if self.healthCheckConnectTimeout != nil {
                    map["HealthCheckConnectTimeout"] = self.healthCheckConnectTimeout!
                }
                if self.healthCheckDomain != nil {
                    map["HealthCheckDomain"] = self.healthCheckDomain!
                }
                if self.healthCheckEnabled != nil {
                    map["HealthCheckEnabled"] = self.healthCheckEnabled!
                }
                if self.healthCheckHttpCode != nil {
                    map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
                }
                if self.healthCheckInterval != nil {
                    map["HealthCheckInterval"] = self.healthCheckInterval!
                }
                if self.healthCheckType != nil {
                    map["HealthCheckType"] = self.healthCheckType!
                }
                if self.healthCheckUrl != nil {
                    map["HealthCheckUrl"] = self.healthCheckUrl!
                }
                if self.healthyThreshold != nil {
                    map["HealthyThreshold"] = self.healthyThreshold!
                }
                if self.httpCheckMethod != nil {
                    map["HttpCheckMethod"] = self.httpCheckMethod!
                }
                if self.unhealthyThreshold != nil {
                    map["UnhealthyThreshold"] = self.unhealthyThreshold!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HealthCheckConnectPort") && dict["HealthCheckConnectPort"] != nil {
                    self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
                }
                if dict.keys.contains("HealthCheckConnectTimeout") && dict["HealthCheckConnectTimeout"] != nil {
                    self.healthCheckConnectTimeout = dict["HealthCheckConnectTimeout"] as! Int32
                }
                if dict.keys.contains("HealthCheckDomain") && dict["HealthCheckDomain"] != nil {
                    self.healthCheckDomain = dict["HealthCheckDomain"] as! String
                }
                if dict.keys.contains("HealthCheckEnabled") && dict["HealthCheckEnabled"] != nil {
                    self.healthCheckEnabled = dict["HealthCheckEnabled"] as! Bool
                }
                if dict.keys.contains("HealthCheckHttpCode") && dict["HealthCheckHttpCode"] != nil {
                    self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! [String]
                }
                if dict.keys.contains("HealthCheckInterval") && dict["HealthCheckInterval"] != nil {
                    self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
                }
                if dict.keys.contains("HealthCheckType") && dict["HealthCheckType"] != nil {
                    self.healthCheckType = dict["HealthCheckType"] as! String
                }
                if dict.keys.contains("HealthCheckUrl") && dict["HealthCheckUrl"] != nil {
                    self.healthCheckUrl = dict["HealthCheckUrl"] as! String
                }
                if dict.keys.contains("HealthyThreshold") && dict["HealthyThreshold"] != nil {
                    self.healthyThreshold = dict["HealthyThreshold"] as! Int32
                }
                if dict.keys.contains("HttpCheckMethod") && dict["HttpCheckMethod"] != nil {
                    self.httpCheckMethod = dict["HttpCheckMethod"] as! String
                }
                if dict.keys.contains("UnhealthyThreshold") && dict["UnhealthyThreshold"] != nil {
                    self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var addressIPVersion: String?

        public var aliUid: Int64?

        public var anyPortEnabled: Bool?

        public var connectionDrainEnabled: Bool?

        public var connectionDrainTimeout: Int32?

        public var healthCheck: ListServerGroupsResponseBody.ServerGroups.HealthCheck?

        public var preserveClientIpEnabled: Bool?

        public var protocol_: String?

        public var regionId: String?

        public var relatedLoadBalancerIds: [String]?

        public var resourceGroupId: String?

        public var scheduler: String?

        public var serverCount: Int32?

        public var serverGroupId: String?

        public var serverGroupName: String?

        public var serverGroupStatus: String?

        public var serverGroupType: String?

        public var tags: [ListServerGroupsResponseBody.ServerGroups.Tags]?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.healthCheck?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addressIPVersion != nil {
                map["AddressIPVersion"] = self.addressIPVersion!
            }
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.anyPortEnabled != nil {
                map["AnyPortEnabled"] = self.anyPortEnabled!
            }
            if self.connectionDrainEnabled != nil {
                map["ConnectionDrainEnabled"] = self.connectionDrainEnabled!
            }
            if self.connectionDrainTimeout != nil {
                map["ConnectionDrainTimeout"] = self.connectionDrainTimeout!
            }
            if self.healthCheck != nil {
                map["HealthCheck"] = self.healthCheck?.toMap()
            }
            if self.preserveClientIpEnabled != nil {
                map["PreserveClientIpEnabled"] = self.preserveClientIpEnabled!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.relatedLoadBalancerIds != nil {
                map["RelatedLoadBalancerIds"] = self.relatedLoadBalancerIds!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.scheduler != nil {
                map["Scheduler"] = self.scheduler!
            }
            if self.serverCount != nil {
                map["ServerCount"] = self.serverCount!
            }
            if self.serverGroupId != nil {
                map["ServerGroupId"] = self.serverGroupId!
            }
            if self.serverGroupName != nil {
                map["ServerGroupName"] = self.serverGroupName!
            }
            if self.serverGroupStatus != nil {
                map["ServerGroupStatus"] = self.serverGroupStatus!
            }
            if self.serverGroupType != nil {
                map["ServerGroupType"] = self.serverGroupType!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddressIPVersion") && dict["AddressIPVersion"] != nil {
                self.addressIPVersion = dict["AddressIPVersion"] as! String
            }
            if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
                self.aliUid = dict["AliUid"] as! Int64
            }
            if dict.keys.contains("AnyPortEnabled") && dict["AnyPortEnabled"] != nil {
                self.anyPortEnabled = dict["AnyPortEnabled"] as! Bool
            }
            if dict.keys.contains("ConnectionDrainEnabled") && dict["ConnectionDrainEnabled"] != nil {
                self.connectionDrainEnabled = dict["ConnectionDrainEnabled"] as! Bool
            }
            if dict.keys.contains("ConnectionDrainTimeout") && dict["ConnectionDrainTimeout"] != nil {
                self.connectionDrainTimeout = dict["ConnectionDrainTimeout"] as! Int32
            }
            if dict.keys.contains("HealthCheck") && dict["HealthCheck"] != nil {
                var model = ListServerGroupsResponseBody.ServerGroups.HealthCheck()
                model.fromMap(dict["HealthCheck"] as! [String: Any])
                self.healthCheck = model
            }
            if dict.keys.contains("PreserveClientIpEnabled") && dict["PreserveClientIpEnabled"] != nil {
                self.preserveClientIpEnabled = dict["PreserveClientIpEnabled"] as! Bool
            }
            if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RelatedLoadBalancerIds") && dict["RelatedLoadBalancerIds"] != nil {
                self.relatedLoadBalancerIds = dict["RelatedLoadBalancerIds"] as! [String]
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Scheduler") && dict["Scheduler"] != nil {
                self.scheduler = dict["Scheduler"] as! String
            }
            if dict.keys.contains("ServerCount") && dict["ServerCount"] != nil {
                self.serverCount = dict["ServerCount"] as! Int32
            }
            if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
                self.serverGroupId = dict["ServerGroupId"] as! String
            }
            if dict.keys.contains("ServerGroupName") && dict["ServerGroupName"] != nil {
                self.serverGroupName = dict["ServerGroupName"] as! String
            }
            if dict.keys.contains("ServerGroupStatus") && dict["ServerGroupStatus"] != nil {
                self.serverGroupStatus = dict["ServerGroupStatus"] as! String
            }
            if dict.keys.contains("ServerGroupType") && dict["ServerGroupType"] != nil {
                self.serverGroupType = dict["ServerGroupType"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListServerGroupsResponseBody.ServerGroups.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListServerGroupsResponseBody.ServerGroups.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var serverGroups: [ListServerGroupsResponseBody.ServerGroups]?

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
        if self.serverGroups != nil {
            var tmp : [Any] = []
            for k in self.serverGroups! {
                tmp.append(k.toMap())
            }
            map["ServerGroups"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerGroups") && dict["ServerGroups"] != nil {
            var tmp : [ListServerGroupsResponseBody.ServerGroups] = []
            for v in dict["ServerGroups"] as! [Any] {
                var model = ListServerGroupsResponseBody.ServerGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serverGroups = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListServerGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServerGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListServerGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSystemSecurityPolicyRequest : Tea.TeaModel {
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

public class ListSystemSecurityPolicyResponseBody : Tea.TeaModel {
    public class SecurityPolicies : Tea.TeaModel {
        public var ciphers: String?

        public var securityPolicyId: String?

        public var securityPolicyName: String?

        public var tlsVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ciphers != nil {
                map["Ciphers"] = self.ciphers!
            }
            if self.securityPolicyId != nil {
                map["SecurityPolicyId"] = self.securityPolicyId!
            }
            if self.securityPolicyName != nil {
                map["SecurityPolicyName"] = self.securityPolicyName!
            }
            if self.tlsVersion != nil {
                map["TlsVersion"] = self.tlsVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ciphers") && dict["Ciphers"] != nil {
                self.ciphers = dict["Ciphers"] as! String
            }
            if dict.keys.contains("SecurityPolicyId") && dict["SecurityPolicyId"] != nil {
                self.securityPolicyId = dict["SecurityPolicyId"] as! String
            }
            if dict.keys.contains("SecurityPolicyName") && dict["SecurityPolicyName"] != nil {
                self.securityPolicyName = dict["SecurityPolicyName"] as! String
            }
            if dict.keys.contains("TlsVersion") && dict["TlsVersion"] != nil {
                self.tlsVersion = dict["TlsVersion"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityPolicies: [ListSystemSecurityPolicyResponseBody.SecurityPolicies]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityPolicies != nil {
            var tmp : [Any] = []
            for k in self.securityPolicies! {
                tmp.append(k.toMap())
            }
            map["SecurityPolicies"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityPolicies") && dict["SecurityPolicies"] != nil {
            var tmp : [ListSystemSecurityPolicyResponseBody.SecurityPolicies] = []
            for v in dict["SecurityPolicies"] as! [Any] {
                var model = ListSystemSecurityPolicyResponseBody.SecurityPolicies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.securityPolicies = tmp
        }
    }
}

public class ListSystemSecurityPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSystemSecurityPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListSystemSecurityPolicyResponseBody()
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
    public var maxResults: Int32?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
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
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
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
        public var aliUid: Int64?

        public var category: String?

        public var regionNo: String?

        public var resourceId: String?

        public var resourceType: String?

        public var scope: String?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.regionNo != nil {
                map["RegionNo"] = self.regionNo!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
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
            if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
                self.aliUid = dict["AliUid"] as! Int64
            }
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
                self.regionNo = dict["RegionNo"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Scope") && dict["Scope"] != nil {
                self.scope = dict["Scope"] as! String
            }
            if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                self.tagValue = dict["TagValue"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

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
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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

public class LoadBalancerJoinSecurityGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

    public var regionId: String?

    public var securityGroupIds: [String]?

    public override init() {
        super.init()
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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityGroupIds != nil {
            map["SecurityGroupIds"] = self.securityGroupIds!
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
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityGroupIds") && dict["SecurityGroupIds"] != nil {
            self.securityGroupIds = dict["SecurityGroupIds"] as! [String]
        }
    }
}

public class LoadBalancerJoinSecurityGroupResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class LoadBalancerJoinSecurityGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LoadBalancerJoinSecurityGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = LoadBalancerJoinSecurityGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LoadBalancerLeaveSecurityGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

    public var regionId: String?

    public var securityGroupIds: [String]?

    public override init() {
        super.init()
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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityGroupIds != nil {
            map["SecurityGroupIds"] = self.securityGroupIds!
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
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityGroupIds") && dict["SecurityGroupIds"] != nil {
            self.securityGroupIds = dict["SecurityGroupIds"] as! [String]
        }
    }
}

public class LoadBalancerLeaveSecurityGroupResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class LoadBalancerLeaveSecurityGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LoadBalancerLeaveSecurityGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = LoadBalancerLeaveSecurityGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveResourceGroupRequest : Tea.TeaModel {
    public var newResourceGroupId: String?

    public var regionId: String?

    public var resourceId: String?

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
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewResourceGroupId") && dict["NewResourceGroupId"] != nil {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class MoveResourceGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
        }
    }
    public var data: MoveResourceGroupResponseBody.Data?

    public var httpStatusCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = MoveResourceGroupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

public class RemoveServersFromServerGroupRequest : Tea.TeaModel {
    public class Servers : Tea.TeaModel {
        public var port: Int32?

        public var serverId: String?

        public var serverIp: String?

        public var serverType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.serverId != nil {
                map["ServerId"] = self.serverId!
            }
            if self.serverIp != nil {
                map["ServerIp"] = self.serverIp!
            }
            if self.serverType != nil {
                map["ServerType"] = self.serverType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
                self.serverId = dict["ServerId"] as! String
            }
            if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
                self.serverIp = dict["ServerIp"] as! String
            }
            if dict.keys.contains("ServerType") && dict["ServerType"] != nil {
                self.serverType = dict["ServerType"] as! String
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var serverGroupId: String?

    public var servers: [RemoveServersFromServerGroupRequest.Servers]?

    public override init() {
        super.init()
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
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        if self.servers != nil {
            var tmp : [Any] = []
            for k in self.servers! {
                tmp.append(k.toMap())
            }
            map["Servers"] = tmp
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
        if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
        if dict.keys.contains("Servers") && dict["Servers"] != nil {
            var tmp : [RemoveServersFromServerGroupRequest.Servers] = []
            for v in dict["Servers"] as! [Any] {
                var model = RemoveServersFromServerGroupRequest.Servers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.servers = tmp
        }
    }
}

public class RemoveServersFromServerGroupResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public var serverGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
    }
}

public class RemoveServersFromServerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveServersFromServerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveServersFromServerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartListenerRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

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
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
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
        if dict.keys.contains("ListenerId") && dict["ListenerId"] != nil {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StartListenerResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartShiftLoadBalancerZonesRequest : Tea.TeaModel {
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
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

    public var regionId: String?

    public var zoneMappings: [StartShiftLoadBalancerZonesRequest.ZoneMappings]?

    public override init() {
        super.init()
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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneMappings") && dict["ZoneMappings"] != nil {
            var tmp : [StartShiftLoadBalancerZonesRequest.ZoneMappings] = []
            for v in dict["ZoneMappings"] as! [Any] {
                var model = StartShiftLoadBalancerZonesRequest.ZoneMappings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.zoneMappings = tmp
        }
    }
}

public class StartShiftLoadBalancerZonesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class StartShiftLoadBalancerZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartShiftLoadBalancerZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartShiftLoadBalancerZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopListenerRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

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
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
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
        if dict.keys.contains("ListenerId") && dict["ListenerId"] != nil {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StopListenerResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopListenerResponseBody()
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
    public var clientToken: String?

    public var dryRun: Bool?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
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
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

    public var clientToken: String?

    public var dryRun: Bool?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
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
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
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
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class UpdateListenerAttributeRequest : Tea.TeaModel {
    public var alpnEnabled: Bool?

    public var alpnPolicy: String?

    public var caCertificateIds: [String]?

    public var caEnabled: Bool?

    public var certificateIds: [String]?

    public var clientToken: String?

    public var cps: Int32?

    public var dryRun: Bool?

    public var idleTimeout: Int32?

    public var listenerDescription: String?

    public var listenerId: String?

    public var mss: Int32?

    public var proxyProtocolEnabled: Bool?

    public var regionId: String?

    public var secSensorEnabled: Bool?

    public var securityPolicyId: String?

    public var serverGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alpnEnabled != nil {
            map["AlpnEnabled"] = self.alpnEnabled!
        }
        if self.alpnPolicy != nil {
            map["AlpnPolicy"] = self.alpnPolicy!
        }
        if self.caCertificateIds != nil {
            map["CaCertificateIds"] = self.caCertificateIds!
        }
        if self.caEnabled != nil {
            map["CaEnabled"] = self.caEnabled!
        }
        if self.certificateIds != nil {
            map["CertificateIds"] = self.certificateIds!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.cps != nil {
            map["Cps"] = self.cps!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.idleTimeout != nil {
            map["IdleTimeout"] = self.idleTimeout!
        }
        if self.listenerDescription != nil {
            map["ListenerDescription"] = self.listenerDescription!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.mss != nil {
            map["Mss"] = self.mss!
        }
        if self.proxyProtocolEnabled != nil {
            map["ProxyProtocolEnabled"] = self.proxyProtocolEnabled!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.secSensorEnabled != nil {
            map["SecSensorEnabled"] = self.secSensorEnabled!
        }
        if self.securityPolicyId != nil {
            map["SecurityPolicyId"] = self.securityPolicyId!
        }
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlpnEnabled") && dict["AlpnEnabled"] != nil {
            self.alpnEnabled = dict["AlpnEnabled"] as! Bool
        }
        if dict.keys.contains("AlpnPolicy") && dict["AlpnPolicy"] != nil {
            self.alpnPolicy = dict["AlpnPolicy"] as! String
        }
        if dict.keys.contains("CaCertificateIds") && dict["CaCertificateIds"] != nil {
            self.caCertificateIds = dict["CaCertificateIds"] as! [String]
        }
        if dict.keys.contains("CaEnabled") && dict["CaEnabled"] != nil {
            self.caEnabled = dict["CaEnabled"] as! Bool
        }
        if dict.keys.contains("CertificateIds") && dict["CertificateIds"] != nil {
            self.certificateIds = dict["CertificateIds"] as! [String]
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Cps") && dict["Cps"] != nil {
            self.cps = dict["Cps"] as! Int32
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("IdleTimeout") && dict["IdleTimeout"] != nil {
            self.idleTimeout = dict["IdleTimeout"] as! Int32
        }
        if dict.keys.contains("ListenerDescription") && dict["ListenerDescription"] != nil {
            self.listenerDescription = dict["ListenerDescription"] as! String
        }
        if dict.keys.contains("ListenerId") && dict["ListenerId"] != nil {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("Mss") && dict["Mss"] != nil {
            self.mss = dict["Mss"] as! Int32
        }
        if dict.keys.contains("ProxyProtocolEnabled") && dict["ProxyProtocolEnabled"] != nil {
            self.proxyProtocolEnabled = dict["ProxyProtocolEnabled"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecSensorEnabled") && dict["SecSensorEnabled"] != nil {
            self.secSensorEnabled = dict["SecSensorEnabled"] as! Bool
        }
        if dict.keys.contains("SecurityPolicyId") && dict["SecurityPolicyId"] != nil {
            self.securityPolicyId = dict["SecurityPolicyId"] as! String
        }
        if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
    }
}

public class UpdateListenerAttributeResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateListenerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateListenerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateListenerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateLoadBalancerAddressTypeConfigRequest : Tea.TeaModel {
    public class ZoneMappings : Tea.TeaModel {
        public var allocationId: String?

        public var eipType: String?

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
            if self.allocationId != nil {
                map["AllocationId"] = self.allocationId!
            }
            if self.eipType != nil {
                map["EipType"] = self.eipType!
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
            if dict.keys.contains("AllocationId") && dict["AllocationId"] != nil {
                self.allocationId = dict["AllocationId"] as! String
            }
            if dict.keys.contains("EipType") && dict["EipType"] != nil {
                self.eipType = dict["EipType"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var addressType: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

    public var regionId: String?

    public var zoneMappings: [UpdateLoadBalancerAddressTypeConfigRequest.ZoneMappings]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("AddressType") && dict["AddressType"] != nil {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneMappings") && dict["ZoneMappings"] != nil {
            var tmp : [UpdateLoadBalancerAddressTypeConfigRequest.ZoneMappings] = []
            for v in dict["ZoneMappings"] as! [Any] {
                var model = UpdateLoadBalancerAddressTypeConfigRequest.ZoneMappings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.zoneMappings = tmp
        }
    }
}

public class UpdateLoadBalancerAddressTypeConfigResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateLoadBalancerAddressTypeConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLoadBalancerAddressTypeConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateLoadBalancerAddressTypeConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateLoadBalancerAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var cps: Int32?

    public var crossZoneEnabled: Bool?

    public var dryRun: Bool?

    public var loadBalancerId: String?

    public var loadBalancerName: String?

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
        if self.cps != nil {
            map["Cps"] = self.cps!
        }
        if self.crossZoneEnabled != nil {
            map["CrossZoneEnabled"] = self.crossZoneEnabled!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
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
        if dict.keys.contains("Cps") && dict["Cps"] != nil {
            self.cps = dict["Cps"] as! Int32
        }
        if dict.keys.contains("CrossZoneEnabled") && dict["CrossZoneEnabled"] != nil {
            self.crossZoneEnabled = dict["CrossZoneEnabled"] as! Bool
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LoadBalancerName") && dict["LoadBalancerName"] != nil {
            self.loadBalancerName = dict["LoadBalancerName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateLoadBalancerAttributeResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateLoadBalancerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLoadBalancerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateLoadBalancerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateLoadBalancerProtectionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var deletionProtectionEnabled: Bool?

    public var deletionProtectionReason: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

    public var modificationProtectionReason: String?

    public var modificationProtectionStatus: String?

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
        if self.deletionProtectionEnabled != nil {
            map["DeletionProtectionEnabled"] = self.deletionProtectionEnabled!
        }
        if self.deletionProtectionReason != nil {
            map["DeletionProtectionReason"] = self.deletionProtectionReason!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.modificationProtectionReason != nil {
            map["ModificationProtectionReason"] = self.modificationProtectionReason!
        }
        if self.modificationProtectionStatus != nil {
            map["ModificationProtectionStatus"] = self.modificationProtectionStatus!
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
        if dict.keys.contains("DeletionProtectionEnabled") && dict["DeletionProtectionEnabled"] != nil {
            self.deletionProtectionEnabled = dict["DeletionProtectionEnabled"] as! Bool
        }
        if dict.keys.contains("DeletionProtectionReason") && dict["DeletionProtectionReason"] != nil {
            self.deletionProtectionReason = dict["DeletionProtectionReason"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("ModificationProtectionReason") && dict["ModificationProtectionReason"] != nil {
            self.modificationProtectionReason = dict["ModificationProtectionReason"] as! String
        }
        if dict.keys.contains("ModificationProtectionStatus") && dict["ModificationProtectionStatus"] != nil {
            self.modificationProtectionStatus = dict["ModificationProtectionStatus"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateLoadBalancerProtectionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateLoadBalancerProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLoadBalancerProtectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateLoadBalancerProtectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateLoadBalancerZonesRequest : Tea.TeaModel {
    public class ZoneMappings : Tea.TeaModel {
        public var allocationId: String?

        public var eipType: String?

        public var privateIPv4Address: String?

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
            if self.allocationId != nil {
                map["AllocationId"] = self.allocationId!
            }
            if self.eipType != nil {
                map["EipType"] = self.eipType!
            }
            if self.privateIPv4Address != nil {
                map["PrivateIPv4Address"] = self.privateIPv4Address!
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
            if dict.keys.contains("AllocationId") && dict["AllocationId"] != nil {
                self.allocationId = dict["AllocationId"] as! String
            }
            if dict.keys.contains("EipType") && dict["EipType"] != nil {
                self.eipType = dict["EipType"] as! String
            }
            if dict.keys.contains("PrivateIPv4Address") && dict["PrivateIPv4Address"] != nil {
                self.privateIPv4Address = dict["PrivateIPv4Address"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

    public var regionId: String?

    public var zoneMappings: [UpdateLoadBalancerZonesRequest.ZoneMappings]?

    public override init() {
        super.init()
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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneMappings") && dict["ZoneMappings"] != nil {
            var tmp : [UpdateLoadBalancerZonesRequest.ZoneMappings] = []
            for v in dict["ZoneMappings"] as! [Any] {
                var model = UpdateLoadBalancerZonesRequest.ZoneMappings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.zoneMappings = tmp
        }
    }
}

public class UpdateLoadBalancerZonesResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateLoadBalancerZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLoadBalancerZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateLoadBalancerZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSecurityPolicyAttributeRequest : Tea.TeaModel {
    public var ciphers: [String]?

    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var securityPolicyId: String?

    public var securityPolicyName: String?

    public var tlsVersions: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ciphers != nil {
            map["Ciphers"] = self.ciphers!
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
        if self.securityPolicyId != nil {
            map["SecurityPolicyId"] = self.securityPolicyId!
        }
        if self.securityPolicyName != nil {
            map["SecurityPolicyName"] = self.securityPolicyName!
        }
        if self.tlsVersions != nil {
            map["TlsVersions"] = self.tlsVersions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ciphers") && dict["Ciphers"] != nil {
            self.ciphers = dict["Ciphers"] as! [String]
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
        if dict.keys.contains("SecurityPolicyId") && dict["SecurityPolicyId"] != nil {
            self.securityPolicyId = dict["SecurityPolicyId"] as! String
        }
        if dict.keys.contains("SecurityPolicyName") && dict["SecurityPolicyName"] != nil {
            self.securityPolicyName = dict["SecurityPolicyName"] as! String
        }
        if dict.keys.contains("TlsVersions") && dict["TlsVersions"] != nil {
            self.tlsVersions = dict["TlsVersions"] as! [String]
        }
    }
}

public class UpdateSecurityPolicyAttributeResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public var securityPolicyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityPolicyId != nil {
            map["SecurityPolicyId"] = self.securityPolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityPolicyId") && dict["SecurityPolicyId"] != nil {
            self.securityPolicyId = dict["SecurityPolicyId"] as! String
        }
    }
}

public class UpdateSecurityPolicyAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSecurityPolicyAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateSecurityPolicyAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateServerGroupAttributeRequest : Tea.TeaModel {
    public class HealthCheckConfig : Tea.TeaModel {
        public var healthCheckConnectPort: Int32?

        public var healthCheckConnectTimeout: Int32?

        public var healthCheckDomain: String?

        public var healthCheckEnabled: Bool?

        public var healthCheckHttpCode: [String]?

        public var healthCheckInterval: Int32?

        public var healthCheckType: String?

        public var healthCheckUrl: String?

        public var healthyThreshold: Int32?

        public var httpCheckMethod: String?

        public var unhealthyThreshold: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.healthCheckConnectPort != nil {
                map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
            }
            if self.healthCheckConnectTimeout != nil {
                map["HealthCheckConnectTimeout"] = self.healthCheckConnectTimeout!
            }
            if self.healthCheckDomain != nil {
                map["HealthCheckDomain"] = self.healthCheckDomain!
            }
            if self.healthCheckEnabled != nil {
                map["HealthCheckEnabled"] = self.healthCheckEnabled!
            }
            if self.healthCheckHttpCode != nil {
                map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
            }
            if self.healthCheckInterval != nil {
                map["HealthCheckInterval"] = self.healthCheckInterval!
            }
            if self.healthCheckType != nil {
                map["HealthCheckType"] = self.healthCheckType!
            }
            if self.healthCheckUrl != nil {
                map["HealthCheckUrl"] = self.healthCheckUrl!
            }
            if self.healthyThreshold != nil {
                map["HealthyThreshold"] = self.healthyThreshold!
            }
            if self.httpCheckMethod != nil {
                map["HttpCheckMethod"] = self.httpCheckMethod!
            }
            if self.unhealthyThreshold != nil {
                map["UnhealthyThreshold"] = self.unhealthyThreshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HealthCheckConnectPort") && dict["HealthCheckConnectPort"] != nil {
                self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
            }
            if dict.keys.contains("HealthCheckConnectTimeout") && dict["HealthCheckConnectTimeout"] != nil {
                self.healthCheckConnectTimeout = dict["HealthCheckConnectTimeout"] as! Int32
            }
            if dict.keys.contains("HealthCheckDomain") && dict["HealthCheckDomain"] != nil {
                self.healthCheckDomain = dict["HealthCheckDomain"] as! String
            }
            if dict.keys.contains("HealthCheckEnabled") && dict["HealthCheckEnabled"] != nil {
                self.healthCheckEnabled = dict["HealthCheckEnabled"] as! Bool
            }
            if dict.keys.contains("HealthCheckHttpCode") && dict["HealthCheckHttpCode"] != nil {
                self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! [String]
            }
            if dict.keys.contains("HealthCheckInterval") && dict["HealthCheckInterval"] != nil {
                self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
            }
            if dict.keys.contains("HealthCheckType") && dict["HealthCheckType"] != nil {
                self.healthCheckType = dict["HealthCheckType"] as! String
            }
            if dict.keys.contains("HealthCheckUrl") && dict["HealthCheckUrl"] != nil {
                self.healthCheckUrl = dict["HealthCheckUrl"] as! String
            }
            if dict.keys.contains("HealthyThreshold") && dict["HealthyThreshold"] != nil {
                self.healthyThreshold = dict["HealthyThreshold"] as! Int32
            }
            if dict.keys.contains("HttpCheckMethod") && dict["HttpCheckMethod"] != nil {
                self.httpCheckMethod = dict["HttpCheckMethod"] as! String
            }
            if dict.keys.contains("UnhealthyThreshold") && dict["UnhealthyThreshold"] != nil {
                self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
            }
        }
    }
    public var clientToken: String?

    public var connectionDrainEnabled: Bool?

    public var connectionDrainTimeout: Int32?

    public var dryRun: Bool?

    public var healthCheckConfig: UpdateServerGroupAttributeRequest.HealthCheckConfig?

    public var preserveClientIpEnabled: Bool?

    public var regionId: String?

    public var scheduler: String?

    public var serverGroupId: String?

    public var serverGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.healthCheckConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.connectionDrainEnabled != nil {
            map["ConnectionDrainEnabled"] = self.connectionDrainEnabled!
        }
        if self.connectionDrainTimeout != nil {
            map["ConnectionDrainTimeout"] = self.connectionDrainTimeout!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.healthCheckConfig != nil {
            map["HealthCheckConfig"] = self.healthCheckConfig?.toMap()
        }
        if self.preserveClientIpEnabled != nil {
            map["PreserveClientIpEnabled"] = self.preserveClientIpEnabled!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        if self.serverGroupName != nil {
            map["ServerGroupName"] = self.serverGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectionDrainEnabled") && dict["ConnectionDrainEnabled"] != nil {
            self.connectionDrainEnabled = dict["ConnectionDrainEnabled"] as! Bool
        }
        if dict.keys.contains("ConnectionDrainTimeout") && dict["ConnectionDrainTimeout"] != nil {
            self.connectionDrainTimeout = dict["ConnectionDrainTimeout"] as! Int32
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("HealthCheckConfig") && dict["HealthCheckConfig"] != nil {
            var model = UpdateServerGroupAttributeRequest.HealthCheckConfig()
            model.fromMap(dict["HealthCheckConfig"] as! [String: Any])
            self.healthCheckConfig = model
        }
        if dict.keys.contains("PreserveClientIpEnabled") && dict["PreserveClientIpEnabled"] != nil {
            self.preserveClientIpEnabled = dict["PreserveClientIpEnabled"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Scheduler") && dict["Scheduler"] != nil {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
        if dict.keys.contains("ServerGroupName") && dict["ServerGroupName"] != nil {
            self.serverGroupName = dict["ServerGroupName"] as! String
        }
    }
}

public class UpdateServerGroupAttributeResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public var serverGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
    }
}

public class UpdateServerGroupAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServerGroupAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateServerGroupAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateServerGroupServersAttributeRequest : Tea.TeaModel {
    public class Servers : Tea.TeaModel {
        public var description_: String?

        public var port: Int32?

        public var serverId: String?

        public var serverIp: String?

        public var serverType: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.serverId != nil {
                map["ServerId"] = self.serverId!
            }
            if self.serverIp != nil {
                map["ServerIp"] = self.serverIp!
            }
            if self.serverType != nil {
                map["ServerType"] = self.serverType!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
                self.serverId = dict["ServerId"] as! String
            }
            if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
                self.serverIp = dict["ServerIp"] as! String
            }
            if dict.keys.contains("ServerType") && dict["ServerType"] != nil {
                self.serverType = dict["ServerType"] as! String
            }
            if dict.keys.contains("Weight") && dict["Weight"] != nil {
                self.weight = dict["Weight"] as! Int32
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var serverGroupId: String?

    public var servers: [UpdateServerGroupServersAttributeRequest.Servers]?

    public override init() {
        super.init()
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
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        if self.servers != nil {
            var tmp : [Any] = []
            for k in self.servers! {
                tmp.append(k.toMap())
            }
            map["Servers"] = tmp
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
        if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
        if dict.keys.contains("Servers") && dict["Servers"] != nil {
            var tmp : [UpdateServerGroupServersAttributeRequest.Servers] = []
            for v in dict["Servers"] as! [Any] {
                var model = UpdateServerGroupServersAttributeRequest.Servers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.servers = tmp
        }
    }
}

public class UpdateServerGroupServersAttributeResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public var serverGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerGroupId") && dict["ServerGroupId"] != nil {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
    }
}

public class UpdateServerGroupServersAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServerGroupServersAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateServerGroupServersAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
