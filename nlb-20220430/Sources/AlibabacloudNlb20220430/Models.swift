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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["ServerId"] as? String {
                self.serverId = value
            }
            if let value = dict["ServerIp"] as? String {
                self.serverIp = value
            }
            if let value = dict["ServerType"] as? String {
                self.serverType = value
            }
            if let value = dict["Weight"] as? Int32 {
                self.weight = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
        }
        if let value = dict["Servers"] as? [Any?] {
            var tmp : [AddServersToServerGroupRequest.Servers] = []
            for v in value {
                if v != nil {
                    var model = AddServersToServerGroupRequest.Servers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddServersToServerGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalCertificateIds"] as? [String] {
            self.additionalCertificateIds = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AssociateAdditionalCertificatesWithListenerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BandwidthPackageId"] as? String {
            self.bandwidthPackageId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachCommonBandwidthPackageToLoadBalancerResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ZoneMappings"] as? [Any?] {
            var tmp : [CancelShiftLoadBalancerZonesRequest.ZoneMappings] = []
            for v in value {
                if v != nil {
                    var model = CancelShiftLoadBalancerZonesRequest.ZoneMappings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CancelShiftLoadBalancerZonesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateListenerRequest : Tea.TeaModel {
    public class ProxyProtocolV2Config : Tea.TeaModel {
        public var ppv2PrivateLinkEpIdEnabled: Bool?

        public var ppv2PrivateLinkEpsIdEnabled: Bool?

        public var ppv2VpcIdEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ppv2PrivateLinkEpIdEnabled != nil {
                map["Ppv2PrivateLinkEpIdEnabled"] = self.ppv2PrivateLinkEpIdEnabled!
            }
            if self.ppv2PrivateLinkEpsIdEnabled != nil {
                map["Ppv2PrivateLinkEpsIdEnabled"] = self.ppv2PrivateLinkEpsIdEnabled!
            }
            if self.ppv2VpcIdEnabled != nil {
                map["Ppv2VpcIdEnabled"] = self.ppv2VpcIdEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ppv2PrivateLinkEpIdEnabled"] as? Bool {
                self.ppv2PrivateLinkEpIdEnabled = value
            }
            if let value = dict["Ppv2PrivateLinkEpsIdEnabled"] as? Bool {
                self.ppv2PrivateLinkEpsIdEnabled = value
            }
            if let value = dict["Ppv2VpcIdEnabled"] as? Bool {
                self.ppv2VpcIdEnabled = value
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

    public var proxyProtocolV2Config: CreateListenerRequest.ProxyProtocolV2Config?

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
        try self.proxyProtocolV2Config?.validate()
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
        if self.proxyProtocolV2Config != nil {
            map["ProxyProtocolV2Config"] = self.proxyProtocolV2Config?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlpnEnabled"] as? Bool {
            self.alpnEnabled = value
        }
        if let value = dict["AlpnPolicy"] as? String {
            self.alpnPolicy = value
        }
        if let value = dict["CaCertificateIds"] as? [String] {
            self.caCertificateIds = value
        }
        if let value = dict["CaEnabled"] as? Bool {
            self.caEnabled = value
        }
        if let value = dict["CertificateIds"] as? [String] {
            self.certificateIds = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Cps"] as? Int32 {
            self.cps = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndPort"] as? Int32 {
            self.endPort = value
        }
        if let value = dict["IdleTimeout"] as? Int32 {
            self.idleTimeout = value
        }
        if let value = dict["ListenerDescription"] as? String {
            self.listenerDescription = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["Mss"] as? Int32 {
            self.mss = value
        }
        if let value = dict["ProxyProtocolEnabled"] as? Bool {
            self.proxyProtocolEnabled = value
        }
        if let value = dict["ProxyProtocolV2Config"] as? [String: Any?] {
            var model = CreateListenerRequest.ProxyProtocolV2Config()
            model.fromMap(value)
            self.proxyProtocolV2Config = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecSensorEnabled"] as? Bool {
            self.secSensorEnabled = value
        }
        if let value = dict["SecurityPolicyId"] as? String {
            self.securityPolicyId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
        }
        if let value = dict["StartPort"] as? Int32 {
            self.startPort = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateListenerRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateListenerRequest.Tag()
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

public class CreateListenerShrinkRequest : Tea.TeaModel {
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

    public var proxyProtocolV2ConfigShrink: String?

    public var regionId: String?

    public var secSensorEnabled: Bool?

    public var securityPolicyId: String?

    public var serverGroupId: String?

    public var startPort: Int32?

    public var tag: [CreateListenerShrinkRequest.Tag]?

    public override init() {
        super.init()
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
        if self.proxyProtocolV2ConfigShrink != nil {
            map["ProxyProtocolV2Config"] = self.proxyProtocolV2ConfigShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlpnEnabled"] as? Bool {
            self.alpnEnabled = value
        }
        if let value = dict["AlpnPolicy"] as? String {
            self.alpnPolicy = value
        }
        if let value = dict["CaCertificateIds"] as? [String] {
            self.caCertificateIds = value
        }
        if let value = dict["CaEnabled"] as? Bool {
            self.caEnabled = value
        }
        if let value = dict["CertificateIds"] as? [String] {
            self.certificateIds = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Cps"] as? Int32 {
            self.cps = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndPort"] as? Int32 {
            self.endPort = value
        }
        if let value = dict["IdleTimeout"] as? Int32 {
            self.idleTimeout = value
        }
        if let value = dict["ListenerDescription"] as? String {
            self.listenerDescription = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["Mss"] as? Int32 {
            self.mss = value
        }
        if let value = dict["ProxyProtocolEnabled"] as? Bool {
            self.proxyProtocolEnabled = value
        }
        if let value = dict["ProxyProtocolV2Config"] as? String {
            self.proxyProtocolV2ConfigShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecSensorEnabled"] as? Bool {
            self.secSensorEnabled = value
        }
        if let value = dict["SecurityPolicyId"] as? String {
            self.securityPolicyId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
        }
        if let value = dict["StartPort"] as? Int32 {
            self.startPort = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateListenerShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateListenerShrinkRequest.Tag()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateListenerResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PayType"] as? String {
                self.payType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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
    public class ZoneMappings : Tea.TeaModel {
        public var allocationId: String?

        public var ipv4LocalAddresses: [String]?

        public var ipv6Address: String?

        public var ipv6LocalAddresses: [String]?

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
            if self.ipv4LocalAddresses != nil {
                map["Ipv4LocalAddresses"] = self.ipv4LocalAddresses!
            }
            if self.ipv6Address != nil {
                map["Ipv6Address"] = self.ipv6Address!
            }
            if self.ipv6LocalAddresses != nil {
                map["Ipv6LocalAddresses"] = self.ipv6LocalAddresses!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllocationId"] as? String {
                self.allocationId = value
            }
            if let value = dict["Ipv4LocalAddresses"] as? [String] {
                self.ipv4LocalAddresses = value
            }
            if let value = dict["Ipv6Address"] as? String {
                self.ipv6Address = value
            }
            if let value = dict["Ipv6LocalAddresses"] as? [String] {
                self.ipv6LocalAddresses = value
            }
            if let value = dict["PrivateIPv4Address"] as? String {
                self.privateIPv4Address = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIpVersion"] as? String {
            self.addressIpVersion = value
        }
        if let value = dict["AddressType"] as? String {
            self.addressType = value
        }
        if let value = dict["BandwidthPackageId"] as? String {
            self.bandwidthPackageId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeletionProtectionConfig"] as? [String: Any?] {
            var model = CreateLoadBalancerRequest.DeletionProtectionConfig()
            model.fromMap(value)
            self.deletionProtectionConfig = model
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerBillingConfig"] as? [String: Any?] {
            var model = CreateLoadBalancerRequest.LoadBalancerBillingConfig()
            model.fromMap(value)
            self.loadBalancerBillingConfig = model
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
        }
        if let value = dict["LoadBalancerType"] as? String {
            self.loadBalancerType = value
        }
        if let value = dict["ModificationProtectionConfig"] as? [String: Any?] {
            var model = CreateLoadBalancerRequest.ModificationProtectionConfig()
            model.fromMap(value)
            self.modificationProtectionConfig = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateLoadBalancerRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateLoadBalancerRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneMappings"] as? [Any?] {
            var tmp : [CreateLoadBalancerRequest.ZoneMappings] = []
            for v in value {
                if v != nil {
                    var model = CreateLoadBalancerRequest.ZoneMappings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadbalancerId"] as? String {
            self.loadbalancerId = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateLoadBalancerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ciphers"] as? [String] {
            self.ciphers = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SecurityPolicyName"] as? String {
            self.securityPolicyName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateSecurityPolicyRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateSecurityPolicyRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TlsVersions"] as? [String] {
            self.tlsVersions = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityPolicyId"] as? String {
            self.securityPolicyId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSecurityPolicyResponseBody()
            model.fromMap(value)
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

        public var healthCheckExp: String?

        public var healthCheckHttpCode: [String]?

        public var healthCheckHttpVersion: String?

        public var healthCheckInterval: Int32?

        public var healthCheckReq: String?

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
            if self.healthCheckExp != nil {
                map["HealthCheckExp"] = self.healthCheckExp!
            }
            if self.healthCheckHttpCode != nil {
                map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
            }
            if self.healthCheckHttpVersion != nil {
                map["HealthCheckHttpVersion"] = self.healthCheckHttpVersion!
            }
            if self.healthCheckInterval != nil {
                map["HealthCheckInterval"] = self.healthCheckInterval!
            }
            if self.healthCheckReq != nil {
                map["HealthCheckReq"] = self.healthCheckReq!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HealthCheckConnectPort"] as? Int32 {
                self.healthCheckConnectPort = value
            }
            if let value = dict["HealthCheckConnectTimeout"] as? Int32 {
                self.healthCheckConnectTimeout = value
            }
            if let value = dict["HealthCheckDomain"] as? String {
                self.healthCheckDomain = value
            }
            if let value = dict["HealthCheckEnabled"] as? Bool {
                self.healthCheckEnabled = value
            }
            if let value = dict["HealthCheckExp"] as? String {
                self.healthCheckExp = value
            }
            if let value = dict["HealthCheckHttpCode"] as? [String] {
                self.healthCheckHttpCode = value
            }
            if let value = dict["HealthCheckHttpVersion"] as? String {
                self.healthCheckHttpVersion = value
            }
            if let value = dict["HealthCheckInterval"] as? Int32 {
                self.healthCheckInterval = value
            }
            if let value = dict["HealthCheckReq"] as? String {
                self.healthCheckReq = value
            }
            if let value = dict["HealthCheckType"] as? String {
                self.healthCheckType = value
            }
            if let value = dict["HealthCheckUrl"] as? String {
                self.healthCheckUrl = value
            }
            if let value = dict["HealthyThreshold"] as? Int32 {
                self.healthyThreshold = value
            }
            if let value = dict["HttpCheckMethod"] as? String {
                self.httpCheckMethod = value
            }
            if let value = dict["UnhealthyThreshold"] as? Int32 {
                self.unhealthyThreshold = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIPVersion"] as? String {
            self.addressIPVersion = value
        }
        if let value = dict["AnyPortEnabled"] as? Bool {
            self.anyPortEnabled = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConnectionDrainEnabled"] as? Bool {
            self.connectionDrainEnabled = value
        }
        if let value = dict["ConnectionDrainTimeout"] as? Int32 {
            self.connectionDrainTimeout = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["HealthCheckConfig"] as? [String: Any?] {
            var model = CreateServerGroupRequest.HealthCheckConfig()
            model.fromMap(value)
            self.healthCheckConfig = model
        }
        if let value = dict["PreserveClientIpEnabled"] as? Bool {
            self.preserveClientIpEnabled = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["ServerGroupName"] as? String {
            self.serverGroupName = value
        }
        if let value = dict["ServerGroupType"] as? String {
            self.serverGroupType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateServerGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateServerGroupRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateServerGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteListenerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteLoadBalancerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityPolicyId"] as? String {
            self.securityPolicyId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteSecurityPolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteServerGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeHdMonitorRegionConfigRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeHdMonitorRegionConfigResponseBody : Tea.TeaModel {
    public var logProject: String?

    public var metricStore: String?

    public var regionId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logProject != nil {
            map["LogProject"] = self.logProject!
        }
        if self.metricStore != nil {
            map["MetricStore"] = self.metricStore!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogProject"] as? String {
            self.logProject = value
        }
        if let value = dict["MetricStore"] as? String {
            self.metricStore = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeHdMonitorRegionConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHdMonitorRegionConfigResponseBody?

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
            var model = DescribeHdMonitorRegionConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BandwidthPackageId"] as? String {
            self.bandwidthPackageId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachCommonBandwidthPackageFromLoadBalancerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableLoadBalancerIpv6InternetResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalCertificateIds"] as? [String] {
            self.additionalCertificateIds = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisassociateAdditionalCertificatesWithListenerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableLoadBalancerIpv6InternetResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetJobStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetListenerAttributeResponseBody : Tea.TeaModel {
    public class ProxyProtocolV2Config : Tea.TeaModel {
        public var ppv2PrivateLinkEpIdEnabled: Bool?

        public var ppv2PrivateLinkEpsIdEnabled: Bool?

        public var ppv2VpcIdEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ppv2PrivateLinkEpIdEnabled != nil {
                map["Ppv2PrivateLinkEpIdEnabled"] = self.ppv2PrivateLinkEpIdEnabled!
            }
            if self.ppv2PrivateLinkEpsIdEnabled != nil {
                map["Ppv2PrivateLinkEpsIdEnabled"] = self.ppv2PrivateLinkEpsIdEnabled!
            }
            if self.ppv2VpcIdEnabled != nil {
                map["Ppv2VpcIdEnabled"] = self.ppv2VpcIdEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ppv2PrivateLinkEpIdEnabled"] as? Bool {
                self.ppv2PrivateLinkEpIdEnabled = value
            }
            if let value = dict["Ppv2PrivateLinkEpsIdEnabled"] as? Bool {
                self.ppv2PrivateLinkEpsIdEnabled = value
            }
            if let value = dict["Ppv2VpcIdEnabled"] as? Bool {
                self.ppv2VpcIdEnabled = value
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

    public var proxyProtocolV2Config: GetListenerAttributeResponseBody.ProxyProtocolV2Config?

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
        try self.proxyProtocolV2Config?.validate()
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
        if self.proxyProtocolV2Config != nil {
            map["ProxyProtocolV2Config"] = self.proxyProtocolV2Config?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlpnEnabled"] as? Bool {
            self.alpnEnabled = value
        }
        if let value = dict["AlpnPolicy"] as? String {
            self.alpnPolicy = value
        }
        if let value = dict["CaCertificateIds"] as? [String] {
            self.caCertificateIds = value
        }
        if let value = dict["CaEnabled"] as? Bool {
            self.caEnabled = value
        }
        if let value = dict["CertificateIds"] as? [String] {
            self.certificateIds = value
        }
        if let value = dict["Cps"] as? Int32 {
            self.cps = value
        }
        if let value = dict["EndPort"] as? String {
            self.endPort = value
        }
        if let value = dict["IdleTimeout"] as? Int32 {
            self.idleTimeout = value
        }
        if let value = dict["ListenerDescription"] as? String {
            self.listenerDescription = value
        }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["ListenerStatus"] as? String {
            self.listenerStatus = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["Mss"] as? Int32 {
            self.mss = value
        }
        if let value = dict["ProxyProtocolEnabled"] as? Bool {
            self.proxyProtocolEnabled = value
        }
        if let value = dict["ProxyProtocolV2Config"] as? [String: Any?] {
            var model = GetListenerAttributeResponseBody.ProxyProtocolV2Config()
            model.fromMap(value)
            self.proxyProtocolV2Config = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecSensorEnabled"] as? Bool {
            self.secSensorEnabled = value
        }
        if let value = dict["SecurityPolicyId"] as? String {
            self.securityPolicyId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
        }
        if let value = dict["StartPort"] as? String {
            self.startPort = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetListenerAttributeResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetListenerAttributeResponseBody.Tags()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetListenerAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetListenerHealthStatusRequest : Tea.TeaModel {
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
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ReasonCode"] as? String {
                            self.reasonCode = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Port"] as? Int32 {
                        self.port = value
                    }
                    if let value = dict["Reason"] as? [String: Any?] {
                        var model = GetListenerHealthStatusResponseBody.ListenerHealthStatus.ServerGroupInfos.NonNormalServers.Reason()
                        model.fromMap(value)
                        self.reason = model
                    }
                    if let value = dict["ServerId"] as? String {
                        self.serverId = value
                    }
                    if let value = dict["ServerIp"] as? String {
                        self.serverIp = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HeathCheckEnabled"] as? Bool {
                    self.heathCheckEnabled = value
                }
                if let value = dict["NonNormalServers"] as? [Any?] {
                    var tmp : [GetListenerHealthStatusResponseBody.ListenerHealthStatus.ServerGroupInfos.NonNormalServers] = []
                    for v in value {
                        if v != nil {
                            var model = GetListenerHealthStatusResponseBody.ListenerHealthStatus.ServerGroupInfos.NonNormalServers()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.nonNormalServers = tmp
                }
                if let value = dict["ServerGroupId"] as? String {
                    self.serverGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ListenerId"] as? String {
                self.listenerId = value
            }
            if let value = dict["ListenerPort"] as? Int32 {
                self.listenerPort = value
            }
            if let value = dict["ListenerProtocol"] as? String {
                self.listenerProtocol = value
            }
            if let value = dict["ServerGroupInfos"] as? [Any?] {
                var tmp : [GetListenerHealthStatusResponseBody.ListenerHealthStatus.ServerGroupInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetListenerHealthStatusResponseBody.ListenerHealthStatus.ServerGroupInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerHealthStatus"] as? [Any?] {
            var tmp : [GetListenerHealthStatusResponseBody.ListenerHealthStatus] = []
            for v in value {
                if v != nil {
                    var model = GetListenerHealthStatusResponseBody.ListenerHealthStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.listenerHealthStatus = tmp
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetListenerHealthStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["EnabledTime"] as? String {
                self.enabledTime = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PayType"] as? String {
                self.payType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnabledTime"] as? String {
                self.enabledTime = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LockReason"] as? String {
                self.lockReason = value
            }
            if let value = dict["LockType"] as? String {
                self.lockType = value
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
    public class ZoneMappings : Tea.TeaModel {
        public class LoadBalancerAddresses : Tea.TeaModel {
            public var allocationId: String?

            public var eniId: String?

            public var ipv4LocalAddresses: [String]?

            public var ipv6Address: String?

            public var ipv6LocalAddresses: [String]?

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
                if self.ipv4LocalAddresses != nil {
                    map["Ipv4LocalAddresses"] = self.ipv4LocalAddresses!
                }
                if self.ipv6Address != nil {
                    map["Ipv6Address"] = self.ipv6Address!
                }
                if self.ipv6LocalAddresses != nil {
                    map["Ipv6LocalAddresses"] = self.ipv6LocalAddresses!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllocationId"] as? String {
                    self.allocationId = value
                }
                if let value = dict["EniId"] as? String {
                    self.eniId = value
                }
                if let value = dict["Ipv4LocalAddresses"] as? [String] {
                    self.ipv4LocalAddresses = value
                }
                if let value = dict["Ipv6Address"] as? String {
                    self.ipv6Address = value
                }
                if let value = dict["Ipv6LocalAddresses"] as? [String] {
                    self.ipv6LocalAddresses = value
                }
                if let value = dict["PrivateIPv4Address"] as? String {
                    self.privateIPv4Address = value
                }
                if let value = dict["PrivateIPv4HcStatus"] as? String {
                    self.privateIPv4HcStatus = value
                }
                if let value = dict["PrivateIPv6HcStatus"] as? String {
                    self.privateIPv6HcStatus = value
                }
                if let value = dict["PublicIPv4Address"] as? String {
                    self.publicIPv4Address = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LoadBalancerAddresses"] as? [Any?] {
                var tmp : [GetLoadBalancerAttributeResponseBody.ZoneMappings.LoadBalancerAddresses] = []
                for v in value {
                    if v != nil {
                        var model = GetLoadBalancerAttributeResponseBody.ZoneMappings.LoadBalancerAddresses()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.loadBalancerAddresses = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIpVersion"] as? String {
            self.addressIpVersion = value
        }
        if let value = dict["AddressType"] as? String {
            self.addressType = value
        }
        if let value = dict["BandwidthPackageId"] as? String {
            self.bandwidthPackageId = value
        }
        if let value = dict["Cps"] as? Int32 {
            self.cps = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CrossZoneEnabled"] as? Bool {
            self.crossZoneEnabled = value
        }
        if let value = dict["DNSName"] as? String {
            self.DNSName = value
        }
        if let value = dict["DeletionProtectionConfig"] as? [String: Any?] {
            var model = GetLoadBalancerAttributeResponseBody.DeletionProtectionConfig()
            model.fromMap(value)
            self.deletionProtectionConfig = model
        }
        if let value = dict["Ipv6AddressType"] as? String {
            self.ipv6AddressType = value
        }
        if let value = dict["LoadBalancerBillingConfig"] as? [String: Any?] {
            var model = GetLoadBalancerAttributeResponseBody.LoadBalancerBillingConfig()
            model.fromMap(value)
            self.loadBalancerBillingConfig = model
        }
        if let value = dict["LoadBalancerBusinessStatus"] as? String {
            self.loadBalancerBusinessStatus = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
        }
        if let value = dict["LoadBalancerStatus"] as? String {
            self.loadBalancerStatus = value
        }
        if let value = dict["LoadBalancerType"] as? String {
            self.loadBalancerType = value
        }
        if let value = dict["ModificationProtectionConfig"] as? [String: Any?] {
            var model = GetLoadBalancerAttributeResponseBody.ModificationProtectionConfig()
            model.fromMap(value)
            self.modificationProtectionConfig = model
        }
        if let value = dict["OperationLocks"] as? [Any?] {
            var tmp : [GetLoadBalancerAttributeResponseBody.OperationLocks] = []
            for v in value {
                if v != nil {
                    var model = GetLoadBalancerAttributeResponseBody.OperationLocks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.operationLocks = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SecurityGroupIds"] as? [String] {
            self.securityGroupIds = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetLoadBalancerAttributeResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetLoadBalancerAttributeResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneMappings"] as? [Any?] {
            var tmp : [GetLoadBalancerAttributeResponseBody.ZoneMappings] = []
            for v in value {
                if v != nil {
                    var model = GetLoadBalancerAttributeResponseBody.ZoneMappings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetLoadBalancerAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAsynJobsRequest : Tea.TeaModel {
    public var jobIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobIds != nil {
            map["JobIds"] = self.jobIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobIds"] as? [String] {
            self.jobIds = value
        }
    }
}

public class ListAsynJobsResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public var id: String?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var jobs: [ListAsynJobsResponseBody.Jobs]?

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
        if self.jobs != nil {
            var tmp : [Any] = []
            for k in self.jobs! {
                tmp.append(k.toMap())
            }
            map["Jobs"] = tmp
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
        if let value = dict["Jobs"] as? [Any?] {
            var tmp : [ListAsynJobsResponseBody.Jobs] = []
            for v in value {
                if v != nil {
                    var model = ListAsynJobsResponseBody.Jobs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListAsynJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAsynJobsResponseBody?

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
            var model = ListAsynJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListListenerCertificatesRequest : Tea.TeaModel {
    public var certType: String?

    public var certificateIds: [String]?

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
        if self.certificateIds != nil {
            map["CertificateIds"] = self.certificateIds!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertType"] as? String {
            self.certType = value
        }
        if let value = dict["CertificateIds"] as? [String] {
            self.certificateIds = value
        }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertificateId"] as? String {
                self.certificateId = value
            }
            if let value = dict["CertificateType"] as? String {
                self.certificateType = value
            }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateIds"] as? [String] {
            self.certificateIds = value
        }
        if let value = dict["Certificates"] as? [Any?] {
            var tmp : [ListListenerCertificatesResponseBody.Certificates] = []
            for v in value {
                if v != nil {
                    var model = ListListenerCertificatesResponseBody.Certificates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificates = tmp
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListListenerCertificatesResponseBody()
            model.fromMap(value)
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
    public var listenerIds: [String]?

    public var listenerProtocol: String?

    public var loadBalancerIds: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var secSensorEnabled: String?

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
        if self.secSensorEnabled != nil {
            map["SecSensorEnabled"] = self.secSensorEnabled!
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
        if let value = dict["ListenerIds"] as? [String] {
            self.listenerIds = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["LoadBalancerIds"] as? [String] {
            self.loadBalancerIds = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecSensorEnabled"] as? String {
            self.secSensorEnabled = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListListenersRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListListenersRequest.Tag()
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

public class ListListenersResponseBody : Tea.TeaModel {
    public class Listeners : Tea.TeaModel {
        public class ProxyProtocolV2Config : Tea.TeaModel {
            public var ppv2PrivateLinkEpIdEnabled: Bool?

            public var ppv2PrivateLinkEpsIdEnabled: Bool?

            public var ppv2VpcIdEnabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ppv2PrivateLinkEpIdEnabled != nil {
                    map["Ppv2PrivateLinkEpIdEnabled"] = self.ppv2PrivateLinkEpIdEnabled!
                }
                if self.ppv2PrivateLinkEpsIdEnabled != nil {
                    map["Ppv2PrivateLinkEpsIdEnabled"] = self.ppv2PrivateLinkEpsIdEnabled!
                }
                if self.ppv2VpcIdEnabled != nil {
                    map["Ppv2VpcIdEnabled"] = self.ppv2VpcIdEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Ppv2PrivateLinkEpIdEnabled"] as? Bool {
                    self.ppv2PrivateLinkEpIdEnabled = value
                }
                if let value = dict["Ppv2PrivateLinkEpsIdEnabled"] as? Bool {
                    self.ppv2PrivateLinkEpsIdEnabled = value
                }
                if let value = dict["Ppv2VpcIdEnabled"] as? Bool {
                    self.ppv2VpcIdEnabled = value
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

        public var proxyProtocolV2Config: ListListenersResponseBody.Listeners.ProxyProtocolV2Config?

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
            try self.proxyProtocolV2Config?.validate()
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
            if self.proxyProtocolV2Config != nil {
                map["ProxyProtocolV2Config"] = self.proxyProtocolV2Config?.toMap()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlpnEnabled"] as? Bool {
                self.alpnEnabled = value
            }
            if let value = dict["AlpnPolicy"] as? String {
                self.alpnPolicy = value
            }
            if let value = dict["CaCertificateIds"] as? [String] {
                self.caCertificateIds = value
            }
            if let value = dict["CaEnabled"] as? Bool {
                self.caEnabled = value
            }
            if let value = dict["CertificateIds"] as? [String] {
                self.certificateIds = value
            }
            if let value = dict["Cps"] as? Int32 {
                self.cps = value
            }
            if let value = dict["EndPort"] as? String {
                self.endPort = value
            }
            if let value = dict["IdleTimeout"] as? Int32 {
                self.idleTimeout = value
            }
            if let value = dict["ListenerDescription"] as? String {
                self.listenerDescription = value
            }
            if let value = dict["ListenerId"] as? String {
                self.listenerId = value
            }
            if let value = dict["ListenerPort"] as? Int32 {
                self.listenerPort = value
            }
            if let value = dict["ListenerProtocol"] as? String {
                self.listenerProtocol = value
            }
            if let value = dict["ListenerStatus"] as? String {
                self.listenerStatus = value
            }
            if let value = dict["LoadBalancerId"] as? String {
                self.loadBalancerId = value
            }
            if let value = dict["Mss"] as? Int32 {
                self.mss = value
            }
            if let value = dict["ProxyProtocolEnabled"] as? Bool {
                self.proxyProtocolEnabled = value
            }
            if let value = dict["ProxyProtocolV2Config"] as? [String: Any?] {
                var model = ListListenersResponseBody.Listeners.ProxyProtocolV2Config()
                model.fromMap(value)
                self.proxyProtocolV2Config = model
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SecSensorEnabled"] as? Bool {
                self.secSensorEnabled = value
            }
            if let value = dict["SecurityPolicyId"] as? String {
                self.securityPolicyId = value
            }
            if let value = dict["ServerGroupId"] as? String {
                self.serverGroupId = value
            }
            if let value = dict["StartPort"] as? String {
                self.startPort = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListListenersResponseBody.Listeners.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListListenersResponseBody.Listeners.Tags()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Listeners"] as? [Any?] {
            var tmp : [ListListenersResponseBody.Listeners] = []
            for v in value {
                if v != nil {
                    var model = ListListenersResponseBody.Listeners()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.listeners = tmp
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListListenersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIpVersion"] as? String {
            self.addressIpVersion = value
        }
        if let value = dict["AddressType"] as? String {
            self.addressType = value
        }
        if let value = dict["DNSName"] as? String {
            self.DNSName = value
        }
        if let value = dict["Ipv6AddressType"] as? String {
            self.ipv6AddressType = value
        }
        if let value = dict["LoadBalancerBusinessStatus"] as? String {
            self.loadBalancerBusinessStatus = value
        }
        if let value = dict["LoadBalancerIds"] as? [String] {
            self.loadBalancerIds = value
        }
        if let value = dict["LoadBalancerNames"] as? [String] {
            self.loadBalancerNames = value
        }
        if let value = dict["LoadBalancerStatus"] as? String {
            self.loadBalancerStatus = value
        }
        if let value = dict["LoadBalancerType"] as? String {
            self.loadBalancerType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListLoadBalancersRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListLoadBalancersRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VpcIds"] as? [String] {
            self.vpcIds = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["EnabledTime"] as? String {
                    self.enabledTime = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PayType"] as? String {
                    self.payType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnabledTime"] as? String {
                    self.enabledTime = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LockReason"] as? String {
                    self.lockReason = value
                }
                if let value = dict["LockType"] as? String {
                    self.lockType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AllocationId"] as? String {
                        self.allocationId = value
                    }
                    if let value = dict["EniId"] as? String {
                        self.eniId = value
                    }
                    if let value = dict["Ipv6Address"] as? String {
                        self.ipv6Address = value
                    }
                    if let value = dict["PrivateIPv4Address"] as? String {
                        self.privateIPv4Address = value
                    }
                    if let value = dict["PrivateIPv4HcStatus"] as? String {
                        self.privateIPv4HcStatus = value
                    }
                    if let value = dict["PrivateIPv6HcStatus"] as? String {
                        self.privateIPv6HcStatus = value
                    }
                    if let value = dict["PublicIPv4Address"] as? String {
                        self.publicIPv4Address = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LoadBalancerAddresses"] as? [Any?] {
                    var tmp : [ListLoadBalancersResponseBody.LoadBalancers.ZoneMappings.LoadBalancerAddresses] = []
                    for v in value {
                        if v != nil {
                            var model = ListLoadBalancersResponseBody.LoadBalancers.ZoneMappings.LoadBalancerAddresses()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.loadBalancerAddresses = tmp
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddressIpVersion"] as? String {
                self.addressIpVersion = value
            }
            if let value = dict["AddressType"] as? String {
                self.addressType = value
            }
            if let value = dict["BandwidthPackageId"] as? String {
                self.bandwidthPackageId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CrossZoneEnabled"] as? Bool {
                self.crossZoneEnabled = value
            }
            if let value = dict["DNSName"] as? String {
                self.DNSName = value
            }
            if let value = dict["DeletionProtectionConfig"] as? [String: Any?] {
                var model = ListLoadBalancersResponseBody.LoadBalancers.DeletionProtectionConfig()
                model.fromMap(value)
                self.deletionProtectionConfig = model
            }
            if let value = dict["Ipv6AddressType"] as? String {
                self.ipv6AddressType = value
            }
            if let value = dict["LoadBalancerBillingConfig"] as? [String: Any?] {
                var model = ListLoadBalancersResponseBody.LoadBalancers.LoadBalancerBillingConfig()
                model.fromMap(value)
                self.loadBalancerBillingConfig = model
            }
            if let value = dict["LoadBalancerBusinessStatus"] as? String {
                self.loadBalancerBusinessStatus = value
            }
            if let value = dict["LoadBalancerId"] as? String {
                self.loadBalancerId = value
            }
            if let value = dict["LoadBalancerName"] as? String {
                self.loadBalancerName = value
            }
            if let value = dict["LoadBalancerStatus"] as? String {
                self.loadBalancerStatus = value
            }
            if let value = dict["LoadBalancerType"] as? String {
                self.loadBalancerType = value
            }
            if let value = dict["ModificationProtectionConfig"] as? [String: Any?] {
                var model = ListLoadBalancersResponseBody.LoadBalancers.ModificationProtectionConfig()
                model.fromMap(value)
                self.modificationProtectionConfig = model
            }
            if let value = dict["OperationLocks"] as? [Any?] {
                var tmp : [ListLoadBalancersResponseBody.LoadBalancers.OperationLocks] = []
                for v in value {
                    if v != nil {
                        var model = ListLoadBalancersResponseBody.LoadBalancers.OperationLocks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.operationLocks = tmp
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["SecurityGroupIds"] as? [String] {
                self.securityGroupIds = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListLoadBalancersResponseBody.LoadBalancers.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListLoadBalancersResponseBody.LoadBalancers.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneMappings"] as? [Any?] {
                var tmp : [ListLoadBalancersResponseBody.LoadBalancers.ZoneMappings] = []
                for v in value {
                    if v != nil {
                        var model = ListLoadBalancersResponseBody.LoadBalancers.ZoneMappings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancers"] as? [Any?] {
            var tmp : [ListLoadBalancersResponseBody.LoadBalancers] = []
            for v in value {
                if v != nil {
                    var model = ListLoadBalancersResponseBody.LoadBalancers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.loadBalancers = tmp
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListLoadBalancersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SecurityPolicyIds"] as? [String] {
            self.securityPolicyIds = value
        }
        if let value = dict["SecurityPolicyNames"] as? [String] {
            self.securityPolicyNames = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListSecurityPolicyRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListSecurityPolicyRequest.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ListenerId"] as? String {
                    self.listenerId = value
                }
                if let value = dict["ListenerPort"] as? Int64 {
                    self.listenerPort = value
                }
                if let value = dict["ListenerProtocol"] as? String {
                    self.listenerProtocol = value
                }
                if let value = dict["LoadBalancerId"] as? String {
                    self.loadBalancerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ciphers"] as? String {
                self.ciphers = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RelatedListeners"] as? [Any?] {
                var tmp : [ListSecurityPolicyResponseBody.SecurityPolicies.RelatedListeners] = []
                for v in value {
                    if v != nil {
                        var model = ListSecurityPolicyResponseBody.SecurityPolicies.RelatedListeners()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.relatedListeners = tmp
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["SecurityPolicyId"] as? String {
                self.securityPolicyId = value
            }
            if let value = dict["SecurityPolicyName"] as? String {
                self.securityPolicyName = value
            }
            if let value = dict["SecurityPolicyStatus"] as? String {
                self.securityPolicyStatus = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListSecurityPolicyResponseBody.SecurityPolicies.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListSecurityPolicyResponseBody.SecurityPolicies.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TlsVersion"] as? String {
                self.tlsVersion = value
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
        if let value = dict["SecurityPolicies"] as? [Any?] {
            var tmp : [ListSecurityPolicyResponseBody.SecurityPolicies] = []
            for v in value {
                if v != nil {
                    var model = ListSecurityPolicyResponseBody.SecurityPolicies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.securityPolicies = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSecurityPolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
        }
        if let value = dict["ServerIds"] as? [String] {
            self.serverIds = value
        }
        if let value = dict["ServerIps"] as? [String] {
            self.serverIps = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["ServerGroupId"] as? String {
                self.serverGroupId = value
            }
            if let value = dict["ServerId"] as? String {
                self.serverId = value
            }
            if let value = dict["ServerIp"] as? String {
                self.serverIp = value
            }
            if let value = dict["ServerType"] as? String {
                self.serverType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Weight"] as? Int32 {
                self.weight = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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
        if let value = dict["Servers"] as? [Any?] {
            var tmp : [ListServerGroupServersResponseBody.Servers] = []
            for v in value {
                if v != nil {
                    var model = ListServerGroupServersResponseBody.Servers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.servers = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListServerGroupServersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServerGroupIds"] as? [String] {
            self.serverGroupIds = value
        }
        if let value = dict["ServerGroupNames"] as? [String] {
            self.serverGroupNames = value
        }
        if let value = dict["ServerGroupType"] as? String {
            self.serverGroupType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListServerGroupsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListServerGroupsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
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

            public var healthCheckExp: String?

            public var healthCheckHttpCode: [String]?

            public var healthCheckHttpVersion: String?

            public var healthCheckInterval: Int32?

            public var healthCheckReq: String?

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
                if self.healthCheckExp != nil {
                    map["HealthCheckExp"] = self.healthCheckExp!
                }
                if self.healthCheckHttpCode != nil {
                    map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
                }
                if self.healthCheckHttpVersion != nil {
                    map["HealthCheckHttpVersion"] = self.healthCheckHttpVersion!
                }
                if self.healthCheckInterval != nil {
                    map["HealthCheckInterval"] = self.healthCheckInterval!
                }
                if self.healthCheckReq != nil {
                    map["HealthCheckReq"] = self.healthCheckReq!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HealthCheckConnectPort"] as? Int32 {
                    self.healthCheckConnectPort = value
                }
                if let value = dict["HealthCheckConnectTimeout"] as? Int32 {
                    self.healthCheckConnectTimeout = value
                }
                if let value = dict["HealthCheckDomain"] as? String {
                    self.healthCheckDomain = value
                }
                if let value = dict["HealthCheckEnabled"] as? Bool {
                    self.healthCheckEnabled = value
                }
                if let value = dict["HealthCheckExp"] as? String {
                    self.healthCheckExp = value
                }
                if let value = dict["HealthCheckHttpCode"] as? [String] {
                    self.healthCheckHttpCode = value
                }
                if let value = dict["HealthCheckHttpVersion"] as? String {
                    self.healthCheckHttpVersion = value
                }
                if let value = dict["HealthCheckInterval"] as? Int32 {
                    self.healthCheckInterval = value
                }
                if let value = dict["HealthCheckReq"] as? String {
                    self.healthCheckReq = value
                }
                if let value = dict["HealthCheckType"] as? String {
                    self.healthCheckType = value
                }
                if let value = dict["HealthCheckUrl"] as? String {
                    self.healthCheckUrl = value
                }
                if let value = dict["HealthyThreshold"] as? Int32 {
                    self.healthyThreshold = value
                }
                if let value = dict["HttpCheckMethod"] as? String {
                    self.httpCheckMethod = value
                }
                if let value = dict["UnhealthyThreshold"] as? Int32 {
                    self.unhealthyThreshold = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddressIPVersion"] as? String {
                self.addressIPVersion = value
            }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["AnyPortEnabled"] as? Bool {
                self.anyPortEnabled = value
            }
            if let value = dict["ConnectionDrainEnabled"] as? Bool {
                self.connectionDrainEnabled = value
            }
            if let value = dict["ConnectionDrainTimeout"] as? Int32 {
                self.connectionDrainTimeout = value
            }
            if let value = dict["HealthCheck"] as? [String: Any?] {
                var model = ListServerGroupsResponseBody.ServerGroups.HealthCheck()
                model.fromMap(value)
                self.healthCheck = model
            }
            if let value = dict["PreserveClientIpEnabled"] as? Bool {
                self.preserveClientIpEnabled = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RelatedLoadBalancerIds"] as? [String] {
                self.relatedLoadBalancerIds = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Scheduler"] as? String {
                self.scheduler = value
            }
            if let value = dict["ServerCount"] as? Int32 {
                self.serverCount = value
            }
            if let value = dict["ServerGroupId"] as? String {
                self.serverGroupId = value
            }
            if let value = dict["ServerGroupName"] as? String {
                self.serverGroupName = value
            }
            if let value = dict["ServerGroupStatus"] as? String {
                self.serverGroupStatus = value
            }
            if let value = dict["ServerGroupType"] as? String {
                self.serverGroupType = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListServerGroupsResponseBody.ServerGroups.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListServerGroupsResponseBody.ServerGroups.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
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
        if let value = dict["ServerGroups"] as? [Any?] {
            var tmp : [ListServerGroupsResponseBody.ServerGroups] = []
            for v in value {
                if v != nil {
                    var model = ListServerGroupsResponseBody.ServerGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serverGroups = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListServerGroupsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ciphers"] as? String {
                self.ciphers = value
            }
            if let value = dict["SecurityPolicyId"] as? String {
                self.securityPolicyId = value
            }
            if let value = dict["SecurityPolicyName"] as? String {
                self.securityPolicyName = value
            }
            if let value = dict["TlsVersion"] as? String {
                self.tlsVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityPolicies"] as? [Any?] {
            var tmp : [ListSystemSecurityPolicyResponseBody.SecurityPolicies] = []
            for v in value {
                if v != nil {
                    var model = ListSystemSecurityPolicyResponseBody.SecurityPolicies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSystemSecurityPolicyResponseBody()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["RegionNo"] as? String {
                self.regionNo = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Scope"] as? String {
                self.scope = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityGroupIds"] as? [String] {
            self.securityGroupIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = LoadBalancerJoinSecurityGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityGroupIds"] as? [String] {
            self.securityGroupIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = LoadBalancerLeaveSecurityGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = MoveResourceGroupResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["ServerId"] as? String {
                self.serverId = value
            }
            if let value = dict["ServerIp"] as? String {
                self.serverIp = value
            }
            if let value = dict["ServerType"] as? String {
                self.serverType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
        }
        if let value = dict["Servers"] as? [Any?] {
            var tmp : [RemoveServersFromServerGroupRequest.Servers] = []
            for v in value {
                if v != nil {
                    var model = RemoveServersFromServerGroupRequest.Servers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveServersFromServerGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetHdMonitorRegionConfigRequest : Tea.TeaModel {
    public var logProject: String?

    public var metricStore: String?

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
        if self.logProject != nil {
            map["LogProject"] = self.logProject!
        }
        if self.metricStore != nil {
            map["MetricStore"] = self.metricStore!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogProject"] as? String {
            self.logProject = value
        }
        if let value = dict["MetricStore"] as? String {
            self.metricStore = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class SetHdMonitorRegionConfigResponseBody : Tea.TeaModel {
    public var logProject: String?

    public var metricStore: String?

    public var regionId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logProject != nil {
            map["LogProject"] = self.logProject!
        }
        if self.metricStore != nil {
            map["MetricStore"] = self.metricStore!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogProject"] as? String {
            self.logProject = value
        }
        if let value = dict["MetricStore"] as? String {
            self.metricStore = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SetHdMonitorRegionConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetHdMonitorRegionConfigResponseBody?

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
            var model = SetHdMonitorRegionConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartListenerResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ZoneMappings"] as? [Any?] {
            var tmp : [StartShiftLoadBalancerZonesRequest.ZoneMappings] = []
            for v in value {
                if v != nil {
                    var model = StartShiftLoadBalancerZonesRequest.ZoneMappings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartShiftLoadBalancerZonesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopListenerResponseBody()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
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

public class UpdateListenerAttributeRequest : Tea.TeaModel {
    public class ProxyProtocolV2Config : Tea.TeaModel {
        public var ppv2PrivateLinkEpIdEnabled: Bool?

        public var ppv2PrivateLinkEpsIdEnabled: Bool?

        public var ppv2VpcIdEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ppv2PrivateLinkEpIdEnabled != nil {
                map["Ppv2PrivateLinkEpIdEnabled"] = self.ppv2PrivateLinkEpIdEnabled!
            }
            if self.ppv2PrivateLinkEpsIdEnabled != nil {
                map["Ppv2PrivateLinkEpsIdEnabled"] = self.ppv2PrivateLinkEpsIdEnabled!
            }
            if self.ppv2VpcIdEnabled != nil {
                map["Ppv2VpcIdEnabled"] = self.ppv2VpcIdEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ppv2PrivateLinkEpIdEnabled"] as? Bool {
                self.ppv2PrivateLinkEpIdEnabled = value
            }
            if let value = dict["Ppv2PrivateLinkEpsIdEnabled"] as? Bool {
                self.ppv2PrivateLinkEpsIdEnabled = value
            }
            if let value = dict["Ppv2VpcIdEnabled"] as? Bool {
                self.ppv2VpcIdEnabled = value
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

    public var idleTimeout: Int32?

    public var listenerDescription: String?

    public var listenerId: String?

    public var mss: Int32?

    public var proxyProtocolEnabled: Bool?

    public var proxyProtocolV2Config: UpdateListenerAttributeRequest.ProxyProtocolV2Config?

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
        try self.proxyProtocolV2Config?.validate()
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
        if self.proxyProtocolV2Config != nil {
            map["ProxyProtocolV2Config"] = self.proxyProtocolV2Config?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlpnEnabled"] as? Bool {
            self.alpnEnabled = value
        }
        if let value = dict["AlpnPolicy"] as? String {
            self.alpnPolicy = value
        }
        if let value = dict["CaCertificateIds"] as? [String] {
            self.caCertificateIds = value
        }
        if let value = dict["CaEnabled"] as? Bool {
            self.caEnabled = value
        }
        if let value = dict["CertificateIds"] as? [String] {
            self.certificateIds = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Cps"] as? Int32 {
            self.cps = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["IdleTimeout"] as? Int32 {
            self.idleTimeout = value
        }
        if let value = dict["ListenerDescription"] as? String {
            self.listenerDescription = value
        }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
        if let value = dict["Mss"] as? Int32 {
            self.mss = value
        }
        if let value = dict["ProxyProtocolEnabled"] as? Bool {
            self.proxyProtocolEnabled = value
        }
        if let value = dict["ProxyProtocolV2Config"] as? [String: Any?] {
            var model = UpdateListenerAttributeRequest.ProxyProtocolV2Config()
            model.fromMap(value)
            self.proxyProtocolV2Config = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecSensorEnabled"] as? Bool {
            self.secSensorEnabled = value
        }
        if let value = dict["SecurityPolicyId"] as? String {
            self.securityPolicyId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
        }
    }
}

public class UpdateListenerAttributeShrinkRequest : Tea.TeaModel {
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

    public var proxyProtocolV2ConfigShrink: String?

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
        if self.proxyProtocolV2ConfigShrink != nil {
            map["ProxyProtocolV2Config"] = self.proxyProtocolV2ConfigShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlpnEnabled"] as? Bool {
            self.alpnEnabled = value
        }
        if let value = dict["AlpnPolicy"] as? String {
            self.alpnPolicy = value
        }
        if let value = dict["CaCertificateIds"] as? [String] {
            self.caCertificateIds = value
        }
        if let value = dict["CaEnabled"] as? Bool {
            self.caEnabled = value
        }
        if let value = dict["CertificateIds"] as? [String] {
            self.certificateIds = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Cps"] as? Int32 {
            self.cps = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["IdleTimeout"] as? Int32 {
            self.idleTimeout = value
        }
        if let value = dict["ListenerDescription"] as? String {
            self.listenerDescription = value
        }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
        if let value = dict["Mss"] as? Int32 {
            self.mss = value
        }
        if let value = dict["ProxyProtocolEnabled"] as? Bool {
            self.proxyProtocolEnabled = value
        }
        if let value = dict["ProxyProtocolV2Config"] as? String {
            self.proxyProtocolV2ConfigShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecSensorEnabled"] as? Bool {
            self.secSensorEnabled = value
        }
        if let value = dict["SecurityPolicyId"] as? String {
            self.securityPolicyId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateListenerAttributeResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllocationId"] as? String {
                self.allocationId = value
            }
            if let value = dict["EipType"] as? String {
                self.eipType = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressType"] as? String {
            self.addressType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ZoneMappings"] as? [Any?] {
            var tmp : [UpdateLoadBalancerAddressTypeConfigRequest.ZoneMappings] = []
            for v in value {
                if v != nil {
                    var model = UpdateLoadBalancerAddressTypeConfigRequest.ZoneMappings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateLoadBalancerAddressTypeConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Cps"] as? Int32 {
            self.cps = value
        }
        if let value = dict["CrossZoneEnabled"] as? Bool {
            self.crossZoneEnabled = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateLoadBalancerAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeletionProtectionEnabled"] as? Bool {
            self.deletionProtectionEnabled = value
        }
        if let value = dict["DeletionProtectionReason"] as? String {
            self.deletionProtectionReason = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["ModificationProtectionReason"] as? String {
            self.modificationProtectionReason = value
        }
        if let value = dict["ModificationProtectionStatus"] as? String {
            self.modificationProtectionStatus = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateLoadBalancerProtectionResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllocationId"] as? String {
                self.allocationId = value
            }
            if let value = dict["EipType"] as? String {
                self.eipType = value
            }
            if let value = dict["PrivateIPv4Address"] as? String {
                self.privateIPv4Address = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ZoneMappings"] as? [Any?] {
            var tmp : [UpdateLoadBalancerZonesRequest.ZoneMappings] = []
            for v in value {
                if v != nil {
                    var model = UpdateLoadBalancerZonesRequest.ZoneMappings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateLoadBalancerZonesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ciphers"] as? [String] {
            self.ciphers = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityPolicyId"] as? String {
            self.securityPolicyId = value
        }
        if let value = dict["SecurityPolicyName"] as? String {
            self.securityPolicyName = value
        }
        if let value = dict["TlsVersions"] as? [String] {
            self.tlsVersions = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityPolicyId"] as? String {
            self.securityPolicyId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateSecurityPolicyAttributeResponseBody()
            model.fromMap(value)
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

        public var healthCheckExp: String?

        public var healthCheckHttpCode: [String]?

        public var healthCheckHttpVersion: String?

        public var healthCheckInterval: Int32?

        public var healthCheckReq: String?

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
            if self.healthCheckExp != nil {
                map["HealthCheckExp"] = self.healthCheckExp!
            }
            if self.healthCheckHttpCode != nil {
                map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
            }
            if self.healthCheckHttpVersion != nil {
                map["HealthCheckHttpVersion"] = self.healthCheckHttpVersion!
            }
            if self.healthCheckInterval != nil {
                map["HealthCheckInterval"] = self.healthCheckInterval!
            }
            if self.healthCheckReq != nil {
                map["HealthCheckReq"] = self.healthCheckReq!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HealthCheckConnectPort"] as? Int32 {
                self.healthCheckConnectPort = value
            }
            if let value = dict["HealthCheckConnectTimeout"] as? Int32 {
                self.healthCheckConnectTimeout = value
            }
            if let value = dict["HealthCheckDomain"] as? String {
                self.healthCheckDomain = value
            }
            if let value = dict["HealthCheckEnabled"] as? Bool {
                self.healthCheckEnabled = value
            }
            if let value = dict["HealthCheckExp"] as? String {
                self.healthCheckExp = value
            }
            if let value = dict["HealthCheckHttpCode"] as? [String] {
                self.healthCheckHttpCode = value
            }
            if let value = dict["HealthCheckHttpVersion"] as? String {
                self.healthCheckHttpVersion = value
            }
            if let value = dict["HealthCheckInterval"] as? Int32 {
                self.healthCheckInterval = value
            }
            if let value = dict["HealthCheckReq"] as? String {
                self.healthCheckReq = value
            }
            if let value = dict["HealthCheckType"] as? String {
                self.healthCheckType = value
            }
            if let value = dict["HealthCheckUrl"] as? String {
                self.healthCheckUrl = value
            }
            if let value = dict["HealthyThreshold"] as? Int32 {
                self.healthyThreshold = value
            }
            if let value = dict["HttpCheckMethod"] as? String {
                self.httpCheckMethod = value
            }
            if let value = dict["UnhealthyThreshold"] as? Int32 {
                self.unhealthyThreshold = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConnectionDrainEnabled"] as? Bool {
            self.connectionDrainEnabled = value
        }
        if let value = dict["ConnectionDrainTimeout"] as? Int32 {
            self.connectionDrainTimeout = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["HealthCheckConfig"] as? [String: Any?] {
            var model = UpdateServerGroupAttributeRequest.HealthCheckConfig()
            model.fromMap(value)
            self.healthCheckConfig = model
        }
        if let value = dict["PreserveClientIpEnabled"] as? Bool {
            self.preserveClientIpEnabled = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
        }
        if let value = dict["ServerGroupName"] as? String {
            self.serverGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateServerGroupAttributeResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["ServerId"] as? String {
                self.serverId = value
            }
            if let value = dict["ServerIp"] as? String {
                self.serverIp = value
            }
            if let value = dict["ServerType"] as? String {
                self.serverType = value
            }
            if let value = dict["Weight"] as? Int32 {
                self.weight = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
        }
        if let value = dict["Servers"] as? [Any?] {
            var tmp : [UpdateServerGroupServersAttributeRequest.Servers] = []
            for v in value {
                if v != nil {
                    var model = UpdateServerGroupServersAttributeRequest.Servers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateServerGroupServersAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
