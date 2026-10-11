import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddIpAddressesToEgressProxyIpPoolRequest : Tea.TeaModel {
    public class ZoneMappings : Tea.TeaModel {
        public class IpAddresses : Tea.TeaModel {
            public var eipAllocationId: String?

            public var privateIpv4Address: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eipAllocationId != nil {
                    map["EipAllocationId"] = self.eipAllocationId!
                }
                if self.privateIpv4Address != nil {
                    map["PrivateIpv4Address"] = self.privateIpv4Address!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EipAllocationId"] as? String {
                    self.eipAllocationId = value
                }
                if let value = dict["PrivateIpv4Address"] as? String {
                    self.privateIpv4Address = value
                }
            }
        }
        public var ipAddresses: [AddIpAddressesToEgressProxyIpPoolRequest.ZoneMappings.IpAddresses]?

        public var ipCount: Int32?

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
            if self.ipAddresses != nil {
                var tmp : [Any] = []
                for k in self.ipAddresses! {
                    tmp.append(k.toMap())
                }
                map["IpAddresses"] = tmp
            }
            if self.ipCount != nil {
                map["IpCount"] = self.ipCount!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IpAddresses"] as? [Any?] {
                var tmp : [AddIpAddressesToEgressProxyIpPoolRequest.ZoneMappings.IpAddresses] = []
                for v in value {
                    if v != nil {
                        var model = AddIpAddressesToEgressProxyIpPoolRequest.ZoneMappings.IpAddresses()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ipAddresses = tmp
            }
            if let value = dict["IpCount"] as? Int32 {
                self.ipCount = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var egressProxyIpPoolId: String?

    public var zoneMappings: [AddIpAddressesToEgressProxyIpPoolRequest.ZoneMappings]?

    public override init() {
        super.init()
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
        if self.egressProxyIpPoolId != nil {
            map["EgressProxyIpPoolId"] = self.egressProxyIpPoolId!
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
        if let value = dict["EgressProxyIpPoolId"] as? String {
            self.egressProxyIpPoolId = value
        }
        if let value = dict["ZoneMappings"] as? [Any?] {
            var tmp : [AddIpAddressesToEgressProxyIpPoolRequest.ZoneMappings] = []
            for v in value {
                if v != nil {
                    var model = AddIpAddressesToEgressProxyIpPoolRequest.ZoneMappings()
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

public class AddIpAddressesToEgressProxyIpPoolResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AddIpAddressesToEgressProxyIpPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddIpAddressesToEgressProxyIpPoolResponseBody?

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
            var model = AddIpAddressesToEgressProxyIpPoolResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AttachEgressProxyRuleGroupsToConfigurationRequest : Tea.TeaModel {
    public class EgressProxyRuleGroups : Tea.TeaModel {
        public var egressProxyRuleGroupId: String?

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
            if self.egressProxyRuleGroupId != nil {
                map["EgressProxyRuleGroupId"] = self.egressProxyRuleGroupId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EgressProxyRuleGroupId"] as? String {
                self.egressProxyRuleGroupId = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var egressProxyConfigurationId: String?

    public var egressProxyRuleGroups: [AttachEgressProxyRuleGroupsToConfigurationRequest.EgressProxyRuleGroups]?

    public override init() {
        super.init()
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
        if self.egressProxyConfigurationId != nil {
            map["EgressProxyConfigurationId"] = self.egressProxyConfigurationId!
        }
        if self.egressProxyRuleGroups != nil {
            var tmp : [Any] = []
            for k in self.egressProxyRuleGroups! {
                tmp.append(k.toMap())
            }
            map["EgressProxyRuleGroups"] = tmp
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
        if let value = dict["EgressProxyConfigurationId"] as? String {
            self.egressProxyConfigurationId = value
        }
        if let value = dict["EgressProxyRuleGroups"] as? [Any?] {
            var tmp : [AttachEgressProxyRuleGroupsToConfigurationRequest.EgressProxyRuleGroups] = []
            for v in value {
                if v != nil {
                    var model = AttachEgressProxyRuleGroupsToConfigurationRequest.EgressProxyRuleGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.egressProxyRuleGroups = tmp
        }
    }
}

public class AttachEgressProxyRuleGroupsToConfigurationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AttachEgressProxyRuleGroupsToConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachEgressProxyRuleGroupsToConfigurationResponseBody?

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
            var model = AttachEgressProxyRuleGroupsToConfigurationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEgressProxyConfigurationRequest : Tea.TeaModel {
    public class DefaultRulePhaseActions : Tea.TeaModel {
        public var postResponse: String?

        public var preDns: String?

        public var preRequest: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.postResponse != nil {
                map["PostResponse"] = self.postResponse!
            }
            if self.preDns != nil {
                map["PreDns"] = self.preDns!
            }
            if self.preRequest != nil {
                map["PreRequest"] = self.preRequest!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PostResponse"] as? String {
                self.postResponse = value
            }
            if let value = dict["PreDns"] as? String {
                self.preDns = value
            }
            if let value = dict["PreRequest"] as? String {
                self.preRequest = value
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
    public var clientToken: String?

    public var defaultRulePhaseActions: CreateEgressProxyConfigurationRequest.DefaultRulePhaseActions?

    public var description_: String?

    public var dryRun: Bool?

    public var egressProxyConfigurationName: String?

    public var resourceGroupId: String?

    public var tag: [CreateEgressProxyConfigurationRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.defaultRulePhaseActions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.defaultRulePhaseActions != nil {
            map["DefaultRulePhaseActions"] = self.defaultRulePhaseActions?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.egressProxyConfigurationName != nil {
            map["EgressProxyConfigurationName"] = self.egressProxyConfigurationName!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DefaultRulePhaseActions"] as? [String: Any?] {
            var model = CreateEgressProxyConfigurationRequest.DefaultRulePhaseActions()
            model.fromMap(value)
            self.defaultRulePhaseActions = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EgressProxyConfigurationName"] as? String {
            self.egressProxyConfigurationName = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateEgressProxyConfigurationRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateEgressProxyConfigurationRequest.Tag()
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

public class CreateEgressProxyConfigurationResponseBody : Tea.TeaModel {
    public var egressProxyConfigurationId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.egressProxyConfigurationId != nil {
            map["EgressProxyConfigurationId"] = self.egressProxyConfigurationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EgressProxyConfigurationId"] as? String {
            self.egressProxyConfigurationId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateEgressProxyConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEgressProxyConfigurationResponseBody?

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
            var model = CreateEgressProxyConfigurationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEgressProxyGatewayRequest : Tea.TeaModel {
    public class ListenerProperties : Tea.TeaModel {
        public var port: Int32?

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
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
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
    public class TlsInterceptProperties : Tea.TeaModel {
        public var privateCaCertificateId: String?

        public var tlsInterceptMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.privateCaCertificateId != nil {
                map["PrivateCaCertificateId"] = self.privateCaCertificateId!
            }
            if self.tlsInterceptMode != nil {
                map["TlsInterceptMode"] = self.tlsInterceptMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PrivateCaCertificateId"] as? String {
                self.privateCaCertificateId = value
            }
            if let value = dict["TlsInterceptMode"] as? String {
                self.tlsInterceptMode = value
            }
        }
    }
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

    public var description_: String?

    public var dryRun: Bool?

    public var egressProxyConfigurationId: String?

    public var egressProxyGatewayName: String?

    public var listenerProperties: [CreateEgressProxyGatewayRequest.ListenerProperties]?

    public var resourceGroupId: String?

    public var tag: [CreateEgressProxyGatewayRequest.Tag]?

    public var tlsInterceptProperties: CreateEgressProxyGatewayRequest.TlsInterceptProperties?

    public var vpcId: String?

    public var zoneMappings: [CreateEgressProxyGatewayRequest.ZoneMappings]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tlsInterceptProperties?.validate()
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
        if self.egressProxyConfigurationId != nil {
            map["EgressProxyConfigurationId"] = self.egressProxyConfigurationId!
        }
        if self.egressProxyGatewayName != nil {
            map["EgressProxyGatewayName"] = self.egressProxyGatewayName!
        }
        if self.listenerProperties != nil {
            var tmp : [Any] = []
            for k in self.listenerProperties! {
                tmp.append(k.toMap())
            }
            map["ListenerProperties"] = tmp
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
        if self.tlsInterceptProperties != nil {
            map["TlsInterceptProperties"] = self.tlsInterceptProperties?.toMap()
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EgressProxyConfigurationId"] as? String {
            self.egressProxyConfigurationId = value
        }
        if let value = dict["EgressProxyGatewayName"] as? String {
            self.egressProxyGatewayName = value
        }
        if let value = dict["ListenerProperties"] as? [Any?] {
            var tmp : [CreateEgressProxyGatewayRequest.ListenerProperties] = []
            for v in value {
                if v != nil {
                    var model = CreateEgressProxyGatewayRequest.ListenerProperties()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.listenerProperties = tmp
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateEgressProxyGatewayRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateEgressProxyGatewayRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TlsInterceptProperties"] as? [String: Any?] {
            var model = CreateEgressProxyGatewayRequest.TlsInterceptProperties()
            model.fromMap(value)
            self.tlsInterceptProperties = model
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneMappings"] as? [Any?] {
            var tmp : [CreateEgressProxyGatewayRequest.ZoneMappings] = []
            for v in value {
                if v != nil {
                    var model = CreateEgressProxyGatewayRequest.ZoneMappings()
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

public class CreateEgressProxyGatewayResponseBody : Tea.TeaModel {
    public var egressProxyGatewayId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.egressProxyGatewayId != nil {
            map["EgressProxyGatewayId"] = self.egressProxyGatewayId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EgressProxyGatewayId"] as? String {
            self.egressProxyGatewayId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateEgressProxyGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEgressProxyGatewayResponseBody?

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
            var model = CreateEgressProxyGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEgressProxyIpPoolRequest : Tea.TeaModel {
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
        public class IpAddresses : Tea.TeaModel {
            public var eipAllocationId: String?

            public var privateIpv4Address: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eipAllocationId != nil {
                    map["EipAllocationId"] = self.eipAllocationId!
                }
                if self.privateIpv4Address != nil {
                    map["PrivateIpv4Address"] = self.privateIpv4Address!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EipAllocationId"] as? String {
                    self.eipAllocationId = value
                }
                if let value = dict["PrivateIpv4Address"] as? String {
                    self.privateIpv4Address = value
                }
            }
        }
        public var ipAddresses: [CreateEgressProxyIpPoolRequest.ZoneMappings.IpAddresses]?

        public var ipCount: Int32?

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
            if self.ipAddresses != nil {
                var tmp : [Any] = []
                for k in self.ipAddresses! {
                    tmp.append(k.toMap())
                }
                map["IpAddresses"] = tmp
            }
            if self.ipCount != nil {
                map["IpCount"] = self.ipCount!
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
            if let value = dict["IpAddresses"] as? [Any?] {
                var tmp : [CreateEgressProxyIpPoolRequest.ZoneMappings.IpAddresses] = []
                for v in value {
                    if v != nil {
                        var model = CreateEgressProxyIpPoolRequest.ZoneMappings.IpAddresses()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ipAddresses = tmp
            }
            if let value = dict["IpCount"] as? Int32 {
                self.ipCount = value
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

    public var description_: String?

    public var dryRun: Bool?

    public var egressProxyGatewayId: String?

    public var egressProxyIpPoolName: String?

    public var hashFactor: String?

    public var hashHeaderName: String?

    public var scheduler: String?

    public var tag: [CreateEgressProxyIpPoolRequest.Tag]?

    public var zoneMappings: [CreateEgressProxyIpPoolRequest.ZoneMappings]?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.egressProxyGatewayId != nil {
            map["EgressProxyGatewayId"] = self.egressProxyGatewayId!
        }
        if self.egressProxyIpPoolName != nil {
            map["EgressProxyIpPoolName"] = self.egressProxyIpPoolName!
        }
        if self.hashFactor != nil {
            map["HashFactor"] = self.hashFactor!
        }
        if self.hashHeaderName != nil {
            map["HashHeaderName"] = self.hashHeaderName!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
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
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EgressProxyGatewayId"] as? String {
            self.egressProxyGatewayId = value
        }
        if let value = dict["EgressProxyIpPoolName"] as? String {
            self.egressProxyIpPoolName = value
        }
        if let value = dict["HashFactor"] as? String {
            self.hashFactor = value
        }
        if let value = dict["HashHeaderName"] as? String {
            self.hashHeaderName = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateEgressProxyIpPoolRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateEgressProxyIpPoolRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["ZoneMappings"] as? [Any?] {
            var tmp : [CreateEgressProxyIpPoolRequest.ZoneMappings] = []
            for v in value {
                if v != nil {
                    var model = CreateEgressProxyIpPoolRequest.ZoneMappings()
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

public class CreateEgressProxyIpPoolResponseBody : Tea.TeaModel {
    public var egressProxyIpPoolId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.egressProxyIpPoolId != nil {
            map["EgressProxyIpPoolId"] = self.egressProxyIpPoolId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EgressProxyIpPoolId"] as? String {
            self.egressProxyIpPoolId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateEgressProxyIpPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEgressProxyIpPoolResponseBody?

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
            var model = CreateEgressProxyIpPoolResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEgressProxyRuleGroupRequest : Tea.TeaModel {
    public class EgressProxyRules : Tea.TeaModel {
        public class PostResponse : Tea.TeaModel {
            public class Conditions : Tea.TeaModel {
                public var conditionKey: String?

                public var conditionOperator: String?

                public var conditionValues: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.conditionKey != nil {
                        map["ConditionKey"] = self.conditionKey!
                    }
                    if self.conditionOperator != nil {
                        map["ConditionOperator"] = self.conditionOperator!
                    }
                    if self.conditionValues != nil {
                        map["ConditionValues"] = self.conditionValues!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConditionKey"] as? String {
                        self.conditionKey = value
                    }
                    if let value = dict["ConditionOperator"] as? String {
                        self.conditionOperator = value
                    }
                    if let value = dict["ConditionValues"] as? [String] {
                        self.conditionValues = value
                    }
                }
            }
            public var action: String?

            public var conditions: [CreateEgressProxyRuleGroupRequest.EgressProxyRules.PostResponse.Conditions]?

            public var description_: String?

            public var egressProxyRuleName: String?

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
                if self.conditions != nil {
                    var tmp : [Any] = []
                    for k in self.conditions! {
                        tmp.append(k.toMap())
                    }
                    map["Conditions"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.egressProxyRuleName != nil {
                    map["EgressProxyRuleName"] = self.egressProxyRuleName!
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
                if let value = dict["Conditions"] as? [Any?] {
                    var tmp : [CreateEgressProxyRuleGroupRequest.EgressProxyRules.PostResponse.Conditions] = []
                    for v in value {
                        if v != nil {
                            var model = CreateEgressProxyRuleGroupRequest.EgressProxyRules.PostResponse.Conditions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.conditions = tmp
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EgressProxyRuleName"] as? String {
                    self.egressProxyRuleName = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public class PreDns : Tea.TeaModel {
            public class Conditions : Tea.TeaModel {
                public var conditionKey: String?

                public var conditionOperator: String?

                public var conditionValues: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.conditionKey != nil {
                        map["ConditionKey"] = self.conditionKey!
                    }
                    if self.conditionOperator != nil {
                        map["ConditionOperator"] = self.conditionOperator!
                    }
                    if self.conditionValues != nil {
                        map["ConditionValues"] = self.conditionValues!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConditionKey"] as? String {
                        self.conditionKey = value
                    }
                    if let value = dict["ConditionOperator"] as? String {
                        self.conditionOperator = value
                    }
                    if let value = dict["ConditionValues"] as? [String] {
                        self.conditionValues = value
                    }
                }
            }
            public var action: String?

            public var conditions: [CreateEgressProxyRuleGroupRequest.EgressProxyRules.PreDns.Conditions]?

            public var description_: String?

            public var egressProxyRuleName: String?

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
                if self.conditions != nil {
                    var tmp : [Any] = []
                    for k in self.conditions! {
                        tmp.append(k.toMap())
                    }
                    map["Conditions"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.egressProxyRuleName != nil {
                    map["EgressProxyRuleName"] = self.egressProxyRuleName!
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
                if let value = dict["Conditions"] as? [Any?] {
                    var tmp : [CreateEgressProxyRuleGroupRequest.EgressProxyRules.PreDns.Conditions] = []
                    for v in value {
                        if v != nil {
                            var model = CreateEgressProxyRuleGroupRequest.EgressProxyRules.PreDns.Conditions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.conditions = tmp
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EgressProxyRuleName"] as? String {
                    self.egressProxyRuleName = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public class PreRequest : Tea.TeaModel {
            public class Conditions : Tea.TeaModel {
                public var conditionKey: String?

                public var conditionOperator: String?

                public var conditionValues: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.conditionKey != nil {
                        map["ConditionKey"] = self.conditionKey!
                    }
                    if self.conditionOperator != nil {
                        map["ConditionOperator"] = self.conditionOperator!
                    }
                    if self.conditionValues != nil {
                        map["ConditionValues"] = self.conditionValues!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConditionKey"] as? String {
                        self.conditionKey = value
                    }
                    if let value = dict["ConditionOperator"] as? String {
                        self.conditionOperator = value
                    }
                    if let value = dict["ConditionValues"] as? [String] {
                        self.conditionValues = value
                    }
                }
            }
            public var action: String?

            public var conditions: [CreateEgressProxyRuleGroupRequest.EgressProxyRules.PreRequest.Conditions]?

            public var description_: String?

            public var egressProxyRuleName: String?

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
                if self.conditions != nil {
                    var tmp : [Any] = []
                    for k in self.conditions! {
                        tmp.append(k.toMap())
                    }
                    map["Conditions"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.egressProxyRuleName != nil {
                    map["EgressProxyRuleName"] = self.egressProxyRuleName!
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
                if let value = dict["Conditions"] as? [Any?] {
                    var tmp : [CreateEgressProxyRuleGroupRequest.EgressProxyRules.PreRequest.Conditions] = []
                    for v in value {
                        if v != nil {
                            var model = CreateEgressProxyRuleGroupRequest.EgressProxyRules.PreRequest.Conditions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.conditions = tmp
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EgressProxyRuleName"] as? String {
                    self.egressProxyRuleName = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public var postResponse: [CreateEgressProxyRuleGroupRequest.EgressProxyRules.PostResponse]?

        public var preDns: [CreateEgressProxyRuleGroupRequest.EgressProxyRules.PreDns]?

        public var preRequest: [CreateEgressProxyRuleGroupRequest.EgressProxyRules.PreRequest]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.postResponse != nil {
                var tmp : [Any] = []
                for k in self.postResponse! {
                    tmp.append(k.toMap())
                }
                map["PostResponse"] = tmp
            }
            if self.preDns != nil {
                var tmp : [Any] = []
                for k in self.preDns! {
                    tmp.append(k.toMap())
                }
                map["PreDns"] = tmp
            }
            if self.preRequest != nil {
                var tmp : [Any] = []
                for k in self.preRequest! {
                    tmp.append(k.toMap())
                }
                map["PreRequest"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PostResponse"] as? [Any?] {
                var tmp : [CreateEgressProxyRuleGroupRequest.EgressProxyRules.PostResponse] = []
                for v in value {
                    if v != nil {
                        var model = CreateEgressProxyRuleGroupRequest.EgressProxyRules.PostResponse()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.postResponse = tmp
            }
            if let value = dict["PreDns"] as? [Any?] {
                var tmp : [CreateEgressProxyRuleGroupRequest.EgressProxyRules.PreDns] = []
                for v in value {
                    if v != nil {
                        var model = CreateEgressProxyRuleGroupRequest.EgressProxyRules.PreDns()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.preDns = tmp
            }
            if let value = dict["PreRequest"] as? [Any?] {
                var tmp : [CreateEgressProxyRuleGroupRequest.EgressProxyRules.PreRequest] = []
                for v in value {
                    if v != nil {
                        var model = CreateEgressProxyRuleGroupRequest.EgressProxyRules.PreRequest()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.preRequest = tmp
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
    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var egressProxyIpPoolId: String?

    public var egressProxyRuleGroupName: String?

    public var egressProxyRules: CreateEgressProxyRuleGroupRequest.EgressProxyRules?

    public var resourceGroupId: String?

    public var tag: [CreateEgressProxyRuleGroupRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.egressProxyRules?.validate()
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
        if self.egressProxyIpPoolId != nil {
            map["EgressProxyIpPoolId"] = self.egressProxyIpPoolId!
        }
        if self.egressProxyRuleGroupName != nil {
            map["EgressProxyRuleGroupName"] = self.egressProxyRuleGroupName!
        }
        if self.egressProxyRules != nil {
            map["EgressProxyRules"] = self.egressProxyRules?.toMap()
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EgressProxyIpPoolId"] as? String {
            self.egressProxyIpPoolId = value
        }
        if let value = dict["EgressProxyRuleGroupName"] as? String {
            self.egressProxyRuleGroupName = value
        }
        if let value = dict["EgressProxyRules"] as? [String: Any?] {
            var model = CreateEgressProxyRuleGroupRequest.EgressProxyRules()
            model.fromMap(value)
            self.egressProxyRules = model
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateEgressProxyRuleGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateEgressProxyRuleGroupRequest.Tag()
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

public class CreateEgressProxyRuleGroupResponseBody : Tea.TeaModel {
    public class EgressProxyRules : Tea.TeaModel {
        public class PostResponse : Tea.TeaModel {
            public var egressProxyRuleId: String?

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
                if self.egressProxyRuleId != nil {
                    map["EgressProxyRuleId"] = self.egressProxyRuleId!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EgressProxyRuleId"] as? String {
                    self.egressProxyRuleId = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public class PreDns : Tea.TeaModel {
            public var egressProxyRuleId: String?

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
                if self.egressProxyRuleId != nil {
                    map["EgressProxyRuleId"] = self.egressProxyRuleId!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EgressProxyRuleId"] as? String {
                    self.egressProxyRuleId = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public class PreRequest : Tea.TeaModel {
            public var egressProxyRuleId: String?

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
                if self.egressProxyRuleId != nil {
                    map["EgressProxyRuleId"] = self.egressProxyRuleId!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EgressProxyRuleId"] as? String {
                    self.egressProxyRuleId = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public var postResponse: [CreateEgressProxyRuleGroupResponseBody.EgressProxyRules.PostResponse]?

        public var preDns: [CreateEgressProxyRuleGroupResponseBody.EgressProxyRules.PreDns]?

        public var preRequest: [CreateEgressProxyRuleGroupResponseBody.EgressProxyRules.PreRequest]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.postResponse != nil {
                var tmp : [Any] = []
                for k in self.postResponse! {
                    tmp.append(k.toMap())
                }
                map["PostResponse"] = tmp
            }
            if self.preDns != nil {
                var tmp : [Any] = []
                for k in self.preDns! {
                    tmp.append(k.toMap())
                }
                map["PreDns"] = tmp
            }
            if self.preRequest != nil {
                var tmp : [Any] = []
                for k in self.preRequest! {
                    tmp.append(k.toMap())
                }
                map["PreRequest"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PostResponse"] as? [Any?] {
                var tmp : [CreateEgressProxyRuleGroupResponseBody.EgressProxyRules.PostResponse] = []
                for v in value {
                    if v != nil {
                        var model = CreateEgressProxyRuleGroupResponseBody.EgressProxyRules.PostResponse()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.postResponse = tmp
            }
            if let value = dict["PreDns"] as? [Any?] {
                var tmp : [CreateEgressProxyRuleGroupResponseBody.EgressProxyRules.PreDns] = []
                for v in value {
                    if v != nil {
                        var model = CreateEgressProxyRuleGroupResponseBody.EgressProxyRules.PreDns()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.preDns = tmp
            }
            if let value = dict["PreRequest"] as? [Any?] {
                var tmp : [CreateEgressProxyRuleGroupResponseBody.EgressProxyRules.PreRequest] = []
                for v in value {
                    if v != nil {
                        var model = CreateEgressProxyRuleGroupResponseBody.EgressProxyRules.PreRequest()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.preRequest = tmp
            }
        }
    }
    public var egressProxyRuleGroupId: String?

    public var egressProxyRules: CreateEgressProxyRuleGroupResponseBody.EgressProxyRules?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.egressProxyRules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.egressProxyRuleGroupId != nil {
            map["EgressProxyRuleGroupId"] = self.egressProxyRuleGroupId!
        }
        if self.egressProxyRules != nil {
            map["EgressProxyRules"] = self.egressProxyRules?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EgressProxyRuleGroupId"] as? String {
            self.egressProxyRuleGroupId = value
        }
        if let value = dict["EgressProxyRules"] as? [String: Any?] {
            var model = CreateEgressProxyRuleGroupResponseBody.EgressProxyRules()
            model.fromMap(value)
            self.egressProxyRules = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateEgressProxyRuleGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEgressProxyRuleGroupResponseBody?

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
            var model = CreateEgressProxyRuleGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEgressProxyRulesRequest : Tea.TeaModel {
    public class EgressProxyRules : Tea.TeaModel {
        public class PostResponse : Tea.TeaModel {
            public class Conditions : Tea.TeaModel {
                public var conditionKey: String?

                public var conditionOperator: String?

                public var conditionValues: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.conditionKey != nil {
                        map["ConditionKey"] = self.conditionKey!
                    }
                    if self.conditionOperator != nil {
                        map["ConditionOperator"] = self.conditionOperator!
                    }
                    if self.conditionValues != nil {
                        map["ConditionValues"] = self.conditionValues!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConditionKey"] as? String {
                        self.conditionKey = value
                    }
                    if let value = dict["ConditionOperator"] as? String {
                        self.conditionOperator = value
                    }
                    if let value = dict["ConditionValues"] as? [String] {
                        self.conditionValues = value
                    }
                }
            }
            public var action: String?

            public var conditions: [CreateEgressProxyRulesRequest.EgressProxyRules.PostResponse.Conditions]?

            public var description_: String?

            public var egressProxyRuleName: String?

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
                if self.conditions != nil {
                    var tmp : [Any] = []
                    for k in self.conditions! {
                        tmp.append(k.toMap())
                    }
                    map["Conditions"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.egressProxyRuleName != nil {
                    map["EgressProxyRuleName"] = self.egressProxyRuleName!
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
                if let value = dict["Conditions"] as? [Any?] {
                    var tmp : [CreateEgressProxyRulesRequest.EgressProxyRules.PostResponse.Conditions] = []
                    for v in value {
                        if v != nil {
                            var model = CreateEgressProxyRulesRequest.EgressProxyRules.PostResponse.Conditions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.conditions = tmp
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EgressProxyRuleName"] as? String {
                    self.egressProxyRuleName = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public class PreDns : Tea.TeaModel {
            public class Conditions : Tea.TeaModel {
                public var conditionKey: String?

                public var conditionOperator: String?

                public var conditionValues: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.conditionKey != nil {
                        map["ConditionKey"] = self.conditionKey!
                    }
                    if self.conditionOperator != nil {
                        map["ConditionOperator"] = self.conditionOperator!
                    }
                    if self.conditionValues != nil {
                        map["ConditionValues"] = self.conditionValues!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConditionKey"] as? String {
                        self.conditionKey = value
                    }
                    if let value = dict["ConditionOperator"] as? String {
                        self.conditionOperator = value
                    }
                    if let value = dict["ConditionValues"] as? [String] {
                        self.conditionValues = value
                    }
                }
            }
            public var action: String?

            public var conditions: [CreateEgressProxyRulesRequest.EgressProxyRules.PreDns.Conditions]?

            public var description_: String?

            public var egressProxyRuleName: String?

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
                if self.conditions != nil {
                    var tmp : [Any] = []
                    for k in self.conditions! {
                        tmp.append(k.toMap())
                    }
                    map["Conditions"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.egressProxyRuleName != nil {
                    map["EgressProxyRuleName"] = self.egressProxyRuleName!
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
                if let value = dict["Conditions"] as? [Any?] {
                    var tmp : [CreateEgressProxyRulesRequest.EgressProxyRules.PreDns.Conditions] = []
                    for v in value {
                        if v != nil {
                            var model = CreateEgressProxyRulesRequest.EgressProxyRules.PreDns.Conditions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.conditions = tmp
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EgressProxyRuleName"] as? String {
                    self.egressProxyRuleName = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public class PreRequest : Tea.TeaModel {
            public class Conditions : Tea.TeaModel {
                public var conditionKey: String?

                public var conditionOperator: String?

                public var conditionValues: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.conditionKey != nil {
                        map["ConditionKey"] = self.conditionKey!
                    }
                    if self.conditionOperator != nil {
                        map["ConditionOperator"] = self.conditionOperator!
                    }
                    if self.conditionValues != nil {
                        map["ConditionValues"] = self.conditionValues!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConditionKey"] as? String {
                        self.conditionKey = value
                    }
                    if let value = dict["ConditionOperator"] as? String {
                        self.conditionOperator = value
                    }
                    if let value = dict["ConditionValues"] as? [String] {
                        self.conditionValues = value
                    }
                }
            }
            public var action: String?

            public var conditions: [CreateEgressProxyRulesRequest.EgressProxyRules.PreRequest.Conditions]?

            public var description_: String?

            public var egressProxyRuleName: String?

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
                if self.conditions != nil {
                    var tmp : [Any] = []
                    for k in self.conditions! {
                        tmp.append(k.toMap())
                    }
                    map["Conditions"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.egressProxyRuleName != nil {
                    map["EgressProxyRuleName"] = self.egressProxyRuleName!
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
                if let value = dict["Conditions"] as? [Any?] {
                    var tmp : [CreateEgressProxyRulesRequest.EgressProxyRules.PreRequest.Conditions] = []
                    for v in value {
                        if v != nil {
                            var model = CreateEgressProxyRulesRequest.EgressProxyRules.PreRequest.Conditions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.conditions = tmp
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EgressProxyRuleName"] as? String {
                    self.egressProxyRuleName = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public var postResponse: [CreateEgressProxyRulesRequest.EgressProxyRules.PostResponse]?

        public var preDns: [CreateEgressProxyRulesRequest.EgressProxyRules.PreDns]?

        public var preRequest: [CreateEgressProxyRulesRequest.EgressProxyRules.PreRequest]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.postResponse != nil {
                var tmp : [Any] = []
                for k in self.postResponse! {
                    tmp.append(k.toMap())
                }
                map["PostResponse"] = tmp
            }
            if self.preDns != nil {
                var tmp : [Any] = []
                for k in self.preDns! {
                    tmp.append(k.toMap())
                }
                map["PreDns"] = tmp
            }
            if self.preRequest != nil {
                var tmp : [Any] = []
                for k in self.preRequest! {
                    tmp.append(k.toMap())
                }
                map["PreRequest"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PostResponse"] as? [Any?] {
                var tmp : [CreateEgressProxyRulesRequest.EgressProxyRules.PostResponse] = []
                for v in value {
                    if v != nil {
                        var model = CreateEgressProxyRulesRequest.EgressProxyRules.PostResponse()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.postResponse = tmp
            }
            if let value = dict["PreDns"] as? [Any?] {
                var tmp : [CreateEgressProxyRulesRequest.EgressProxyRules.PreDns] = []
                for v in value {
                    if v != nil {
                        var model = CreateEgressProxyRulesRequest.EgressProxyRules.PreDns()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.preDns = tmp
            }
            if let value = dict["PreRequest"] as? [Any?] {
                var tmp : [CreateEgressProxyRulesRequest.EgressProxyRules.PreRequest] = []
                for v in value {
                    if v != nil {
                        var model = CreateEgressProxyRulesRequest.EgressProxyRules.PreRequest()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.preRequest = tmp
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var egressProxyRuleGroupId: String?

    public var egressProxyRules: CreateEgressProxyRulesRequest.EgressProxyRules?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.egressProxyRules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.egressProxyRuleGroupId != nil {
            map["EgressProxyRuleGroupId"] = self.egressProxyRuleGroupId!
        }
        if self.egressProxyRules != nil {
            map["EgressProxyRules"] = self.egressProxyRules?.toMap()
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
        if let value = dict["EgressProxyRuleGroupId"] as? String {
            self.egressProxyRuleGroupId = value
        }
        if let value = dict["EgressProxyRules"] as? [String: Any?] {
            var model = CreateEgressProxyRulesRequest.EgressProxyRules()
            model.fromMap(value)
            self.egressProxyRules = model
        }
    }
}

public class CreateEgressProxyRulesResponseBody : Tea.TeaModel {
    public class EgressProxyRules : Tea.TeaModel {
        public class PostResponse : Tea.TeaModel {
            public var egressProxyRuleId: String?

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
                if self.egressProxyRuleId != nil {
                    map["EgressProxyRuleId"] = self.egressProxyRuleId!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EgressProxyRuleId"] as? String {
                    self.egressProxyRuleId = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public class PreDns : Tea.TeaModel {
            public var egressProxyRuleId: String?

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
                if self.egressProxyRuleId != nil {
                    map["EgressProxyRuleId"] = self.egressProxyRuleId!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EgressProxyRuleId"] as? String {
                    self.egressProxyRuleId = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public class PreRequest : Tea.TeaModel {
            public var egressProxyRuleId: String?

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
                if self.egressProxyRuleId != nil {
                    map["EgressProxyRuleId"] = self.egressProxyRuleId!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EgressProxyRuleId"] as? String {
                    self.egressProxyRuleId = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public var postResponse: [CreateEgressProxyRulesResponseBody.EgressProxyRules.PostResponse]?

        public var preDns: [CreateEgressProxyRulesResponseBody.EgressProxyRules.PreDns]?

        public var preRequest: [CreateEgressProxyRulesResponseBody.EgressProxyRules.PreRequest]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.postResponse != nil {
                var tmp : [Any] = []
                for k in self.postResponse! {
                    tmp.append(k.toMap())
                }
                map["PostResponse"] = tmp
            }
            if self.preDns != nil {
                var tmp : [Any] = []
                for k in self.preDns! {
                    tmp.append(k.toMap())
                }
                map["PreDns"] = tmp
            }
            if self.preRequest != nil {
                var tmp : [Any] = []
                for k in self.preRequest! {
                    tmp.append(k.toMap())
                }
                map["PreRequest"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PostResponse"] as? [Any?] {
                var tmp : [CreateEgressProxyRulesResponseBody.EgressProxyRules.PostResponse] = []
                for v in value {
                    if v != nil {
                        var model = CreateEgressProxyRulesResponseBody.EgressProxyRules.PostResponse()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.postResponse = tmp
            }
            if let value = dict["PreDns"] as? [Any?] {
                var tmp : [CreateEgressProxyRulesResponseBody.EgressProxyRules.PreDns] = []
                for v in value {
                    if v != nil {
                        var model = CreateEgressProxyRulesResponseBody.EgressProxyRules.PreDns()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.preDns = tmp
            }
            if let value = dict["PreRequest"] as? [Any?] {
                var tmp : [CreateEgressProxyRulesResponseBody.EgressProxyRules.PreRequest] = []
                for v in value {
                    if v != nil {
                        var model = CreateEgressProxyRulesResponseBody.EgressProxyRules.PreRequest()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.preRequest = tmp
            }
        }
    }
    public var egressProxyRules: CreateEgressProxyRulesResponseBody.EgressProxyRules?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.egressProxyRules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.egressProxyRules != nil {
            map["EgressProxyRules"] = self.egressProxyRules?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EgressProxyRules"] as? [String: Any?] {
            var model = CreateEgressProxyRulesResponseBody.EgressProxyRules()
            model.fromMap(value)
            self.egressProxyRules = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateEgressProxyRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEgressProxyRulesResponseBody?

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
            var model = CreateEgressProxyRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEgressProxyConfigurationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var egressProxyConfigurationId: String?

    public override init() {
        super.init()
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
        if self.egressProxyConfigurationId != nil {
            map["EgressProxyConfigurationId"] = self.egressProxyConfigurationId!
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
        if let value = dict["EgressProxyConfigurationId"] as? String {
            self.egressProxyConfigurationId = value
        }
    }
}

public class DeleteEgressProxyConfigurationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteEgressProxyConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEgressProxyConfigurationResponseBody?

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
            var model = DeleteEgressProxyConfigurationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEgressProxyGatewayRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var egressProxyGatewayId: String?

    public override init() {
        super.init()
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
        if self.egressProxyGatewayId != nil {
            map["EgressProxyGatewayId"] = self.egressProxyGatewayId!
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
        if let value = dict["EgressProxyGatewayId"] as? String {
            self.egressProxyGatewayId = value
        }
    }
}

public class DeleteEgressProxyGatewayResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteEgressProxyGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEgressProxyGatewayResponseBody?

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
            var model = DeleteEgressProxyGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEgressProxyIpPoolRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var egressProxyIpPoolId: String?

    public override init() {
        super.init()
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
        if self.egressProxyIpPoolId != nil {
            map["EgressProxyIpPoolId"] = self.egressProxyIpPoolId!
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
        if let value = dict["EgressProxyIpPoolId"] as? String {
            self.egressProxyIpPoolId = value
        }
    }
}

public class DeleteEgressProxyIpPoolResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteEgressProxyIpPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEgressProxyIpPoolResponseBody?

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
            var model = DeleteEgressProxyIpPoolResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEgressProxyRuleGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var egressProxyRuleGroupId: String?

    public override init() {
        super.init()
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
        if self.egressProxyRuleGroupId != nil {
            map["EgressProxyRuleGroupId"] = self.egressProxyRuleGroupId!
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
        if let value = dict["EgressProxyRuleGroupId"] as? String {
            self.egressProxyRuleGroupId = value
        }
    }
}

public class DeleteEgressProxyRuleGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteEgressProxyRuleGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEgressProxyRuleGroupResponseBody?

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
            var model = DeleteEgressProxyRuleGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEgressProxyRulesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var egressProxyRuleGroupId: String?

    public var egressProxyRuleIds: [String]?

    public override init() {
        super.init()
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
        if self.egressProxyRuleGroupId != nil {
            map["EgressProxyRuleGroupId"] = self.egressProxyRuleGroupId!
        }
        if self.egressProxyRuleIds != nil {
            map["EgressProxyRuleIds"] = self.egressProxyRuleIds!
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
        if let value = dict["EgressProxyRuleGroupId"] as? String {
            self.egressProxyRuleGroupId = value
        }
        if let value = dict["EgressProxyRuleIds"] as? [String] {
            self.egressProxyRuleIds = value
        }
    }
}

public class DeleteEgressProxyRulesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteEgressProxyRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEgressProxyRulesResponseBody?

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
            var model = DeleteEgressProxyRulesResponseBody()
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

    public override init() {
        super.init()
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

public class DetachEgressProxyRuleGroupsFromConfigurationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var egressProxyConfigurationId: String?

    public var egressProxyRuleGroupIds: [String]?

    public override init() {
        super.init()
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
        if self.egressProxyConfigurationId != nil {
            map["EgressProxyConfigurationId"] = self.egressProxyConfigurationId!
        }
        if self.egressProxyRuleGroupIds != nil {
            map["EgressProxyRuleGroupIds"] = self.egressProxyRuleGroupIds!
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
        if let value = dict["EgressProxyConfigurationId"] as? String {
            self.egressProxyConfigurationId = value
        }
        if let value = dict["EgressProxyRuleGroupIds"] as? [String] {
            self.egressProxyRuleGroupIds = value
        }
    }
}

public class DetachEgressProxyRuleGroupsFromConfigurationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DetachEgressProxyRuleGroupsFromConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachEgressProxyRuleGroupsFromConfigurationResponseBody?

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
            var model = DetachEgressProxyRuleGroupsFromConfigurationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEgressProxyConfigurationAttributeRequest : Tea.TeaModel {
    public var egressProxyConfigurationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.egressProxyConfigurationId != nil {
            map["EgressProxyConfigurationId"] = self.egressProxyConfigurationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EgressProxyConfigurationId"] as? String {
            self.egressProxyConfigurationId = value
        }
    }
}

public class GetEgressProxyConfigurationAttributeResponseBody : Tea.TeaModel {
    public class DefaultRulePhaseActions : Tea.TeaModel {
        public var postResponse: String?

        public var preDns: String?

        public var preRequest: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.postResponse != nil {
                map["PostResponse"] = self.postResponse!
            }
            if self.preDns != nil {
                map["PreDns"] = self.preDns!
            }
            if self.preRequest != nil {
                map["PreRequest"] = self.preRequest!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PostResponse"] as? String {
                self.postResponse = value
            }
            if let value = dict["PreDns"] as? String {
                self.preDns = value
            }
            if let value = dict["PreRequest"] as? String {
                self.preRequest = value
            }
        }
    }
    public class RuleGroups : Tea.TeaModel {
        public var egressProxyRuleGroupId: String?

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
            if self.egressProxyRuleGroupId != nil {
                map["EgressProxyRuleGroupId"] = self.egressProxyRuleGroupId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EgressProxyRuleGroupId"] as? String {
                self.egressProxyRuleGroupId = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
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
    public var createTime: String?

    public var defaultRulePhaseActions: GetEgressProxyConfigurationAttributeResponseBody.DefaultRulePhaseActions?

    public var description_: String?

    public var egressProxyConfigurationId: String?

    public var egressProxyConfigurationName: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var ruleGroups: [GetEgressProxyConfigurationAttributeResponseBody.RuleGroups]?

    public var status: String?

    public var tags: [GetEgressProxyConfigurationAttributeResponseBody.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.defaultRulePhaseActions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.defaultRulePhaseActions != nil {
            map["DefaultRulePhaseActions"] = self.defaultRulePhaseActions?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.egressProxyConfigurationId != nil {
            map["EgressProxyConfigurationId"] = self.egressProxyConfigurationId!
        }
        if self.egressProxyConfigurationName != nil {
            map["EgressProxyConfigurationName"] = self.egressProxyConfigurationName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.ruleGroups != nil {
            var tmp : [Any] = []
            for k in self.ruleGroups! {
                tmp.append(k.toMap())
            }
            map["RuleGroups"] = tmp
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DefaultRulePhaseActions"] as? [String: Any?] {
            var model = GetEgressProxyConfigurationAttributeResponseBody.DefaultRulePhaseActions()
            model.fromMap(value)
            self.defaultRulePhaseActions = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EgressProxyConfigurationId"] as? String {
            self.egressProxyConfigurationId = value
        }
        if let value = dict["EgressProxyConfigurationName"] as? String {
            self.egressProxyConfigurationName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RuleGroups"] as? [Any?] {
            var tmp : [GetEgressProxyConfigurationAttributeResponseBody.RuleGroups] = []
            for v in value {
                if v != nil {
                    var model = GetEgressProxyConfigurationAttributeResponseBody.RuleGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleGroups = tmp
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetEgressProxyConfigurationAttributeResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetEgressProxyConfigurationAttributeResponseBody.Tags()
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

public class GetEgressProxyConfigurationAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEgressProxyConfigurationAttributeResponseBody?

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
            var model = GetEgressProxyConfigurationAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEgressProxyGatewayAttributeRequest : Tea.TeaModel {
    public var egressProxyGatewayId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.egressProxyGatewayId != nil {
            map["EgressProxyGatewayId"] = self.egressProxyGatewayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EgressProxyGatewayId"] as? String {
            self.egressProxyGatewayId = value
        }
    }
}

public class GetEgressProxyGatewayAttributeResponseBody : Tea.TeaModel {
    public class ListenerProperties : Tea.TeaModel {
        public var port: Int32?

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
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
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
    public class TlsInterceptProperties : Tea.TeaModel {
        public var privateCaCertificateId: String?

        public var tlsInterceptMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.privateCaCertificateId != nil {
                map["PrivateCaCertificateId"] = self.privateCaCertificateId!
            }
            if self.tlsInterceptMode != nil {
                map["TlsInterceptMode"] = self.tlsInterceptMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PrivateCaCertificateId"] as? String {
                self.privateCaCertificateId = value
            }
            if let value = dict["TlsInterceptMode"] as? String {
                self.tlsInterceptMode = value
            }
        }
    }
    public class ZoneMappings : Tea.TeaModel {
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
    public var createTime: String?

    public var defaultEgressProxyIpPoolId: String?

    public var description_: String?

    public var dnsName: String?

    public var egressProxyConfigurationId: String?

    public var egressProxyGatewayId: String?

    public var egressProxyGatewayName: String?

    public var listenerProperties: [GetEgressProxyGatewayAttributeResponseBody.ListenerProperties]?

    public var requestId: String?

    public var resourceGroupId: String?

    public var status: String?

    public var tags: [GetEgressProxyGatewayAttributeResponseBody.Tags]?

    public var tlsInterceptProperties: GetEgressProxyGatewayAttributeResponseBody.TlsInterceptProperties?

    public var vpcId: String?

    public var zoneMappings: [GetEgressProxyGatewayAttributeResponseBody.ZoneMappings]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tlsInterceptProperties?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.defaultEgressProxyIpPoolId != nil {
            map["DefaultEgressProxyIpPoolId"] = self.defaultEgressProxyIpPoolId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dnsName != nil {
            map["DnsName"] = self.dnsName!
        }
        if self.egressProxyConfigurationId != nil {
            map["EgressProxyConfigurationId"] = self.egressProxyConfigurationId!
        }
        if self.egressProxyGatewayId != nil {
            map["EgressProxyGatewayId"] = self.egressProxyGatewayId!
        }
        if self.egressProxyGatewayName != nil {
            map["EgressProxyGatewayName"] = self.egressProxyGatewayName!
        }
        if self.listenerProperties != nil {
            var tmp : [Any] = []
            for k in self.listenerProperties! {
                tmp.append(k.toMap())
            }
            map["ListenerProperties"] = tmp
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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.tlsInterceptProperties != nil {
            map["TlsInterceptProperties"] = self.tlsInterceptProperties?.toMap()
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
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DefaultEgressProxyIpPoolId"] as? String {
            self.defaultEgressProxyIpPoolId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DnsName"] as? String {
            self.dnsName = value
        }
        if let value = dict["EgressProxyConfigurationId"] as? String {
            self.egressProxyConfigurationId = value
        }
        if let value = dict["EgressProxyGatewayId"] as? String {
            self.egressProxyGatewayId = value
        }
        if let value = dict["EgressProxyGatewayName"] as? String {
            self.egressProxyGatewayName = value
        }
        if let value = dict["ListenerProperties"] as? [Any?] {
            var tmp : [GetEgressProxyGatewayAttributeResponseBody.ListenerProperties] = []
            for v in value {
                if v != nil {
                    var model = GetEgressProxyGatewayAttributeResponseBody.ListenerProperties()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.listenerProperties = tmp
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
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetEgressProxyGatewayAttributeResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetEgressProxyGatewayAttributeResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TlsInterceptProperties"] as? [String: Any?] {
            var model = GetEgressProxyGatewayAttributeResponseBody.TlsInterceptProperties()
            model.fromMap(value)
            self.tlsInterceptProperties = model
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneMappings"] as? [Any?] {
            var tmp : [GetEgressProxyGatewayAttributeResponseBody.ZoneMappings] = []
            for v in value {
                if v != nil {
                    var model = GetEgressProxyGatewayAttributeResponseBody.ZoneMappings()
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

public class GetEgressProxyGatewayAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEgressProxyGatewayAttributeResponseBody?

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
            var model = GetEgressProxyGatewayAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEgressProxyIpPoolAttributeRequest : Tea.TeaModel {
    public var egressProxyIpPoolId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.egressProxyIpPoolId != nil {
            map["EgressProxyIpPoolId"] = self.egressProxyIpPoolId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EgressProxyIpPoolId"] as? String {
            self.egressProxyIpPoolId = value
        }
    }
}

public class GetEgressProxyIpPoolAttributeResponseBody : Tea.TeaModel {
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
        public class IpAddresses : Tea.TeaModel {
            public var eipAllocationId: String?

            public var privateIpv4Address: String?

            public var publicIpv4Address: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eipAllocationId != nil {
                    map["EipAllocationId"] = self.eipAllocationId!
                }
                if self.privateIpv4Address != nil {
                    map["PrivateIpv4Address"] = self.privateIpv4Address!
                }
                if self.publicIpv4Address != nil {
                    map["PublicIpv4Address"] = self.publicIpv4Address!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EipAllocationId"] as? String {
                    self.eipAllocationId = value
                }
                if let value = dict["PrivateIpv4Address"] as? String {
                    self.privateIpv4Address = value
                }
                if let value = dict["PublicIpv4Address"] as? String {
                    self.publicIpv4Address = value
                }
            }
        }
        public var ipAddresses: [GetEgressProxyIpPoolAttributeResponseBody.ZoneMappings.IpAddresses]?

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
            if self.ipAddresses != nil {
                var tmp : [Any] = []
                for k in self.ipAddresses! {
                    tmp.append(k.toMap())
                }
                map["IpAddresses"] = tmp
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
            if let value = dict["IpAddresses"] as? [Any?] {
                var tmp : [GetEgressProxyIpPoolAttributeResponseBody.ZoneMappings.IpAddresses] = []
                for v in value {
                    if v != nil {
                        var model = GetEgressProxyIpPoolAttributeResponseBody.ZoneMappings.IpAddresses()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ipAddresses = tmp
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

    public var createTime: String?

    public var description_: String?

    public var egressProxyGatewayId: String?

    public var egressProxyIpPoolId: String?

    public var egressProxyIpPoolName: String?

    public var hashFactor: String?

    public var hashHeaderName: String?

    public var requestId: String?

    public var scheduler: String?

    public var status: String?

    public var tags: [GetEgressProxyIpPoolAttributeResponseBody.Tags]?

    public var zoneMappings: [GetEgressProxyIpPoolAttributeResponseBody.ZoneMappings]?

    public override init() {
        super.init()
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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.egressProxyGatewayId != nil {
            map["EgressProxyGatewayId"] = self.egressProxyGatewayId!
        }
        if self.egressProxyIpPoolId != nil {
            map["EgressProxyIpPoolId"] = self.egressProxyIpPoolId!
        }
        if self.egressProxyIpPoolName != nil {
            map["EgressProxyIpPoolName"] = self.egressProxyIpPoolName!
        }
        if self.hashFactor != nil {
            map["HashFactor"] = self.hashFactor!
        }
        if self.hashHeaderName != nil {
            map["HashHeaderName"] = self.hashHeaderName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
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
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EgressProxyGatewayId"] as? String {
            self.egressProxyGatewayId = value
        }
        if let value = dict["EgressProxyIpPoolId"] as? String {
            self.egressProxyIpPoolId = value
        }
        if let value = dict["EgressProxyIpPoolName"] as? String {
            self.egressProxyIpPoolName = value
        }
        if let value = dict["HashFactor"] as? String {
            self.hashFactor = value
        }
        if let value = dict["HashHeaderName"] as? String {
            self.hashHeaderName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetEgressProxyIpPoolAttributeResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetEgressProxyIpPoolAttributeResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["ZoneMappings"] as? [Any?] {
            var tmp : [GetEgressProxyIpPoolAttributeResponseBody.ZoneMappings] = []
            for v in value {
                if v != nil {
                    var model = GetEgressProxyIpPoolAttributeResponseBody.ZoneMappings()
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

public class GetEgressProxyIpPoolAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEgressProxyIpPoolAttributeResponseBody?

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
            var model = GetEgressProxyIpPoolAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEgressProxyRuleGroupAttributeRequest : Tea.TeaModel {
    public var egressProxyRuleGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.egressProxyRuleGroupId != nil {
            map["EgressProxyRuleGroupId"] = self.egressProxyRuleGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EgressProxyRuleGroupId"] as? String {
            self.egressProxyRuleGroupId = value
        }
    }
}

public class GetEgressProxyRuleGroupAttributeResponseBody : Tea.TeaModel {
    public class EgressProxyRules : Tea.TeaModel {
        public class PostResponse : Tea.TeaModel {
            public class Conditions : Tea.TeaModel {
                public var conditionKey: String?

                public var conditionOperator: String?

                public var conditionValues: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.conditionKey != nil {
                        map["ConditionKey"] = self.conditionKey!
                    }
                    if self.conditionOperator != nil {
                        map["ConditionOperator"] = self.conditionOperator!
                    }
                    if self.conditionValues != nil {
                        map["ConditionValues"] = self.conditionValues!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConditionKey"] as? String {
                        self.conditionKey = value
                    }
                    if let value = dict["ConditionOperator"] as? String {
                        self.conditionOperator = value
                    }
                    if let value = dict["ConditionValues"] as? [String] {
                        self.conditionValues = value
                    }
                }
            }
            public var action: String?

            public var conditions: [GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PostResponse.Conditions]?

            public var createTime: String?

            public var description_: String?

            public var egressProxyRuleId: String?

            public var egressProxyRuleName: String?

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
                if self.conditions != nil {
                    var tmp : [Any] = []
                    for k in self.conditions! {
                        tmp.append(k.toMap())
                    }
                    map["Conditions"] = tmp
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.egressProxyRuleId != nil {
                    map["EgressProxyRuleId"] = self.egressProxyRuleId!
                }
                if self.egressProxyRuleName != nil {
                    map["EgressProxyRuleName"] = self.egressProxyRuleName!
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
                if let value = dict["Conditions"] as? [Any?] {
                    var tmp : [GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PostResponse.Conditions] = []
                    for v in value {
                        if v != nil {
                            var model = GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PostResponse.Conditions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.conditions = tmp
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EgressProxyRuleId"] as? String {
                    self.egressProxyRuleId = value
                }
                if let value = dict["EgressProxyRuleName"] as? String {
                    self.egressProxyRuleName = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public class PreDns : Tea.TeaModel {
            public class Conditions : Tea.TeaModel {
                public var conditionKey: String?

                public var conditionOperator: String?

                public var conditionValues: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.conditionKey != nil {
                        map["ConditionKey"] = self.conditionKey!
                    }
                    if self.conditionOperator != nil {
                        map["ConditionOperator"] = self.conditionOperator!
                    }
                    if self.conditionValues != nil {
                        map["ConditionValues"] = self.conditionValues!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConditionKey"] as? String {
                        self.conditionKey = value
                    }
                    if let value = dict["ConditionOperator"] as? String {
                        self.conditionOperator = value
                    }
                    if let value = dict["ConditionValues"] as? [String] {
                        self.conditionValues = value
                    }
                }
            }
            public var action: String?

            public var conditions: [GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PreDns.Conditions]?

            public var createTime: String?

            public var description_: String?

            public var egressProxyRuleId: String?

            public var egressProxyRuleName: String?

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
                if self.conditions != nil {
                    var tmp : [Any] = []
                    for k in self.conditions! {
                        tmp.append(k.toMap())
                    }
                    map["Conditions"] = tmp
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.egressProxyRuleId != nil {
                    map["EgressProxyRuleId"] = self.egressProxyRuleId!
                }
                if self.egressProxyRuleName != nil {
                    map["EgressProxyRuleName"] = self.egressProxyRuleName!
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
                if let value = dict["Conditions"] as? [Any?] {
                    var tmp : [GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PreDns.Conditions] = []
                    for v in value {
                        if v != nil {
                            var model = GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PreDns.Conditions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.conditions = tmp
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EgressProxyRuleId"] as? String {
                    self.egressProxyRuleId = value
                }
                if let value = dict["EgressProxyRuleName"] as? String {
                    self.egressProxyRuleName = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public class PreRequest : Tea.TeaModel {
            public class Conditions : Tea.TeaModel {
                public var conditionKey: String?

                public var conditionOperator: String?

                public var conditionValues: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.conditionKey != nil {
                        map["ConditionKey"] = self.conditionKey!
                    }
                    if self.conditionOperator != nil {
                        map["ConditionOperator"] = self.conditionOperator!
                    }
                    if self.conditionValues != nil {
                        map["ConditionValues"] = self.conditionValues!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConditionKey"] as? String {
                        self.conditionKey = value
                    }
                    if let value = dict["ConditionOperator"] as? String {
                        self.conditionOperator = value
                    }
                    if let value = dict["ConditionValues"] as? [String] {
                        self.conditionValues = value
                    }
                }
            }
            public var action: String?

            public var conditions: [GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PreRequest.Conditions]?

            public var createTime: String?

            public var description_: String?

            public var egressProxyRuleId: String?

            public var egressProxyRuleName: String?

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
                if self.conditions != nil {
                    var tmp : [Any] = []
                    for k in self.conditions! {
                        tmp.append(k.toMap())
                    }
                    map["Conditions"] = tmp
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.egressProxyRuleId != nil {
                    map["EgressProxyRuleId"] = self.egressProxyRuleId!
                }
                if self.egressProxyRuleName != nil {
                    map["EgressProxyRuleName"] = self.egressProxyRuleName!
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
                if let value = dict["Conditions"] as? [Any?] {
                    var tmp : [GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PreRequest.Conditions] = []
                    for v in value {
                        if v != nil {
                            var model = GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PreRequest.Conditions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.conditions = tmp
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EgressProxyRuleId"] as? String {
                    self.egressProxyRuleId = value
                }
                if let value = dict["EgressProxyRuleName"] as? String {
                    self.egressProxyRuleName = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
            }
        }
        public var postResponse: [GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PostResponse]?

        public var preDns: [GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PreDns]?

        public var preRequest: [GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PreRequest]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.postResponse != nil {
                var tmp : [Any] = []
                for k in self.postResponse! {
                    tmp.append(k.toMap())
                }
                map["PostResponse"] = tmp
            }
            if self.preDns != nil {
                var tmp : [Any] = []
                for k in self.preDns! {
                    tmp.append(k.toMap())
                }
                map["PreDns"] = tmp
            }
            if self.preRequest != nil {
                var tmp : [Any] = []
                for k in self.preRequest! {
                    tmp.append(k.toMap())
                }
                map["PreRequest"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PostResponse"] as? [Any?] {
                var tmp : [GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PostResponse] = []
                for v in value {
                    if v != nil {
                        var model = GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PostResponse()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.postResponse = tmp
            }
            if let value = dict["PreDns"] as? [Any?] {
                var tmp : [GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PreDns] = []
                for v in value {
                    if v != nil {
                        var model = GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PreDns()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.preDns = tmp
            }
            if let value = dict["PreRequest"] as? [Any?] {
                var tmp : [GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PreRequest] = []
                for v in value {
                    if v != nil {
                        var model = GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules.PreRequest()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.preRequest = tmp
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
    public var createTime: String?

    public var description_: String?

    public var egressProxyIpPoolId: String?

    public var egressProxyRuleGroupId: String?

    public var egressProxyRuleGroupName: String?

    public var egressProxyRules: GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules?

    public var requestId: String?

    public var resourceGroupId: String?

    public var status: String?

    public var tags: [GetEgressProxyRuleGroupAttributeResponseBody.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.egressProxyRules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.egressProxyIpPoolId != nil {
            map["EgressProxyIpPoolId"] = self.egressProxyIpPoolId!
        }
        if self.egressProxyRuleGroupId != nil {
            map["EgressProxyRuleGroupId"] = self.egressProxyRuleGroupId!
        }
        if self.egressProxyRuleGroupName != nil {
            map["EgressProxyRuleGroupName"] = self.egressProxyRuleGroupName!
        }
        if self.egressProxyRules != nil {
            map["EgressProxyRules"] = self.egressProxyRules?.toMap()
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
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EgressProxyIpPoolId"] as? String {
            self.egressProxyIpPoolId = value
        }
        if let value = dict["EgressProxyRuleGroupId"] as? String {
            self.egressProxyRuleGroupId = value
        }
        if let value = dict["EgressProxyRuleGroupName"] as? String {
            self.egressProxyRuleGroupName = value
        }
        if let value = dict["EgressProxyRules"] as? [String: Any?] {
            var model = GetEgressProxyRuleGroupAttributeResponseBody.EgressProxyRules()
            model.fromMap(value)
            self.egressProxyRules = model
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
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetEgressProxyRuleGroupAttributeResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetEgressProxyRuleGroupAttributeResponseBody.Tags()
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

public class GetEgressProxyRuleGroupAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEgressProxyRuleGroupAttributeResponseBody?

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
            var model = GetEgressProxyRuleGroupAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEgressProxyConfigurationsRequest : Tea.TeaModel {
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
    public var egressProxyConfigurationIds: [String]?

    public var egressProxyConfigurationNames: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceGroupId: String?

    public var skip: Int32?

    public var status: String?

    public var tag: [ListEgressProxyConfigurationsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.egressProxyConfigurationIds != nil {
            map["EgressProxyConfigurationIds"] = self.egressProxyConfigurationIds!
        }
        if self.egressProxyConfigurationNames != nil {
            map["EgressProxyConfigurationNames"] = self.egressProxyConfigurationNames!
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
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["EgressProxyConfigurationIds"] as? [String] {
            self.egressProxyConfigurationIds = value
        }
        if let value = dict["EgressProxyConfigurationNames"] as? [String] {
            self.egressProxyConfigurationNames = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Skip"] as? Int32 {
            self.skip = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListEgressProxyConfigurationsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListEgressProxyConfigurationsRequest.Tag()
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

public class ListEgressProxyConfigurationsResponseBody : Tea.TeaModel {
    public class EgressProxyConfigurations : Tea.TeaModel {
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
        public var createTime: String?

        public var description_: String?

        public var egressProxyConfigurationId: String?

        public var egressProxyConfigurationName: String?

        public var resourceGroupId: String?

        public var status: String?

        public var tags: [ListEgressProxyConfigurationsResponseBody.EgressProxyConfigurations.Tags]?

        public override init() {
            super.init()
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
            if self.egressProxyConfigurationId != nil {
                map["EgressProxyConfigurationId"] = self.egressProxyConfigurationId!
            }
            if self.egressProxyConfigurationName != nil {
                map["EgressProxyConfigurationName"] = self.egressProxyConfigurationName!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EgressProxyConfigurationId"] as? String {
                self.egressProxyConfigurationId = value
            }
            if let value = dict["EgressProxyConfigurationName"] as? String {
                self.egressProxyConfigurationName = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListEgressProxyConfigurationsResponseBody.EgressProxyConfigurations.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListEgressProxyConfigurationsResponseBody.EgressProxyConfigurations.Tags()
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
    public var egressProxyConfigurations: [ListEgressProxyConfigurationsResponseBody.EgressProxyConfigurations]?

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
        if self.egressProxyConfigurations != nil {
            var tmp : [Any] = []
            for k in self.egressProxyConfigurations! {
                tmp.append(k.toMap())
            }
            map["EgressProxyConfigurations"] = tmp
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
        if let value = dict["EgressProxyConfigurations"] as? [Any?] {
            var tmp : [ListEgressProxyConfigurationsResponseBody.EgressProxyConfigurations] = []
            for v in value {
                if v != nil {
                    var model = ListEgressProxyConfigurationsResponseBody.EgressProxyConfigurations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.egressProxyConfigurations = tmp
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

public class ListEgressProxyConfigurationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEgressProxyConfigurationsResponseBody?

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
            var model = ListEgressProxyConfigurationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEgressProxyGatewaysRequest : Tea.TeaModel {
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
    public var egressProxyConfigurationIds: [String]?

    public var egressProxyGatewayIds: [String]?

    public var egressProxyGatewayNames: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceGroupId: String?

    public var skip: Int32?

    public var status: String?

    public var tag: [ListEgressProxyGatewaysRequest.Tag]?

    public var vpcIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.egressProxyConfigurationIds != nil {
            map["EgressProxyConfigurationIds"] = self.egressProxyConfigurationIds!
        }
        if self.egressProxyGatewayIds != nil {
            map["EgressProxyGatewayIds"] = self.egressProxyGatewayIds!
        }
        if self.egressProxyGatewayNames != nil {
            map["EgressProxyGatewayNames"] = self.egressProxyGatewayNames!
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
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EgressProxyConfigurationIds"] as? [String] {
            self.egressProxyConfigurationIds = value
        }
        if let value = dict["EgressProxyGatewayIds"] as? [String] {
            self.egressProxyGatewayIds = value
        }
        if let value = dict["EgressProxyGatewayNames"] as? [String] {
            self.egressProxyGatewayNames = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Skip"] as? Int32 {
            self.skip = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListEgressProxyGatewaysRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListEgressProxyGatewaysRequest.Tag()
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
    }
}

public class ListEgressProxyGatewaysResponseBody : Tea.TeaModel {
    public class EgressProxyGateways : Tea.TeaModel {
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
        public var createTime: String?

        public var defaultEgressProxyIpPoolId: String?

        public var description_: String?

        public var egressProxyConfigurationId: String?

        public var egressProxyGatewayId: String?

        public var egressProxyGatewayName: String?

        public var resourceGroupId: String?

        public var status: String?

        public var tags: [ListEgressProxyGatewaysResponseBody.EgressProxyGateways.Tags]?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.defaultEgressProxyIpPoolId != nil {
                map["DefaultEgressProxyIpPoolId"] = self.defaultEgressProxyIpPoolId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.egressProxyConfigurationId != nil {
                map["EgressProxyConfigurationId"] = self.egressProxyConfigurationId!
            }
            if self.egressProxyGatewayId != nil {
                map["EgressProxyGatewayId"] = self.egressProxyGatewayId!
            }
            if self.egressProxyGatewayName != nil {
                map["EgressProxyGatewayName"] = self.egressProxyGatewayName!
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
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DefaultEgressProxyIpPoolId"] as? String {
                self.defaultEgressProxyIpPoolId = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EgressProxyConfigurationId"] as? String {
                self.egressProxyConfigurationId = value
            }
            if let value = dict["EgressProxyGatewayId"] as? String {
                self.egressProxyGatewayId = value
            }
            if let value = dict["EgressProxyGatewayName"] as? String {
                self.egressProxyGatewayName = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListEgressProxyGatewaysResponseBody.EgressProxyGateways.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListEgressProxyGatewaysResponseBody.EgressProxyGateways.Tags()
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
    public var egressProxyGateways: [ListEgressProxyGatewaysResponseBody.EgressProxyGateways]?

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
        if self.egressProxyGateways != nil {
            var tmp : [Any] = []
            for k in self.egressProxyGateways! {
                tmp.append(k.toMap())
            }
            map["EgressProxyGateways"] = tmp
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
        if let value = dict["EgressProxyGateways"] as? [Any?] {
            var tmp : [ListEgressProxyGatewaysResponseBody.EgressProxyGateways] = []
            for v in value {
                if v != nil {
                    var model = ListEgressProxyGatewaysResponseBody.EgressProxyGateways()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.egressProxyGateways = tmp
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

public class ListEgressProxyGatewaysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEgressProxyGatewaysResponseBody?

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
            var model = ListEgressProxyGatewaysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEgressProxyIpPoolsRequest : Tea.TeaModel {
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
    public var egressProxyGatewayIds: [String]?

    public var egressProxyIpPoolIds: [String]?

    public var egressProxyIpPoolNames: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var skip: Int32?

    public var status: String?

    public var tag: [ListEgressProxyIpPoolsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.egressProxyGatewayIds != nil {
            map["EgressProxyGatewayIds"] = self.egressProxyGatewayIds!
        }
        if self.egressProxyIpPoolIds != nil {
            map["EgressProxyIpPoolIds"] = self.egressProxyIpPoolIds!
        }
        if self.egressProxyIpPoolNames != nil {
            map["EgressProxyIpPoolNames"] = self.egressProxyIpPoolNames!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["EgressProxyGatewayIds"] as? [String] {
            self.egressProxyGatewayIds = value
        }
        if let value = dict["EgressProxyIpPoolIds"] as? [String] {
            self.egressProxyIpPoolIds = value
        }
        if let value = dict["EgressProxyIpPoolNames"] as? [String] {
            self.egressProxyIpPoolNames = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Skip"] as? Int32 {
            self.skip = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListEgressProxyIpPoolsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListEgressProxyIpPoolsRequest.Tag()
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

public class ListEgressProxyIpPoolsResponseBody : Tea.TeaModel {
    public class EgressProxyIpPools : Tea.TeaModel {
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
        public var addressType: String?

        public var createTime: String?

        public var description_: String?

        public var egressProxyGatewayId: String?

        public var egressProxyIpPoolId: String?

        public var egressProxyIpPoolName: String?

        public var hashFactor: String?

        public var hashHeaderName: String?

        public var scheduler: String?

        public var status: String?

        public var tags: [ListEgressProxyIpPoolsResponseBody.EgressProxyIpPools.Tags]?

        public override init() {
            super.init()
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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.egressProxyGatewayId != nil {
                map["EgressProxyGatewayId"] = self.egressProxyGatewayId!
            }
            if self.egressProxyIpPoolId != nil {
                map["EgressProxyIpPoolId"] = self.egressProxyIpPoolId!
            }
            if self.egressProxyIpPoolName != nil {
                map["EgressProxyIpPoolName"] = self.egressProxyIpPoolName!
            }
            if self.hashFactor != nil {
                map["HashFactor"] = self.hashFactor!
            }
            if self.hashHeaderName != nil {
                map["HashHeaderName"] = self.hashHeaderName!
            }
            if self.scheduler != nil {
                map["Scheduler"] = self.scheduler!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddressType"] as? String {
                self.addressType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EgressProxyGatewayId"] as? String {
                self.egressProxyGatewayId = value
            }
            if let value = dict["EgressProxyIpPoolId"] as? String {
                self.egressProxyIpPoolId = value
            }
            if let value = dict["EgressProxyIpPoolName"] as? String {
                self.egressProxyIpPoolName = value
            }
            if let value = dict["HashFactor"] as? String {
                self.hashFactor = value
            }
            if let value = dict["HashHeaderName"] as? String {
                self.hashHeaderName = value
            }
            if let value = dict["Scheduler"] as? String {
                self.scheduler = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListEgressProxyIpPoolsResponseBody.EgressProxyIpPools.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListEgressProxyIpPoolsResponseBody.EgressProxyIpPools.Tags()
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
    public var egressProxyIpPools: [ListEgressProxyIpPoolsResponseBody.EgressProxyIpPools]?

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
        if self.egressProxyIpPools != nil {
            var tmp : [Any] = []
            for k in self.egressProxyIpPools! {
                tmp.append(k.toMap())
            }
            map["EgressProxyIpPools"] = tmp
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
        if let value = dict["EgressProxyIpPools"] as? [Any?] {
            var tmp : [ListEgressProxyIpPoolsResponseBody.EgressProxyIpPools] = []
            for v in value {
                if v != nil {
                    var model = ListEgressProxyIpPoolsResponseBody.EgressProxyIpPools()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.egressProxyIpPools = tmp
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

public class ListEgressProxyIpPoolsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEgressProxyIpPoolsResponseBody?

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
            var model = ListEgressProxyIpPoolsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEgressProxyRuleGroupsRequest : Tea.TeaModel {
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
    public var egressProxyRuleGroupIds: [String]?

    public var egressProxyRuleGroupNames: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceGroupId: String?

    public var skip: Int32?

    public var status: String?

    public var tag: [ListEgressProxyRuleGroupsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.egressProxyRuleGroupIds != nil {
            map["EgressProxyRuleGroupIds"] = self.egressProxyRuleGroupIds!
        }
        if self.egressProxyRuleGroupNames != nil {
            map["EgressProxyRuleGroupNames"] = self.egressProxyRuleGroupNames!
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
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["EgressProxyRuleGroupIds"] as? [String] {
            self.egressProxyRuleGroupIds = value
        }
        if let value = dict["EgressProxyRuleGroupNames"] as? [String] {
            self.egressProxyRuleGroupNames = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Skip"] as? Int32 {
            self.skip = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListEgressProxyRuleGroupsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListEgressProxyRuleGroupsRequest.Tag()
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

public class ListEgressProxyRuleGroupsResponseBody : Tea.TeaModel {
    public class EgressProxyRuleGroups : Tea.TeaModel {
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
        public var createTime: String?

        public var description_: String?

        public var egressProxyIpPoolId: String?

        public var egressProxyRuleGroupId: String?

        public var egressProxyRuleGroupName: String?

        public var resourceGroupId: String?

        public var status: String?

        public var tags: [ListEgressProxyRuleGroupsResponseBody.EgressProxyRuleGroups.Tags]?

        public override init() {
            super.init()
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
            if self.egressProxyIpPoolId != nil {
                map["EgressProxyIpPoolId"] = self.egressProxyIpPoolId!
            }
            if self.egressProxyRuleGroupId != nil {
                map["EgressProxyRuleGroupId"] = self.egressProxyRuleGroupId!
            }
            if self.egressProxyRuleGroupName != nil {
                map["EgressProxyRuleGroupName"] = self.egressProxyRuleGroupName!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EgressProxyIpPoolId"] as? String {
                self.egressProxyIpPoolId = value
            }
            if let value = dict["EgressProxyRuleGroupId"] as? String {
                self.egressProxyRuleGroupId = value
            }
            if let value = dict["EgressProxyRuleGroupName"] as? String {
                self.egressProxyRuleGroupName = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListEgressProxyRuleGroupsResponseBody.EgressProxyRuleGroups.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListEgressProxyRuleGroupsResponseBody.EgressProxyRuleGroups.Tags()
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
    public var egressProxyRuleGroups: [ListEgressProxyRuleGroupsResponseBody.EgressProxyRuleGroups]?

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
        if self.egressProxyRuleGroups != nil {
            var tmp : [Any] = []
            for k in self.egressProxyRuleGroups! {
                tmp.append(k.toMap())
            }
            map["EgressProxyRuleGroups"] = tmp
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
        if let value = dict["EgressProxyRuleGroups"] as? [Any?] {
            var tmp : [ListEgressProxyRuleGroupsResponseBody.EgressProxyRuleGroups] = []
            for v in value {
                if v != nil {
                    var model = ListEgressProxyRuleGroupsResponseBody.EgressProxyRuleGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.egressProxyRuleGroups = tmp
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

public class ListEgressProxyRuleGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEgressProxyRuleGroupsResponseBody?

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
            var model = ListEgressProxyRuleGroupsResponseBody()
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
    public var maxResults: Int32?

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

    public var dryRun: Bool?

    public var newResourceGroupId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
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
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RemoveIpAddressesFromEgressProxyIpPoolRequest : Tea.TeaModel {
    public class ZoneMappings : Tea.TeaModel {
        public class IpAddresses : Tea.TeaModel {
            public var eipAllocationId: String?

            public var privateIpv4Address: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eipAllocationId != nil {
                    map["EipAllocationId"] = self.eipAllocationId!
                }
                if self.privateIpv4Address != nil {
                    map["PrivateIpv4Address"] = self.privateIpv4Address!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EipAllocationId"] as? String {
                    self.eipAllocationId = value
                }
                if let value = dict["PrivateIpv4Address"] as? String {
                    self.privateIpv4Address = value
                }
            }
        }
        public var ipAddresses: [RemoveIpAddressesFromEgressProxyIpPoolRequest.ZoneMappings.IpAddresses]?

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
            if self.ipAddresses != nil {
                var tmp : [Any] = []
                for k in self.ipAddresses! {
                    tmp.append(k.toMap())
                }
                map["IpAddresses"] = tmp
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IpAddresses"] as? [Any?] {
                var tmp : [RemoveIpAddressesFromEgressProxyIpPoolRequest.ZoneMappings.IpAddresses] = []
                for v in value {
                    if v != nil {
                        var model = RemoveIpAddressesFromEgressProxyIpPoolRequest.ZoneMappings.IpAddresses()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ipAddresses = tmp
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var egressProxyIpPoolId: String?

    public var zoneMappings: [RemoveIpAddressesFromEgressProxyIpPoolRequest.ZoneMappings]?

    public override init() {
        super.init()
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
        if self.egressProxyIpPoolId != nil {
            map["EgressProxyIpPoolId"] = self.egressProxyIpPoolId!
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
        if let value = dict["EgressProxyIpPoolId"] as? String {
            self.egressProxyIpPoolId = value
        }
        if let value = dict["ZoneMappings"] as? [Any?] {
            var tmp : [RemoveIpAddressesFromEgressProxyIpPoolRequest.ZoneMappings] = []
            for v in value {
                if v != nil {
                    var model = RemoveIpAddressesFromEgressProxyIpPoolRequest.ZoneMappings()
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

public class RemoveIpAddressesFromEgressProxyIpPoolResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RemoveIpAddressesFromEgressProxyIpPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveIpAddressesFromEgressProxyIpPoolResponseBody?

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
            var model = RemoveIpAddressesFromEgressProxyIpPoolResponseBody()
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

public class UpdateEgressProxyConfigurationAttributeRequest : Tea.TeaModel {
    public class DefaultRulePhaseActions : Tea.TeaModel {
        public var postResponse: String?

        public var preDns: String?

        public var preRequest: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.postResponse != nil {
                map["PostResponse"] = self.postResponse!
            }
            if self.preDns != nil {
                map["PreDns"] = self.preDns!
            }
            if self.preRequest != nil {
                map["PreRequest"] = self.preRequest!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PostResponse"] as? String {
                self.postResponse = value
            }
            if let value = dict["PreDns"] as? String {
                self.preDns = value
            }
            if let value = dict["PreRequest"] as? String {
                self.preRequest = value
            }
        }
    }
    public class EgressProxyRuleGroups : Tea.TeaModel {
        public var egressProxyRuleGroupId: String?

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
            if self.egressProxyRuleGroupId != nil {
                map["EgressProxyRuleGroupId"] = self.egressProxyRuleGroupId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EgressProxyRuleGroupId"] as? String {
                self.egressProxyRuleGroupId = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
        }
    }
    public var clientToken: String?

    public var defaultRulePhaseActions: UpdateEgressProxyConfigurationAttributeRequest.DefaultRulePhaseActions?

    public var description_: String?

    public var dryRun: Bool?

    public var egressProxyConfigurationId: String?

    public var egressProxyConfigurationName: String?

    public var egressProxyRuleGroups: [UpdateEgressProxyConfigurationAttributeRequest.EgressProxyRuleGroups]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.defaultRulePhaseActions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.defaultRulePhaseActions != nil {
            map["DefaultRulePhaseActions"] = self.defaultRulePhaseActions?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.egressProxyConfigurationId != nil {
            map["EgressProxyConfigurationId"] = self.egressProxyConfigurationId!
        }
        if self.egressProxyConfigurationName != nil {
            map["EgressProxyConfigurationName"] = self.egressProxyConfigurationName!
        }
        if self.egressProxyRuleGroups != nil {
            var tmp : [Any] = []
            for k in self.egressProxyRuleGroups! {
                tmp.append(k.toMap())
            }
            map["EgressProxyRuleGroups"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DefaultRulePhaseActions"] as? [String: Any?] {
            var model = UpdateEgressProxyConfigurationAttributeRequest.DefaultRulePhaseActions()
            model.fromMap(value)
            self.defaultRulePhaseActions = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EgressProxyConfigurationId"] as? String {
            self.egressProxyConfigurationId = value
        }
        if let value = dict["EgressProxyConfigurationName"] as? String {
            self.egressProxyConfigurationName = value
        }
        if let value = dict["EgressProxyRuleGroups"] as? [Any?] {
            var tmp : [UpdateEgressProxyConfigurationAttributeRequest.EgressProxyRuleGroups] = []
            for v in value {
                if v != nil {
                    var model = UpdateEgressProxyConfigurationAttributeRequest.EgressProxyRuleGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.egressProxyRuleGroups = tmp
        }
    }
}

public class UpdateEgressProxyConfigurationAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateEgressProxyConfigurationAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEgressProxyConfigurationAttributeResponseBody?

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
            var model = UpdateEgressProxyConfigurationAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEgressProxyGatewayAttributeRequest : Tea.TeaModel {
    public class AddListenerProperties : Tea.TeaModel {
        public var port: Int32?

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
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public class RemoveListenerProperties : Tea.TeaModel {
        public var port: Int32?

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
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public class TlsInterceptProperties : Tea.TeaModel {
        public var privateCaCertificateId: String?

        public var tlsInterceptMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.privateCaCertificateId != nil {
                map["PrivateCaCertificateId"] = self.privateCaCertificateId!
            }
            if self.tlsInterceptMode != nil {
                map["TlsInterceptMode"] = self.tlsInterceptMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PrivateCaCertificateId"] as? String {
                self.privateCaCertificateId = value
            }
            if let value = dict["TlsInterceptMode"] as? String {
                self.tlsInterceptMode = value
            }
        }
    }
    public var addListenerProperties: [UpdateEgressProxyGatewayAttributeRequest.AddListenerProperties]?

    public var clientToken: String?

    public var defaultEgressProxyIpPoolId: String?

    public var description_: String?

    public var dryRun: Bool?

    public var egressProxyGatewayId: String?

    public var egressProxyGatewayName: String?

    public var removeListenerProperties: [UpdateEgressProxyGatewayAttributeRequest.RemoveListenerProperties]?

    public var tlsInterceptProperties: UpdateEgressProxyGatewayAttributeRequest.TlsInterceptProperties?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tlsInterceptProperties?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addListenerProperties != nil {
            var tmp : [Any] = []
            for k in self.addListenerProperties! {
                tmp.append(k.toMap())
            }
            map["AddListenerProperties"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.defaultEgressProxyIpPoolId != nil {
            map["DefaultEgressProxyIpPoolId"] = self.defaultEgressProxyIpPoolId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.egressProxyGatewayId != nil {
            map["EgressProxyGatewayId"] = self.egressProxyGatewayId!
        }
        if self.egressProxyGatewayName != nil {
            map["EgressProxyGatewayName"] = self.egressProxyGatewayName!
        }
        if self.removeListenerProperties != nil {
            var tmp : [Any] = []
            for k in self.removeListenerProperties! {
                tmp.append(k.toMap())
            }
            map["RemoveListenerProperties"] = tmp
        }
        if self.tlsInterceptProperties != nil {
            map["TlsInterceptProperties"] = self.tlsInterceptProperties?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddListenerProperties"] as? [Any?] {
            var tmp : [UpdateEgressProxyGatewayAttributeRequest.AddListenerProperties] = []
            for v in value {
                if v != nil {
                    var model = UpdateEgressProxyGatewayAttributeRequest.AddListenerProperties()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addListenerProperties = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DefaultEgressProxyIpPoolId"] as? String {
            self.defaultEgressProxyIpPoolId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EgressProxyGatewayId"] as? String {
            self.egressProxyGatewayId = value
        }
        if let value = dict["EgressProxyGatewayName"] as? String {
            self.egressProxyGatewayName = value
        }
        if let value = dict["RemoveListenerProperties"] as? [Any?] {
            var tmp : [UpdateEgressProxyGatewayAttributeRequest.RemoveListenerProperties] = []
            for v in value {
                if v != nil {
                    var model = UpdateEgressProxyGatewayAttributeRequest.RemoveListenerProperties()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.removeListenerProperties = tmp
        }
        if let value = dict["TlsInterceptProperties"] as? [String: Any?] {
            var model = UpdateEgressProxyGatewayAttributeRequest.TlsInterceptProperties()
            model.fromMap(value)
            self.tlsInterceptProperties = model
        }
    }
}

public class UpdateEgressProxyGatewayAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateEgressProxyGatewayAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEgressProxyGatewayAttributeResponseBody?

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
            var model = UpdateEgressProxyGatewayAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEgressProxyIpPoolAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var egressProxyIpPoolId: String?

    public var egressProxyIpPoolName: String?

    public var hashFactor: String?

    public var hashHeaderName: String?

    public var scheduler: String?

    public override init() {
        super.init()
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
        if self.egressProxyIpPoolId != nil {
            map["EgressProxyIpPoolId"] = self.egressProxyIpPoolId!
        }
        if self.egressProxyIpPoolName != nil {
            map["EgressProxyIpPoolName"] = self.egressProxyIpPoolName!
        }
        if self.hashFactor != nil {
            map["HashFactor"] = self.hashFactor!
        }
        if self.hashHeaderName != nil {
            map["HashHeaderName"] = self.hashHeaderName!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EgressProxyIpPoolId"] as? String {
            self.egressProxyIpPoolId = value
        }
        if let value = dict["EgressProxyIpPoolName"] as? String {
            self.egressProxyIpPoolName = value
        }
        if let value = dict["HashFactor"] as? String {
            self.hashFactor = value
        }
        if let value = dict["HashHeaderName"] as? String {
            self.hashHeaderName = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
    }
}

public class UpdateEgressProxyIpPoolAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateEgressProxyIpPoolAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEgressProxyIpPoolAttributeResponseBody?

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
            var model = UpdateEgressProxyIpPoolAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEgressProxyRuleGroupAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var egressProxyIpPoolId: String?

    public var egressProxyRuleGroupId: String?

    public var egressProxyRuleGroupName: String?

    public override init() {
        super.init()
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
        if self.egressProxyIpPoolId != nil {
            map["EgressProxyIpPoolId"] = self.egressProxyIpPoolId!
        }
        if self.egressProxyRuleGroupId != nil {
            map["EgressProxyRuleGroupId"] = self.egressProxyRuleGroupId!
        }
        if self.egressProxyRuleGroupName != nil {
            map["EgressProxyRuleGroupName"] = self.egressProxyRuleGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EgressProxyIpPoolId"] as? String {
            self.egressProxyIpPoolId = value
        }
        if let value = dict["EgressProxyRuleGroupId"] as? String {
            self.egressProxyRuleGroupId = value
        }
        if let value = dict["EgressProxyRuleGroupName"] as? String {
            self.egressProxyRuleGroupName = value
        }
    }
}

public class UpdateEgressProxyRuleGroupAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateEgressProxyRuleGroupAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEgressProxyRuleGroupAttributeResponseBody?

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
            var model = UpdateEgressProxyRuleGroupAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEgressProxyRulesAttributeRequest : Tea.TeaModel {
    public class EgressProxyRules : Tea.TeaModel {
        public class AddConditions : Tea.TeaModel {
            public var conditionKey: String?

            public var conditionOperator: String?

            public var conditionValues: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.conditionKey != nil {
                    map["ConditionKey"] = self.conditionKey!
                }
                if self.conditionOperator != nil {
                    map["ConditionOperator"] = self.conditionOperator!
                }
                if self.conditionValues != nil {
                    map["ConditionValues"] = self.conditionValues!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConditionKey"] as? String {
                    self.conditionKey = value
                }
                if let value = dict["ConditionOperator"] as? String {
                    self.conditionOperator = value
                }
                if let value = dict["ConditionValues"] as? [String] {
                    self.conditionValues = value
                }
            }
        }
        public class RemoveConditions : Tea.TeaModel {
            public var conditionKey: String?

            public var conditionOperator: String?

            public var conditionValues: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.conditionKey != nil {
                    map["ConditionKey"] = self.conditionKey!
                }
                if self.conditionOperator != nil {
                    map["ConditionOperator"] = self.conditionOperator!
                }
                if self.conditionValues != nil {
                    map["ConditionValues"] = self.conditionValues!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConditionKey"] as? String {
                    self.conditionKey = value
                }
                if let value = dict["ConditionOperator"] as? String {
                    self.conditionOperator = value
                }
                if let value = dict["ConditionValues"] as? [String] {
                    self.conditionValues = value
                }
            }
        }
        public var action: String?

        public var addConditions: [UpdateEgressProxyRulesAttributeRequest.EgressProxyRules.AddConditions]?

        public var description_: String?

        public var egressProxyRuleId: String?

        public var egressProxyRuleName: String?

        public var priority: Int32?

        public var removeConditions: [UpdateEgressProxyRulesAttributeRequest.EgressProxyRules.RemoveConditions]?

        public override init() {
            super.init()
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
            if self.addConditions != nil {
                var tmp : [Any] = []
                for k in self.addConditions! {
                    tmp.append(k.toMap())
                }
                map["AddConditions"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.egressProxyRuleId != nil {
                map["EgressProxyRuleId"] = self.egressProxyRuleId!
            }
            if self.egressProxyRuleName != nil {
                map["EgressProxyRuleName"] = self.egressProxyRuleName!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.removeConditions != nil {
                var tmp : [Any] = []
                for k in self.removeConditions! {
                    tmp.append(k.toMap())
                }
                map["RemoveConditions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Action"] as? String {
                self.action = value
            }
            if let value = dict["AddConditions"] as? [Any?] {
                var tmp : [UpdateEgressProxyRulesAttributeRequest.EgressProxyRules.AddConditions] = []
                for v in value {
                    if v != nil {
                        var model = UpdateEgressProxyRulesAttributeRequest.EgressProxyRules.AddConditions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.addConditions = tmp
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EgressProxyRuleId"] as? String {
                self.egressProxyRuleId = value
            }
            if let value = dict["EgressProxyRuleName"] as? String {
                self.egressProxyRuleName = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["RemoveConditions"] as? [Any?] {
                var tmp : [UpdateEgressProxyRulesAttributeRequest.EgressProxyRules.RemoveConditions] = []
                for v in value {
                    if v != nil {
                        var model = UpdateEgressProxyRulesAttributeRequest.EgressProxyRules.RemoveConditions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.removeConditions = tmp
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var egressProxyRuleGroupId: String?

    public var egressProxyRules: [UpdateEgressProxyRulesAttributeRequest.EgressProxyRules]?

    public override init() {
        super.init()
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
        if self.egressProxyRuleGroupId != nil {
            map["EgressProxyRuleGroupId"] = self.egressProxyRuleGroupId!
        }
        if self.egressProxyRules != nil {
            var tmp : [Any] = []
            for k in self.egressProxyRules! {
                tmp.append(k.toMap())
            }
            map["EgressProxyRules"] = tmp
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
        if let value = dict["EgressProxyRuleGroupId"] as? String {
            self.egressProxyRuleGroupId = value
        }
        if let value = dict["EgressProxyRules"] as? [Any?] {
            var tmp : [UpdateEgressProxyRulesAttributeRequest.EgressProxyRules] = []
            for v in value {
                if v != nil {
                    var model = UpdateEgressProxyRulesAttributeRequest.EgressProxyRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.egressProxyRules = tmp
        }
    }
}

public class UpdateEgressProxyRulesAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateEgressProxyRulesAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEgressProxyRulesAttributeResponseBody?

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
            var model = UpdateEgressProxyRulesAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
