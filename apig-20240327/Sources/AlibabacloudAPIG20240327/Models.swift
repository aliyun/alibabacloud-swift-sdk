import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Attachment : Tea.TeaModel {
    public var attachResourceIds: [String]?

    public var attachResourceType: String?

    public var environmentId: String?

    public var gatewayId: String?

    public var policyAttachmentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachResourceIds != nil {
            map["attachResourceIds"] = self.attachResourceIds!
        }
        if self.attachResourceType != nil {
            map["attachResourceType"] = self.attachResourceType!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.policyAttachmentId != nil {
            map["policyAttachmentId"] = self.policyAttachmentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("attachResourceIds") {
            self.attachResourceIds = dict["attachResourceIds"] as! [String]
        }
        if dict.keys.contains("attachResourceType") {
            self.attachResourceType = dict["attachResourceType"] as! String
        }
        if dict.keys.contains("environmentId") {
            self.environmentId = dict["environmentId"] as! String
        }
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("policyAttachmentId") {
            self.policyAttachmentId = dict["policyAttachmentId"] as! String
        }
    }
}

public class CheckServiceLinkedRoleResult : Tea.TeaModel {
    public var existed: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.existed != nil {
            map["existed"] = self.existed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("existed") {
            self.existed = dict["existed"] as! Bool
        }
    }
}

public class DashboardFilter : Tea.TeaModel {
    public var routeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.routeName != nil {
            map["routeName"] = self.routeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("routeName") {
            self.routeName = dict["routeName"] as! String
        }
    }
}

public class DomainInfo : Tea.TeaModel {
    public var certIdentifier: String?

    public var createFrom: String?

    public var createTimestamp: Int64?

    public var domainId: String?

    public var forceHttps: Bool?

    public var name: String?

    public var protocol_: String?

    public var status: String?

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
        if self.certIdentifier != nil {
            map["certIdentifier"] = self.certIdentifier!
        }
        if self.createFrom != nil {
            map["createFrom"] = self.createFrom!
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.domainId != nil {
            map["domainId"] = self.domainId!
        }
        if self.forceHttps != nil {
            map["forceHttps"] = self.forceHttps!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.updateTimestamp != nil {
            map["updateTimestamp"] = self.updateTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("certIdentifier") {
            self.certIdentifier = dict["certIdentifier"] as! String
        }
        if dict.keys.contains("createFrom") {
            self.createFrom = dict["createFrom"] as! String
        }
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
        if dict.keys.contains("domainId") {
            self.domainId = dict["domainId"] as! String
        }
        if dict.keys.contains("forceHttps") {
            self.forceHttps = dict["forceHttps"] as! Bool
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("updateTimestamp") {
            self.updateTimestamp = dict["updateTimestamp"] as! Int64
        }
    }
}

public class EnvironmentInfo : Tea.TeaModel {
    public var alias: String?

    public var createTimestamp: Int64?

    public var default_: Bool?

    public var description_: String?

    public var environmentId: String?

    public var gatewayInfo: GatewayInfo?

    public var name: String?

    public var subDomainInfos: [SubDomainInfo]?

    public var updateTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gatewayInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.default_ != nil {
            map["default"] = self.default_!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.gatewayInfo != nil {
            map["gatewayInfo"] = self.gatewayInfo?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.subDomainInfos != nil {
            var tmp : [Any] = []
            for k in self.subDomainInfos! {
                tmp.append(k.toMap())
            }
            map["subDomainInfos"] = tmp
        }
        if self.updateTimestamp != nil {
            map["updateTimestamp"] = self.updateTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alias") {
            self.alias = dict["alias"] as! String
        }
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
        if dict.keys.contains("default") {
            self.default_ = dict["default"] as! Bool
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("environmentId") {
            self.environmentId = dict["environmentId"] as! String
        }
        if dict.keys.contains("gatewayInfo") {
            var model = GatewayInfo()
            model.fromMap(dict["gatewayInfo"] as! [String: Any])
            self.gatewayInfo = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("subDomainInfos") {
            var tmp : [SubDomainInfo] = []
            for v in dict["subDomainInfos"] as! [Any] {
                var model = SubDomainInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subDomainInfos = tmp
        }
        if dict.keys.contains("updateTimestamp") {
            self.updateTimestamp = dict["updateTimestamp"] as! Int64
        }
    }
}

public class GatewayInfo : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class GatewayLogConfig : Tea.TeaModel {
    public class SlsConfig : Tea.TeaModel {
        public var enable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enable") {
                self.enable = dict["enable"] as! Bool
            }
        }
    }
    public var slsConfig: GatewayLogConfig.SlsConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.slsConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.slsConfig != nil {
            map["slsConfig"] = self.slsConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("slsConfig") {
            var model = GatewayLogConfig.SlsConfig()
            model.fromMap(dict["slsConfig"] as! [String: Any])
            self.slsConfig = model
        }
    }
}

public class GatewayRouteBackend : Tea.TeaModel {
    public class Services : Tea.TeaModel {
        public var gatewayServiceId: String?

        public var name: String?

        public var port: Int32?

        public var protocol_: String?

        public var version: String?

        public var weight: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gatewayServiceId != nil {
                map["gatewayServiceId"] = self.gatewayServiceId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.port != nil {
                map["port"] = self.port!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gatewayServiceId") {
                self.gatewayServiceId = dict["gatewayServiceId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("port") {
                self.port = dict["port"] as! Int32
            }
            if dict.keys.contains("protocol") {
                self.protocol_ = dict["protocol"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
            if dict.keys.contains("weight") {
                self.weight = dict["weight"] as! Double
            }
        }
    }
    public var services: [GatewayRouteBackend.Services]?

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
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["services"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("services") {
            var tmp : [GatewayRouteBackend.Services] = []
            for v in dict["services"] as! [Any] {
                var model = GatewayRouteBackend.Services()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.services = tmp
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class GatewayRouteBackendConfig : Tea.TeaModel {
    public class Services : Tea.TeaModel {
        public var gatewayServiceId: String?

        public var port: Int32?

        public var protocol_: String?

        public var sourceType: String?

        public var weight: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gatewayServiceId != nil {
                map["gatewayServiceId"] = self.gatewayServiceId!
            }
            if self.port != nil {
                map["port"] = self.port!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gatewayServiceId") {
                self.gatewayServiceId = dict["gatewayServiceId"] as! String
            }
            if dict.keys.contains("port") {
                self.port = dict["port"] as! Int32
            }
            if dict.keys.contains("protocol") {
                self.protocol_ = dict["protocol"] as! String
            }
            if dict.keys.contains("sourceType") {
                self.sourceType = dict["sourceType"] as! String
            }
            if dict.keys.contains("weight") {
                self.weight = dict["weight"] as! Double
            }
        }
    }
    public var services: [GatewayRouteBackendConfig.Services]?

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
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["services"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("services") {
            var tmp : [GatewayRouteBackendConfig.Services] = []
            for v in dict["services"] as! [Any] {
                var model = GatewayRouteBackendConfig.Services()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.services = tmp
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class GatewayRouteDomainConfig : Tea.TeaModel {
    public var domainIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainIds != nil {
            map["domainIds"] = self.domainIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("domainIds") {
            self.domainIds = dict["domainIds"] as! [String]
        }
    }
}

public class GatewayRouteDomainInfo : Tea.TeaModel {
    public class Domains : Tea.TeaModel {
        public var domainId: String?

        public var name: String?

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
            if self.domainId != nil {
                map["domainId"] = self.domainId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("domainId") {
                self.domainId = dict["domainId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("protocol") {
                self.protocol_ = dict["protocol"] as! String
            }
        }
    }
    public var domains: [GatewayRouteDomainInfo.Domains]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domains != nil {
            var tmp : [Any] = []
            for k in self.domains! {
                tmp.append(k.toMap())
            }
            map["domains"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("domains") {
            var tmp : [GatewayRouteDomainInfo.Domains] = []
            for v in dict["domains"] as! [Any] {
                var model = GatewayRouteDomainInfo.Domains()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.domains = tmp
        }
    }
}

public class GatewayService : Tea.TeaModel {
    public class Ports : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.port != nil {
                map["port"] = self.port!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("port") {
                self.port = dict["port"] as! Int32
            }
            if dict.keys.contains("protocol") {
                self.protocol_ = dict["protocol"] as! String
            }
        }
    }
    public var addresses: [String]?

    public var createTimestamp: Int64?

    public var gatewayServiceId: String?

    public var healthCheck: ServiceHealthCheck?

    public var healthStatus: String?

    public var name: String?

    public var namespace: String?

    public var ports: [GatewayService.Ports]?

    public var qualifier: String?

    public var sourceType: String?

    public var unhealthyEndpoints: [String]?

    public var updateTimestamp: Int64?

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
        if self.addresses != nil {
            map["addresses"] = self.addresses!
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.gatewayServiceId != nil {
            map["gatewayServiceId"] = self.gatewayServiceId!
        }
        if self.healthCheck != nil {
            map["healthCheck"] = self.healthCheck?.toMap()
        }
        if self.healthStatus != nil {
            map["healthStatus"] = self.healthStatus!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.ports != nil {
            var tmp : [Any] = []
            for k in self.ports! {
                tmp.append(k.toMap())
            }
            map["ports"] = tmp
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.unhealthyEndpoints != nil {
            map["unhealthyEndpoints"] = self.unhealthyEndpoints!
        }
        if self.updateTimestamp != nil {
            map["updateTimestamp"] = self.updateTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("addresses") {
            self.addresses = dict["addresses"] as! [String]
        }
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
        if dict.keys.contains("gatewayServiceId") {
            self.gatewayServiceId = dict["gatewayServiceId"] as! String
        }
        if dict.keys.contains("healthCheck") {
            var model = ServiceHealthCheck()
            model.fromMap(dict["healthCheck"] as! [String: Any])
            self.healthCheck = model
        }
        if dict.keys.contains("healthStatus") {
            self.healthStatus = dict["healthStatus"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("ports") {
            var tmp : [GatewayService.Ports] = []
            for v in dict["ports"] as! [Any] {
                var model = GatewayService.Ports()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ports = tmp
        }
        if dict.keys.contains("qualifier") {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("sourceType") {
            self.sourceType = dict["sourceType"] as! String
        }
        if dict.keys.contains("unhealthyEndpoints") {
            self.unhealthyEndpoints = dict["unhealthyEndpoints"] as! [String]
        }
        if dict.keys.contains("updateTimestamp") {
            self.updateTimestamp = dict["updateTimestamp"] as! Int64
        }
    }
}

public class GatewayServiceSource : Tea.TeaModel {
    public class K8sServiceSourceInfo : Tea.TeaModel {
        public class IngressConfig : Tea.TeaModel {
            public var enable: Bool?

            public var ingressClass: String?

            public var overrideIngressIp: Bool?

            public var watchNamespace: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.ingressClass != nil {
                    map["ingressClass"] = self.ingressClass!
                }
                if self.overrideIngressIp != nil {
                    map["overrideIngressIp"] = self.overrideIngressIp!
                }
                if self.watchNamespace != nil {
                    map["watchNamespace"] = self.watchNamespace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enable") {
                    self.enable = dict["enable"] as! Bool
                }
                if dict.keys.contains("ingressClass") {
                    self.ingressClass = dict["ingressClass"] as! String
                }
                if dict.keys.contains("overrideIngressIp") {
                    self.overrideIngressIp = dict["overrideIngressIp"] as! Bool
                }
                if dict.keys.contains("watchNamespace") {
                    self.watchNamespace = dict["watchNamespace"] as! String
                }
            }
        }
        public var clusterId: String?

        public var ingressConfig: GatewayServiceSource.K8sServiceSourceInfo.IngressConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ingressConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterId != nil {
                map["clusterId"] = self.clusterId!
            }
            if self.ingressConfig != nil {
                map["ingressConfig"] = self.ingressConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("clusterId") {
                self.clusterId = dict["clusterId"] as! String
            }
            if dict.keys.contains("ingressConfig") {
                var model = GatewayServiceSource.K8sServiceSourceInfo.IngressConfig()
                model.fromMap(dict["ingressConfig"] as! [String: Any])
                self.ingressConfig = model
            }
        }
    }
    public class NacosServiceSourceInfo : Tea.TeaModel {
        public var address: String?

        public var clusterId: String?

        public var instanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["address"] = self.address!
            }
            if self.clusterId != nil {
                map["clusterId"] = self.clusterId!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("address") {
                self.address = dict["address"] as! String
            }
            if dict.keys.contains("clusterId") {
                self.clusterId = dict["clusterId"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
        }
    }
    public var bound: Bool?

    public var createTimestamp: Int64?

    public var k8sServiceSourceInfo: GatewayServiceSource.K8sServiceSourceInfo?

    public var nacosServiceSourceInfo: GatewayServiceSource.NacosServiceSourceInfo?

    public var name: String?

    public var serviceSourceId: String?

    public var type: String?

    public var updateTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.k8sServiceSourceInfo?.validate()
        try self.nacosServiceSourceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bound != nil {
            map["bound"] = self.bound!
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.k8sServiceSourceInfo != nil {
            map["k8sServiceSourceInfo"] = self.k8sServiceSourceInfo?.toMap()
        }
        if self.nacosServiceSourceInfo != nil {
            map["nacosServiceSourceInfo"] = self.nacosServiceSourceInfo?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.serviceSourceId != nil {
            map["serviceSourceId"] = self.serviceSourceId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.updateTimestamp != nil {
            map["updateTimestamp"] = self.updateTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bound") {
            self.bound = dict["bound"] as! Bool
        }
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
        if dict.keys.contains("k8sServiceSourceInfo") {
            var model = GatewayServiceSource.K8sServiceSourceInfo()
            model.fromMap(dict["k8sServiceSourceInfo"] as! [String: Any])
            self.k8sServiceSourceInfo = model
        }
        if dict.keys.contains("nacosServiceSourceInfo") {
            var model = GatewayServiceSource.NacosServiceSourceInfo()
            model.fromMap(dict["nacosServiceSourceInfo"] as! [String: Any])
            self.nacosServiceSourceInfo = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("serviceSourceId") {
            self.serviceSourceId = dict["serviceSourceId"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("updateTimestamp") {
            self.updateTimestamp = dict["updateTimestamp"] as! Int64
        }
    }
}

public class HttpApiApiInfo : Tea.TeaModel {
    public class Environments : Tea.TeaModel {
        public class CloudProductConfig : Tea.TeaModel {
            public class ContainerServiceConfigs : Tea.TeaModel {
                public var gatewayServiceId: String?

                public var match: HttpApiBackendMatchConditions?

                public var name: String?

                public var namespace: String?

                public var port: Int32?

                public var protocol_: String?

                public var weight: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.match?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.gatewayServiceId != nil {
                        map["gatewayServiceId"] = self.gatewayServiceId!
                    }
                    if self.match != nil {
                        map["match"] = self.match?.toMap()
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.namespace != nil {
                        map["namespace"] = self.namespace!
                    }
                    if self.port != nil {
                        map["port"] = self.port!
                    }
                    if self.protocol_ != nil {
                        map["protocol"] = self.protocol_!
                    }
                    if self.weight != nil {
                        map["weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("gatewayServiceId") {
                        self.gatewayServiceId = dict["gatewayServiceId"] as! String
                    }
                    if dict.keys.contains("match") {
                        var model = HttpApiBackendMatchConditions()
                        model.fromMap(dict["match"] as! [String: Any])
                        self.match = model
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("namespace") {
                        self.namespace = dict["namespace"] as! String
                    }
                    if dict.keys.contains("port") {
                        self.port = dict["port"] as! Int32
                    }
                    if dict.keys.contains("protocol") {
                        self.protocol_ = dict["protocol"] as! String
                    }
                    if dict.keys.contains("weight") {
                        self.weight = dict["weight"] as! Int32
                    }
                }
            }
            public class FunctionConfigs : Tea.TeaModel {
                public var gatewayServiceId: String?

                public var match: HttpApiBackendMatchConditions?

                public var name: String?

                public var qualifier: String?

                public var weight: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.match?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.gatewayServiceId != nil {
                        map["gatewayServiceId"] = self.gatewayServiceId!
                    }
                    if self.match != nil {
                        map["match"] = self.match?.toMap()
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.qualifier != nil {
                        map["qualifier"] = self.qualifier!
                    }
                    if self.weight != nil {
                        map["weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("gatewayServiceId") {
                        self.gatewayServiceId = dict["gatewayServiceId"] as! String
                    }
                    if dict.keys.contains("match") {
                        var model = HttpApiBackendMatchConditions()
                        model.fromMap(dict["match"] as! [String: Any])
                        self.match = model
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("qualifier") {
                        self.qualifier = dict["qualifier"] as! String
                    }
                    if dict.keys.contains("weight") {
                        self.weight = dict["weight"] as! Int32
                    }
                }
            }
            public class MseNacosConfigs : Tea.TeaModel {
                public var gatewayServiceId: String?

                public var groupName: String?

                public var match: HttpApiBackendMatchConditions?

                public var name: String?

                public var namespace: String?

                public var weight: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.match?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.gatewayServiceId != nil {
                        map["gatewayServiceId"] = self.gatewayServiceId!
                    }
                    if self.groupName != nil {
                        map["groupName"] = self.groupName!
                    }
                    if self.match != nil {
                        map["match"] = self.match?.toMap()
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.namespace != nil {
                        map["namespace"] = self.namespace!
                    }
                    if self.weight != nil {
                        map["weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("gatewayServiceId") {
                        self.gatewayServiceId = dict["gatewayServiceId"] as! String
                    }
                    if dict.keys.contains("groupName") {
                        self.groupName = dict["groupName"] as! String
                    }
                    if dict.keys.contains("match") {
                        var model = HttpApiBackendMatchConditions()
                        model.fromMap(dict["match"] as! [String: Any])
                        self.match = model
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("namespace") {
                        self.namespace = dict["namespace"] as! String
                    }
                    if dict.keys.contains("weight") {
                        self.weight = dict["weight"] as! Int32
                    }
                }
            }
            public var cloudProductType: String?

            public var containerServiceConfigs: [HttpApiApiInfo.Environments.CloudProductConfig.ContainerServiceConfigs]?

            public var functionConfigs: [HttpApiApiInfo.Environments.CloudProductConfig.FunctionConfigs]?

            public var mseNacosConfigs: [HttpApiApiInfo.Environments.CloudProductConfig.MseNacosConfigs]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cloudProductType != nil {
                    map["cloudProductType"] = self.cloudProductType!
                }
                if self.containerServiceConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.containerServiceConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["containerServiceConfigs"] = tmp
                }
                if self.functionConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.functionConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["functionConfigs"] = tmp
                }
                if self.mseNacosConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.mseNacosConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["mseNacosConfigs"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cloudProductType") {
                    self.cloudProductType = dict["cloudProductType"] as! String
                }
                if dict.keys.contains("containerServiceConfigs") {
                    var tmp : [HttpApiApiInfo.Environments.CloudProductConfig.ContainerServiceConfigs] = []
                    for v in dict["containerServiceConfigs"] as! [Any] {
                        var model = HttpApiApiInfo.Environments.CloudProductConfig.ContainerServiceConfigs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.containerServiceConfigs = tmp
                }
                if dict.keys.contains("functionConfigs") {
                    var tmp : [HttpApiApiInfo.Environments.CloudProductConfig.FunctionConfigs] = []
                    for v in dict["functionConfigs"] as! [Any] {
                        var model = HttpApiApiInfo.Environments.CloudProductConfig.FunctionConfigs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.functionConfigs = tmp
                }
                if dict.keys.contains("mseNacosConfigs") {
                    var tmp : [HttpApiApiInfo.Environments.CloudProductConfig.MseNacosConfigs] = []
                    for v in dict["mseNacosConfigs"] as! [Any] {
                        var model = HttpApiApiInfo.Environments.CloudProductConfig.MseNacosConfigs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.mseNacosConfigs = tmp
                }
            }
        }
        public class DnsConfigs : Tea.TeaModel {
            public var dnsList: [String]?

            public var match: HttpApiBackendMatchConditions?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.match?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dnsList != nil {
                    map["dnsList"] = self.dnsList!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("dnsList") {
                    self.dnsList = dict["dnsList"] as! [String]
                }
                if dict.keys.contains("match") {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(dict["match"] as! [String: Any])
                    self.match = model
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! Int32
                }
            }
        }
        public class ServiceConfigs : Tea.TeaModel {
            public var gatewayServiceId: String?

            public var match: HttpApiBackendMatchConditions?

            public var name: String?

            public var port: String?

            public var protocol_: String?

            public var version: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.match?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gatewayServiceId != nil {
                    map["gatewayServiceId"] = self.gatewayServiceId!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.port != nil {
                    map["port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["protocol"] = self.protocol_!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gatewayServiceId") {
                    self.gatewayServiceId = dict["gatewayServiceId"] as! String
                }
                if dict.keys.contains("match") {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(dict["match"] as! [String: Any])
                    self.match = model
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("port") {
                    self.port = dict["port"] as! String
                }
                if dict.keys.contains("protocol") {
                    self.protocol_ = dict["protocol"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! Int32
                }
            }
        }
        public class VipConfigs : Tea.TeaModel {
            public var endpoints: [String]?

            public var match: HttpApiBackendMatchConditions?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.match?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpoints != nil {
                    map["endpoints"] = self.endpoints!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("endpoints") {
                    self.endpoints = dict["endpoints"] as! [String]
                }
                if dict.keys.contains("match") {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(dict["match"] as! [String: Any])
                    self.match = model
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! Int32
                }
            }
        }
        public var backendScene: String?

        public var backendType: String?

        public var cloudProductConfig: HttpApiApiInfo.Environments.CloudProductConfig?

        public var dnsConfigs: [HttpApiApiInfo.Environments.DnsConfigs]?

        public var environmentId: String?

        public var serviceConfigs: [HttpApiApiInfo.Environments.ServiceConfigs]?

        public var vipConfigs: [HttpApiApiInfo.Environments.VipConfigs]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cloudProductConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendScene != nil {
                map["backendScene"] = self.backendScene!
            }
            if self.backendType != nil {
                map["backendType"] = self.backendType!
            }
            if self.cloudProductConfig != nil {
                map["cloudProductConfig"] = self.cloudProductConfig?.toMap()
            }
            if self.dnsConfigs != nil {
                var tmp : [Any] = []
                for k in self.dnsConfigs! {
                    tmp.append(k.toMap())
                }
                map["dnsConfigs"] = tmp
            }
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            if self.serviceConfigs != nil {
                var tmp : [Any] = []
                for k in self.serviceConfigs! {
                    tmp.append(k.toMap())
                }
                map["serviceConfigs"] = tmp
            }
            if self.vipConfigs != nil {
                var tmp : [Any] = []
                for k in self.vipConfigs! {
                    tmp.append(k.toMap())
                }
                map["vipConfigs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("backendScene") {
                self.backendScene = dict["backendScene"] as! String
            }
            if dict.keys.contains("backendType") {
                self.backendType = dict["backendType"] as! String
            }
            if dict.keys.contains("cloudProductConfig") {
                var model = HttpApiApiInfo.Environments.CloudProductConfig()
                model.fromMap(dict["cloudProductConfig"] as! [String: Any])
                self.cloudProductConfig = model
            }
            if dict.keys.contains("dnsConfigs") {
                var tmp : [HttpApiApiInfo.Environments.DnsConfigs] = []
                for v in dict["dnsConfigs"] as! [Any] {
                    var model = HttpApiApiInfo.Environments.DnsConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dnsConfigs = tmp
            }
            if dict.keys.contains("environmentId") {
                self.environmentId = dict["environmentId"] as! String
            }
            if dict.keys.contains("serviceConfigs") {
                var tmp : [HttpApiApiInfo.Environments.ServiceConfigs] = []
                for v in dict["serviceConfigs"] as! [Any] {
                    var model = HttpApiApiInfo.Environments.ServiceConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceConfigs = tmp
            }
            if dict.keys.contains("vipConfigs") {
                var tmp : [HttpApiApiInfo.Environments.VipConfigs] = []
                for v in dict["vipConfigs"] as! [Any] {
                    var model = HttpApiApiInfo.Environments.VipConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.vipConfigs = tmp
            }
        }
    }
    public var basePath: String?

    public var description_: String?

    public var environments: [HttpApiApiInfo.Environments]?

    public var httpApiId: String?

    public var name: String?

    public var protocols: [String]?

    public var versionInfo: HttpApiVersionInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.versionInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basePath != nil {
            map["basePath"] = self.basePath!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.environments != nil {
            var tmp : [Any] = []
            for k in self.environments! {
                tmp.append(k.toMap())
            }
            map["environments"] = tmp
        }
        if self.httpApiId != nil {
            map["httpApiId"] = self.httpApiId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protocols != nil {
            map["protocols"] = self.protocols!
        }
        if self.versionInfo != nil {
            map["versionInfo"] = self.versionInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("basePath") {
            self.basePath = dict["basePath"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("environments") {
            var tmp : [HttpApiApiInfo.Environments] = []
            for v in dict["environments"] as! [Any] {
                var model = HttpApiApiInfo.Environments()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.environments = tmp
        }
        if dict.keys.contains("httpApiId") {
            self.httpApiId = dict["httpApiId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("protocols") {
            self.protocols = dict["protocols"] as! [String]
        }
        if dict.keys.contains("versionInfo") {
            var model = HttpApiVersionInfo()
            model.fromMap(dict["versionInfo"] as! [String: Any])
            self.versionInfo = model
        }
    }
}

public class HttpApiBackendMatchCondition : Tea.TeaModel {
    public var key: String?

    public var operator_: String?

    public var type: String?

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
            map["key"] = self.key!
        }
        if self.operator_ != nil {
            map["operator"] = self.operator_!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("key") {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("operator") {
            self.operator_ = dict["operator"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
    }
}

public class HttpApiBackendMatchConditions : Tea.TeaModel {
    public var conditions: [HttpApiBackendMatchCondition]?

    public var default_: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conditions != nil {
            var tmp : [Any] = []
            for k in self.conditions! {
                tmp.append(k.toMap())
            }
            map["conditions"] = tmp
        }
        if self.default_ != nil {
            map["default"] = self.default_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("conditions") {
            var tmp : [HttpApiBackendMatchCondition] = []
            for v in dict["conditions"] as! [Any] {
                var model = HttpApiBackendMatchCondition()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conditions = tmp
        }
        if dict.keys.contains("default") {
            self.default_ = dict["default"] as! Bool
        }
    }
}

public class HttpApiDomainInfo : Tea.TeaModel {
    public var domainId: String?

    public var name: String?

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
        if self.domainId != nil {
            map["domainId"] = self.domainId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("domainId") {
            self.domainId = dict["domainId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
    }
}

public class HttpApiInfoByName : Tea.TeaModel {
    public var name: String?

    public var versionEnabled: Bool?

    public var versionedHttpApis: [HttpApiApiInfo]?

    public override init() {
        super.init()
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
            map["name"] = self.name!
        }
        if self.versionEnabled != nil {
            map["versionEnabled"] = self.versionEnabled!
        }
        if self.versionedHttpApis != nil {
            var tmp : [Any] = []
            for k in self.versionedHttpApis! {
                tmp.append(k.toMap())
            }
            map["versionedHttpApis"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("versionEnabled") {
            self.versionEnabled = dict["versionEnabled"] as! Bool
        }
        if dict.keys.contains("versionedHttpApis") {
            var tmp : [HttpApiApiInfo] = []
            for v in dict["versionedHttpApis"] as! [Any] {
                var model = HttpApiApiInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.versionedHttpApis = tmp
        }
    }
}

public class HttpApiMockContract : Tea.TeaModel {
    public var enable: Bool?

    public var responseCode: Int32?

    public var responseContent: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.responseCode != nil {
            map["responseCode"] = self.responseCode!
        }
        if self.responseContent != nil {
            map["responseContent"] = self.responseContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("responseCode") {
            self.responseCode = dict["responseCode"] as! Int32
        }
        if dict.keys.contains("responseContent") {
            self.responseContent = dict["responseContent"] as! String
        }
    }
}

public class HttpApiOperation : Tea.TeaModel {
    public var description_: String?

    public var method: String?

    public var mock: HttpApiMockContract?

    public var name: String?

    public var path: String?

    public var request: HttpApiRequestContract?

    public var response: HttpApiResponseContract?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.mock?.validate()
        try self.request?.validate()
        try self.response?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.method != nil {
            map["method"] = self.method!
        }
        if self.mock != nil {
            map["mock"] = self.mock?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.request != nil {
            map["request"] = self.request?.toMap()
        }
        if self.response != nil {
            map["response"] = self.response?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("method") {
            self.method = dict["method"] as! String
        }
        if dict.keys.contains("mock") {
            var model = HttpApiMockContract()
            model.fromMap(dict["mock"] as! [String: Any])
            self.mock = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("request") {
            var model = HttpApiRequestContract()
            model.fromMap(dict["request"] as! [String: Any])
            self.request = model
        }
        if dict.keys.contains("response") {
            var model = HttpApiResponseContract()
            model.fromMap(dict["response"] as! [String: Any])
            self.response = model
        }
    }
}

public class HttpApiOperationInfo : Tea.TeaModel {
    public var createTimestamp: Int64?

    public var description_: String?

    public var method: String?

    public var mock: HttpApiMockContract?

    public var name: String?

    public var operationId: String?

    public var path: String?

    public var request: HttpApiRequestContract?

    public var response: HttpApiResponseContract?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.mock?.validate()
        try self.request?.validate()
        try self.response?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.method != nil {
            map["method"] = self.method!
        }
        if self.mock != nil {
            map["mock"] = self.mock?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.operationId != nil {
            map["operationId"] = self.operationId!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.request != nil {
            map["request"] = self.request?.toMap()
        }
        if self.response != nil {
            map["response"] = self.response?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("method") {
            self.method = dict["method"] as! String
        }
        if dict.keys.contains("mock") {
            var model = HttpApiMockContract()
            model.fromMap(dict["mock"] as! [String: Any])
            self.mock = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("operationId") {
            self.operationId = dict["operationId"] as! String
        }
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("request") {
            var model = HttpApiRequestContract()
            model.fromMap(dict["request"] as! [String: Any])
            self.request = model
        }
        if dict.keys.contains("response") {
            var model = HttpApiResponseContract()
            model.fromMap(dict["response"] as! [String: Any])
            self.response = model
        }
    }
}

public class HttpApiParameter : Tea.TeaModel {
    public var defaultValue: String?

    public var description_: String?

    public var exampleValue: String?

    public var name: String?

    public var required_: Bool?

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
        if self.defaultValue != nil {
            map["defaultValue"] = self.defaultValue!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.exampleValue != nil {
            map["exampleValue"] = self.exampleValue!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.required_ != nil {
            map["required"] = self.required_!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("defaultValue") {
            self.defaultValue = dict["defaultValue"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("exampleValue") {
            self.exampleValue = dict["exampleValue"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("required") {
            self.required_ = dict["required"] as! Bool
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class HttpApiPublishRevisionInfo : Tea.TeaModel {
    public class CloudProductConfig : Tea.TeaModel {
        public class ContainerServiceConfigs : Tea.TeaModel {
            public var gatewayServiceId: String?

            public var match: HttpApiBackendMatchConditions?

            public var name: String?

            public var namespace: String?

            public var port: Int32?

            public var protocol_: String?

            public var weight: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.match?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gatewayServiceId != nil {
                    map["gatewayServiceId"] = self.gatewayServiceId!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.namespace != nil {
                    map["namespace"] = self.namespace!
                }
                if self.port != nil {
                    map["port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["protocol"] = self.protocol_!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gatewayServiceId") {
                    self.gatewayServiceId = dict["gatewayServiceId"] as! String
                }
                if dict.keys.contains("match") {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(dict["match"] as! [String: Any])
                    self.match = model
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("namespace") {
                    self.namespace = dict["namespace"] as! String
                }
                if dict.keys.contains("port") {
                    self.port = dict["port"] as! Int32
                }
                if dict.keys.contains("protocol") {
                    self.protocol_ = dict["protocol"] as! String
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! String
                }
            }
        }
        public class FunctionConfigs : Tea.TeaModel {
            public var gatewayServiceId: String?

            public var match: HttpApiBackendMatchConditions?

            public var name: String?

            public var qualifier: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.match?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gatewayServiceId != nil {
                    map["gatewayServiceId"] = self.gatewayServiceId!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.qualifier != nil {
                    map["qualifier"] = self.qualifier!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gatewayServiceId") {
                    self.gatewayServiceId = dict["gatewayServiceId"] as! String
                }
                if dict.keys.contains("match") {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(dict["match"] as! [String: Any])
                    self.match = model
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("qualifier") {
                    self.qualifier = dict["qualifier"] as! String
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! Int32
                }
            }
        }
        public class MseNacosConfigs : Tea.TeaModel {
            public var gatewayServiceId: String?

            public var groupName: String?

            public var match: HttpApiBackendMatchConditions?

            public var name: String?

            public var namespace: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.match?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gatewayServiceId != nil {
                    map["gatewayServiceId"] = self.gatewayServiceId!
                }
                if self.groupName != nil {
                    map["groupName"] = self.groupName!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.namespace != nil {
                    map["namespace"] = self.namespace!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gatewayServiceId") {
                    self.gatewayServiceId = dict["gatewayServiceId"] as! String
                }
                if dict.keys.contains("groupName") {
                    self.groupName = dict["groupName"] as! String
                }
                if dict.keys.contains("match") {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(dict["match"] as! [String: Any])
                    self.match = model
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("namespace") {
                    self.namespace = dict["namespace"] as! String
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! Int32
                }
            }
        }
        public var cloudProductType: String?

        public var containerServiceConfigs: [HttpApiPublishRevisionInfo.CloudProductConfig.ContainerServiceConfigs]?

        public var functionConfigs: [HttpApiPublishRevisionInfo.CloudProductConfig.FunctionConfigs]?

        public var mseNacosConfigs: [HttpApiPublishRevisionInfo.CloudProductConfig.MseNacosConfigs]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cloudProductType != nil {
                map["cloudProductType"] = self.cloudProductType!
            }
            if self.containerServiceConfigs != nil {
                var tmp : [Any] = []
                for k in self.containerServiceConfigs! {
                    tmp.append(k.toMap())
                }
                map["containerServiceConfigs"] = tmp
            }
            if self.functionConfigs != nil {
                var tmp : [Any] = []
                for k in self.functionConfigs! {
                    tmp.append(k.toMap())
                }
                map["functionConfigs"] = tmp
            }
            if self.mseNacosConfigs != nil {
                var tmp : [Any] = []
                for k in self.mseNacosConfigs! {
                    tmp.append(k.toMap())
                }
                map["mseNacosConfigs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cloudProductType") {
                self.cloudProductType = dict["cloudProductType"] as! String
            }
            if dict.keys.contains("containerServiceConfigs") {
                var tmp : [HttpApiPublishRevisionInfo.CloudProductConfig.ContainerServiceConfigs] = []
                for v in dict["containerServiceConfigs"] as! [Any] {
                    var model = HttpApiPublishRevisionInfo.CloudProductConfig.ContainerServiceConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.containerServiceConfigs = tmp
            }
            if dict.keys.contains("functionConfigs") {
                var tmp : [HttpApiPublishRevisionInfo.CloudProductConfig.FunctionConfigs] = []
                for v in dict["functionConfigs"] as! [Any] {
                    var model = HttpApiPublishRevisionInfo.CloudProductConfig.FunctionConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.functionConfigs = tmp
            }
            if dict.keys.contains("mseNacosConfigs") {
                var tmp : [HttpApiPublishRevisionInfo.CloudProductConfig.MseNacosConfigs] = []
                for v in dict["mseNacosConfigs"] as! [Any] {
                    var model = HttpApiPublishRevisionInfo.CloudProductConfig.MseNacosConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.mseNacosConfigs = tmp
            }
        }
    }
    public class DnsConfigs : Tea.TeaModel {
        public var dnsList: [String]?

        public var match: HttpApiBackendMatchConditions?

        public var weight: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.match?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dnsList != nil {
                map["dnsList"] = self.dnsList!
            }
            if self.match != nil {
                map["match"] = self.match?.toMap()
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dnsList") {
                self.dnsList = dict["dnsList"] as! [String]
            }
            if dict.keys.contains("match") {
                var model = HttpApiBackendMatchConditions()
                model.fromMap(dict["match"] as! [String: Any])
                self.match = model
            }
            if dict.keys.contains("weight") {
                self.weight = dict["weight"] as! Int32
            }
        }
    }
    public class EnvironmentInfo : Tea.TeaModel {
        public class GatewayInfo : Tea.TeaModel {
            public var gatewayId: String?

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
                if self.gatewayId != nil {
                    map["gatewayId"] = self.gatewayId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gatewayId") {
                    self.gatewayId = dict["gatewayId"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
            }
        }
        public var alias: String?

        public var environmentId: String?

        public var gatewayInfo: HttpApiPublishRevisionInfo.EnvironmentInfo.GatewayInfo?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.gatewayInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["alias"] = self.alias!
            }
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            if self.gatewayInfo != nil {
                map["gatewayInfo"] = self.gatewayInfo?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alias") {
                self.alias = dict["alias"] as! String
            }
            if dict.keys.contains("environmentId") {
                self.environmentId = dict["environmentId"] as! String
            }
            if dict.keys.contains("gatewayInfo") {
                var model = HttpApiPublishRevisionInfo.EnvironmentInfo.GatewayInfo()
                model.fromMap(dict["gatewayInfo"] as! [String: Any])
                self.gatewayInfo = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public class ServiceConfigs : Tea.TeaModel {
        public var gatewayServiceId: String?

        public var match: HttpApiBackendMatchConditions?

        public var port: Int32?

        public var protocol_: String?

        public var version: String?

        public var weight: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.match?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gatewayServiceId != nil {
                map["gatewayServiceId"] = self.gatewayServiceId!
            }
            if self.match != nil {
                map["match"] = self.match?.toMap()
            }
            if self.port != nil {
                map["port"] = self.port!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gatewayServiceId") {
                self.gatewayServiceId = dict["gatewayServiceId"] as! String
            }
            if dict.keys.contains("match") {
                var model = HttpApiBackendMatchConditions()
                model.fromMap(dict["match"] as! [String: Any])
                self.match = model
            }
            if dict.keys.contains("port") {
                self.port = dict["port"] as! Int32
            }
            if dict.keys.contains("protocol") {
                self.protocol_ = dict["protocol"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
            if dict.keys.contains("weight") {
                self.weight = dict["weight"] as! Int32
            }
        }
    }
    public class VipConfigs : Tea.TeaModel {
        public var endpoints: [String]?

        public var match: HttpApiBackendMatchConditions?

        public var weight: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.match?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpoints != nil {
                map["endpoints"] = self.endpoints!
            }
            if self.match != nil {
                map["match"] = self.match?.toMap()
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("endpoints") {
                self.endpoints = dict["endpoints"] as! [String]
            }
            if dict.keys.contains("match") {
                var model = HttpApiBackendMatchConditions()
                model.fromMap(dict["match"] as! [String: Any])
                self.match = model
            }
            if dict.keys.contains("weight") {
                self.weight = dict["weight"] as! Int32
            }
        }
    }
    public var backendScene: String?

    public var backendType: String?

    public var cloudProductConfig: HttpApiPublishRevisionInfo.CloudProductConfig?

    public var createTimestamp: Int64?

    public var customDomains: [HttpApiDomainInfo]?

    public var dnsConfigs: [HttpApiPublishRevisionInfo.DnsConfigs]?

    public var environmentInfo: HttpApiPublishRevisionInfo.EnvironmentInfo?

    public var isCurrentVersion: Bool?

    public var operations: [HttpApiOperationInfo]?

    public var revisionId: String?

    public var serviceConfigs: [HttpApiPublishRevisionInfo.ServiceConfigs]?

    public var subDomains: [HttpApiDomainInfo]?

    public var vipConfigs: [HttpApiPublishRevisionInfo.VipConfigs]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cloudProductConfig?.validate()
        try self.environmentInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendScene != nil {
            map["backendScene"] = self.backendScene!
        }
        if self.backendType != nil {
            map["backendType"] = self.backendType!
        }
        if self.cloudProductConfig != nil {
            map["cloudProductConfig"] = self.cloudProductConfig?.toMap()
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.customDomains != nil {
            var tmp : [Any] = []
            for k in self.customDomains! {
                tmp.append(k.toMap())
            }
            map["customDomains"] = tmp
        }
        if self.dnsConfigs != nil {
            var tmp : [Any] = []
            for k in self.dnsConfigs! {
                tmp.append(k.toMap())
            }
            map["dnsConfigs"] = tmp
        }
        if self.environmentInfo != nil {
            map["environmentInfo"] = self.environmentInfo?.toMap()
        }
        if self.isCurrentVersion != nil {
            map["isCurrentVersion"] = self.isCurrentVersion!
        }
        if self.operations != nil {
            var tmp : [Any] = []
            for k in self.operations! {
                tmp.append(k.toMap())
            }
            map["operations"] = tmp
        }
        if self.revisionId != nil {
            map["revisionId"] = self.revisionId!
        }
        if self.serviceConfigs != nil {
            var tmp : [Any] = []
            for k in self.serviceConfigs! {
                tmp.append(k.toMap())
            }
            map["serviceConfigs"] = tmp
        }
        if self.subDomains != nil {
            var tmp : [Any] = []
            for k in self.subDomains! {
                tmp.append(k.toMap())
            }
            map["subDomains"] = tmp
        }
        if self.vipConfigs != nil {
            var tmp : [Any] = []
            for k in self.vipConfigs! {
                tmp.append(k.toMap())
            }
            map["vipConfigs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("backendScene") {
            self.backendScene = dict["backendScene"] as! String
        }
        if dict.keys.contains("backendType") {
            self.backendType = dict["backendType"] as! String
        }
        if dict.keys.contains("cloudProductConfig") {
            var model = HttpApiPublishRevisionInfo.CloudProductConfig()
            model.fromMap(dict["cloudProductConfig"] as! [String: Any])
            self.cloudProductConfig = model
        }
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
        if dict.keys.contains("customDomains") {
            var tmp : [HttpApiDomainInfo] = []
            for v in dict["customDomains"] as! [Any] {
                var model = HttpApiDomainInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customDomains = tmp
        }
        if dict.keys.contains("dnsConfigs") {
            var tmp : [HttpApiPublishRevisionInfo.DnsConfigs] = []
            for v in dict["dnsConfigs"] as! [Any] {
                var model = HttpApiPublishRevisionInfo.DnsConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dnsConfigs = tmp
        }
        if dict.keys.contains("environmentInfo") {
            var model = HttpApiPublishRevisionInfo.EnvironmentInfo()
            model.fromMap(dict["environmentInfo"] as! [String: Any])
            self.environmentInfo = model
        }
        if dict.keys.contains("isCurrentVersion") {
            self.isCurrentVersion = dict["isCurrentVersion"] as! Bool
        }
        if dict.keys.contains("operations") {
            var tmp : [HttpApiOperationInfo] = []
            for v in dict["operations"] as! [Any] {
                var model = HttpApiOperationInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.operations = tmp
        }
        if dict.keys.contains("revisionId") {
            self.revisionId = dict["revisionId"] as! String
        }
        if dict.keys.contains("serviceConfigs") {
            var tmp : [HttpApiPublishRevisionInfo.ServiceConfigs] = []
            for v in dict["serviceConfigs"] as! [Any] {
                var model = HttpApiPublishRevisionInfo.ServiceConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceConfigs = tmp
        }
        if dict.keys.contains("subDomains") {
            var tmp : [HttpApiDomainInfo] = []
            for v in dict["subDomains"] as! [Any] {
                var model = HttpApiDomainInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subDomains = tmp
        }
        if dict.keys.contains("vipConfigs") {
            var tmp : [HttpApiPublishRevisionInfo.VipConfigs] = []
            for v in dict["vipConfigs"] as! [Any] {
                var model = HttpApiPublishRevisionInfo.VipConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.vipConfigs = tmp
        }
    }
}

public class HttpApiRequestContract : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var contentType: String?

        public var description_: String?

        public var example: String?

        public var jsonSchema: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contentType != nil {
                map["contentType"] = self.contentType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.example != nil {
                map["example"] = self.example!
            }
            if self.jsonSchema != nil {
                map["jsonSchema"] = self.jsonSchema!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("contentType") {
                self.contentType = dict["contentType"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("example") {
                self.example = dict["example"] as! String
            }
            if dict.keys.contains("jsonSchema") {
                self.jsonSchema = dict["jsonSchema"] as! String
            }
        }
    }
    public var body: HttpApiRequestContract.Body?

    public var headerParameters: [HttpApiParameter]?

    public var pathParameters: [HttpApiParameter]?

    public var queryParameters: [HttpApiParameter]?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.headerParameters != nil {
            var tmp : [Any] = []
            for k in self.headerParameters! {
                tmp.append(k.toMap())
            }
            map["headerParameters"] = tmp
        }
        if self.pathParameters != nil {
            var tmp : [Any] = []
            for k in self.pathParameters! {
                tmp.append(k.toMap())
            }
            map["pathParameters"] = tmp
        }
        if self.queryParameters != nil {
            var tmp : [Any] = []
            for k in self.queryParameters! {
                tmp.append(k.toMap())
            }
            map["queryParameters"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = HttpApiRequestContract.Body()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("headerParameters") {
            var tmp : [HttpApiParameter] = []
            for v in dict["headerParameters"] as! [Any] {
                var model = HttpApiParameter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.headerParameters = tmp
        }
        if dict.keys.contains("pathParameters") {
            var tmp : [HttpApiParameter] = []
            for v in dict["pathParameters"] as! [Any] {
                var model = HttpApiParameter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pathParameters = tmp
        }
        if dict.keys.contains("queryParameters") {
            var tmp : [HttpApiParameter] = []
            for v in dict["queryParameters"] as! [Any] {
                var model = HttpApiParameter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.queryParameters = tmp
        }
    }
}

public class HttpApiResponseContract : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var code: Int32?

        public var description_: String?

        public var example: String?

        public var jsonSchema: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.example != nil {
                map["example"] = self.example!
            }
            if self.jsonSchema != nil {
                map["jsonSchema"] = self.jsonSchema!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("code") {
                self.code = dict["code"] as! Int32
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("example") {
                self.example = dict["example"] as! String
            }
            if dict.keys.contains("jsonSchema") {
                self.jsonSchema = dict["jsonSchema"] as! String
            }
        }
    }
    public var contentType: String?

    public var items: [HttpApiResponseContract.Items]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("contentType") {
            self.contentType = dict["contentType"] as! String
        }
        if dict.keys.contains("items") {
            var tmp : [HttpApiResponseContract.Items] = []
            for v in dict["items"] as! [Any] {
                var model = HttpApiResponseContract.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
    }
}

public class HttpApiVersionConfig : Tea.TeaModel {
    public var enable: Bool?

    public var headerName: String?

    public var queryName: String?

    public var scheme: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.headerName != nil {
            map["headerName"] = self.headerName!
        }
        if self.queryName != nil {
            map["queryName"] = self.queryName!
        }
        if self.scheme != nil {
            map["scheme"] = self.scheme!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("headerName") {
            self.headerName = dict["headerName"] as! String
        }
        if dict.keys.contains("queryName") {
            self.queryName = dict["queryName"] as! String
        }
        if dict.keys.contains("scheme") {
            self.scheme = dict["scheme"] as! String
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! String
        }
    }
}

public class HttpApiVersionInfo : Tea.TeaModel {
    public var enable: Bool?

    public var headerName: String?

    public var queryName: String?

    public var scheme: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.headerName != nil {
            map["headerName"] = self.headerName!
        }
        if self.queryName != nil {
            map["queryName"] = self.queryName!
        }
        if self.scheme != nil {
            map["scheme"] = self.scheme!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("headerName") {
            self.headerName = dict["headerName"] as! String
        }
        if dict.keys.contains("queryName") {
            self.queryName = dict["queryName"] as! String
        }
        if dict.keys.contains("scheme") {
            self.scheme = dict["scheme"] as! String
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! String
        }
    }
}

public class HttpDubboTranscoder : Tea.TeaModel {
    public class MothedMapList : Tea.TeaModel {
        public class ParamMapsList : Tea.TeaModel {
            public var extractKey: String?

            public var extractKeySpec: String?

            public var mappingType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.extractKey != nil {
                    map["extractKey"] = self.extractKey!
                }
                if self.extractKeySpec != nil {
                    map["extractKeySpec"] = self.extractKeySpec!
                }
                if self.mappingType != nil {
                    map["mappingType"] = self.mappingType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("extractKey") {
                    self.extractKey = dict["extractKey"] as! String
                }
                if dict.keys.contains("extractKeySpec") {
                    self.extractKeySpec = dict["extractKeySpec"] as! String
                }
                if dict.keys.contains("mappingType") {
                    self.mappingType = dict["mappingType"] as! String
                }
            }
        }
        public var dubboMothedName: String?

        public var httpMothed: String?

        public var mothedpath: String?

        public var paramMapsList: [HttpDubboTranscoder.MothedMapList.ParamMapsList]?

        public var passThroughAllHeaders: String?

        public var passThroughList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dubboMothedName != nil {
                map["dubboMothedName"] = self.dubboMothedName!
            }
            if self.httpMothed != nil {
                map["httpMothed"] = self.httpMothed!
            }
            if self.mothedpath != nil {
                map["mothedpath"] = self.mothedpath!
            }
            if self.paramMapsList != nil {
                var tmp : [Any] = []
                for k in self.paramMapsList! {
                    tmp.append(k.toMap())
                }
                map["paramMapsList"] = tmp
            }
            if self.passThroughAllHeaders != nil {
                map["passThroughAllHeaders"] = self.passThroughAllHeaders!
            }
            if self.passThroughList != nil {
                map["passThroughList"] = self.passThroughList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dubboMothedName") {
                self.dubboMothedName = dict["dubboMothedName"] as! String
            }
            if dict.keys.contains("httpMothed") {
                self.httpMothed = dict["httpMothed"] as! String
            }
            if dict.keys.contains("mothedpath") {
                self.mothedpath = dict["mothedpath"] as! String
            }
            if dict.keys.contains("paramMapsList") {
                var tmp : [HttpDubboTranscoder.MothedMapList.ParamMapsList] = []
                for v in dict["paramMapsList"] as! [Any] {
                    var model = HttpDubboTranscoder.MothedMapList.ParamMapsList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.paramMapsList = tmp
            }
            if dict.keys.contains("passThroughAllHeaders") {
                self.passThroughAllHeaders = dict["passThroughAllHeaders"] as! String
            }
            if dict.keys.contains("passThroughList") {
                self.passThroughList = dict["passThroughList"] as! [String]
            }
        }
    }
    public var dubboServiceGroup: String?

    public var dubboServiceName: String?

    public var dubboServiceVersion: String?

    public var mothedMapList: [HttpDubboTranscoder.MothedMapList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dubboServiceGroup != nil {
            map["dubboServiceGroup"] = self.dubboServiceGroup!
        }
        if self.dubboServiceName != nil {
            map["dubboServiceName"] = self.dubboServiceName!
        }
        if self.dubboServiceVersion != nil {
            map["dubboServiceVersion"] = self.dubboServiceVersion!
        }
        if self.mothedMapList != nil {
            var tmp : [Any] = []
            for k in self.mothedMapList! {
                tmp.append(k.toMap())
            }
            map["mothedMapList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dubboServiceGroup") {
            self.dubboServiceGroup = dict["dubboServiceGroup"] as! String
        }
        if dict.keys.contains("dubboServiceName") {
            self.dubboServiceName = dict["dubboServiceName"] as! String
        }
        if dict.keys.contains("dubboServiceVersion") {
            self.dubboServiceVersion = dict["dubboServiceVersion"] as! String
        }
        if dict.keys.contains("mothedMapList") {
            var tmp : [HttpDubboTranscoder.MothedMapList] = []
            for v in dict["mothedMapList"] as! [Any] {
                var model = HttpDubboTranscoder.MothedMapList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.mothedMapList = tmp
        }
    }
}

public class HttpRouteMatch : Tea.TeaModel {
    public class Headers : Tea.TeaModel {
        public var name: String?

        public var type: String?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public class Path : Tea.TeaModel {
        public var type: String?

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
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public class QueryParams : Tea.TeaModel {
        public var name: String?

        public var type: String?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var headers: [HttpRouteMatch.Headers]?

    public var ignoreUriCase: Bool?

    public var methods: [String]?

    public var path: HttpRouteMatch.Path?

    public var queryParams: [HttpRouteMatch.QueryParams]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.path?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            var tmp : [Any] = []
            for k in self.headers! {
                tmp.append(k.toMap())
            }
            map["headers"] = tmp
        }
        if self.ignoreUriCase != nil {
            map["ignoreUriCase"] = self.ignoreUriCase!
        }
        if self.methods != nil {
            map["methods"] = self.methods!
        }
        if self.path != nil {
            map["path"] = self.path?.toMap()
        }
        if self.queryParams != nil {
            var tmp : [Any] = []
            for k in self.queryParams! {
                tmp.append(k.toMap())
            }
            map["queryParams"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            var tmp : [HttpRouteMatch.Headers] = []
            for v in dict["headers"] as! [Any] {
                var model = HttpRouteMatch.Headers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.headers = tmp
        }
        if dict.keys.contains("ignoreUriCase") {
            self.ignoreUriCase = dict["ignoreUriCase"] as! Bool
        }
        if dict.keys.contains("methods") {
            self.methods = dict["methods"] as! [String]
        }
        if dict.keys.contains("path") {
            var model = HttpRouteMatch.Path()
            model.fromMap(dict["path"] as! [String: Any])
            self.path = model
        }
        if dict.keys.contains("queryParams") {
            var tmp : [HttpRouteMatch.QueryParams] = []
            for v in dict["queryParams"] as! [Any] {
                var model = HttpRouteMatch.QueryParams()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.queryParams = tmp
        }
    }
}

public class PolicyClassInfo : Tea.TeaModel {
    public var alias: String?

    public var attachableResourceTypes: [String]?

    public var classId: String?

    public var configExample: String?

    public var deprecated: Bool?

    public var description_: String?

    public var direction: String?

    public var enableLog: Bool?

    public var executePriority: String?

    public var executeStage: String?

    public var name: String?

    public var type: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.attachableResourceTypes != nil {
            map["attachableResourceTypes"] = self.attachableResourceTypes!
        }
        if self.classId != nil {
            map["classId"] = self.classId!
        }
        if self.configExample != nil {
            map["configExample"] = self.configExample!
        }
        if self.deprecated != nil {
            map["deprecated"] = self.deprecated!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.direction != nil {
            map["direction"] = self.direction!
        }
        if self.enableLog != nil {
            map["enableLog"] = self.enableLog!
        }
        if self.executePriority != nil {
            map["executePriority"] = self.executePriority!
        }
        if self.executeStage != nil {
            map["executeStage"] = self.executeStage!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alias") {
            self.alias = dict["alias"] as! String
        }
        if dict.keys.contains("attachableResourceTypes") {
            self.attachableResourceTypes = dict["attachableResourceTypes"] as! [String]
        }
        if dict.keys.contains("classId") {
            self.classId = dict["classId"] as! String
        }
        if dict.keys.contains("configExample") {
            self.configExample = dict["configExample"] as! String
        }
        if dict.keys.contains("deprecated") {
            self.deprecated = dict["deprecated"] as! Bool
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("direction") {
            self.direction = dict["direction"] as! String
        }
        if dict.keys.contains("enableLog") {
            self.enableLog = dict["enableLog"] as! Bool
        }
        if dict.keys.contains("executePriority") {
            self.executePriority = dict["executePriority"] as! String
        }
        if dict.keys.contains("executeStage") {
            self.executeStage = dict["executeStage"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! String
        }
    }
}

public class PolicyDetailInfo : Tea.TeaModel {
    public var classId: String?

    public var className: String?

    public var config: String?

    public var description_: String?

    public var name: String?

    public var policyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classId != nil {
            map["classId"] = self.classId!
        }
        if self.className != nil {
            map["className"] = self.className!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.policyId != nil {
            map["policyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("classId") {
            self.classId = dict["classId"] as! String
        }
        if dict.keys.contains("className") {
            self.className = dict["className"] as! String
        }
        if dict.keys.contains("config") {
            self.config = dict["config"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("policyId") {
            self.policyId = dict["policyId"] as! String
        }
    }
}

public class PolicyInfo : Tea.TeaModel {
    public var attachments: [Attachment]?

    public var classAlias: String?

    public var className: String?

    public var config: String?

    public var direction: String?

    public var executePriority: String?

    public var executeStage: String?

    public var name: String?

    public var policyId: String?

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
        if self.attachments != nil {
            var tmp : [Any] = []
            for k in self.attachments! {
                tmp.append(k.toMap())
            }
            map["attachments"] = tmp
        }
        if self.classAlias != nil {
            map["classAlias"] = self.classAlias!
        }
        if self.className != nil {
            map["className"] = self.className!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.direction != nil {
            map["direction"] = self.direction!
        }
        if self.executePriority != nil {
            map["executePriority"] = self.executePriority!
        }
        if self.executeStage != nil {
            map["executeStage"] = self.executeStage!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.policyId != nil {
            map["policyId"] = self.policyId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("attachments") {
            var tmp : [Attachment] = []
            for v in dict["attachments"] as! [Any] {
                var model = Attachment()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.attachments = tmp
        }
        if dict.keys.contains("classAlias") {
            self.classAlias = dict["classAlias"] as! String
        }
        if dict.keys.contains("className") {
            self.className = dict["className"] as! String
        }
        if dict.keys.contains("config") {
            self.config = dict["config"] as! String
        }
        if dict.keys.contains("direction") {
            self.direction = dict["direction"] as! String
        }
        if dict.keys.contains("executePriority") {
            self.executePriority = dict["executePriority"] as! String
        }
        if dict.keys.contains("executeStage") {
            self.executeStage = dict["executeStage"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("policyId") {
            self.policyId = dict["policyId"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ResourceStatistic : Tea.TeaModel {
    public var resourceCount: Int32?

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
        if self.resourceCount != nil {
            map["resourceCount"] = self.resourceCount!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resourceCount") {
            self.resourceCount = dict["resourceCount"] as! Int32
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
    }
}

public class ServiceHealthCheck : Tea.TeaModel {
    public var enable: Bool?

    public var healthyThreshold: Int32?

    public var httpHost: String?

    public var httpPath: String?

    public var interval: Int32?

    public var protocol_: String?

    public var timeout: Int32?

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
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.healthyThreshold != nil {
            map["healthyThreshold"] = self.healthyThreshold!
        }
        if self.httpHost != nil {
            map["httpHost"] = self.httpHost!
        }
        if self.httpPath != nil {
            map["httpPath"] = self.httpPath!
        }
        if self.interval != nil {
            map["interval"] = self.interval!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.unhealthyThreshold != nil {
            map["unhealthyThreshold"] = self.unhealthyThreshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("healthyThreshold") {
            self.healthyThreshold = dict["healthyThreshold"] as! Int32
        }
        if dict.keys.contains("httpHost") {
            self.httpHost = dict["httpHost"] as! String
        }
        if dict.keys.contains("httpPath") {
            self.httpPath = dict["httpPath"] as! String
        }
        if dict.keys.contains("interval") {
            self.interval = dict["interval"] as! Int32
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("unhealthyThreshold") {
            self.unhealthyThreshold = dict["unhealthyThreshold"] as! Int32
        }
    }
}

public class ServiceLinkedRole : Tea.TeaModel {
    public var arn: String?

    public var assumeRolePolicyDocument: String?

    public var createDate: String?

    public var description_: String?

    public var isServiceLinkedRole: Bool?

    public var roleId: String?

    public var roleName: String?

    public var rolePrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arn != nil {
            map["arn"] = self.arn!
        }
        if self.assumeRolePolicyDocument != nil {
            map["assumeRolePolicyDocument"] = self.assumeRolePolicyDocument!
        }
        if self.createDate != nil {
            map["createDate"] = self.createDate!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.isServiceLinkedRole != nil {
            map["isServiceLinkedRole"] = self.isServiceLinkedRole!
        }
        if self.roleId != nil {
            map["roleId"] = self.roleId!
        }
        if self.roleName != nil {
            map["roleName"] = self.roleName!
        }
        if self.rolePrincipalName != nil {
            map["rolePrincipalName"] = self.rolePrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("arn") {
            self.arn = dict["arn"] as! String
        }
        if dict.keys.contains("assumeRolePolicyDocument") {
            self.assumeRolePolicyDocument = dict["assumeRolePolicyDocument"] as! String
        }
        if dict.keys.contains("createDate") {
            self.createDate = dict["createDate"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("isServiceLinkedRole") {
            self.isServiceLinkedRole = dict["isServiceLinkedRole"] as! Bool
        }
        if dict.keys.contains("roleId") {
            self.roleId = dict["roleId"] as! String
        }
        if dict.keys.contains("roleName") {
            self.roleName = dict["roleName"] as! String
        }
        if dict.keys.contains("rolePrincipalName") {
            self.rolePrincipalName = dict["rolePrincipalName"] as! String
        }
    }
}

public class SslCertMetaInfo : Tea.TeaModel {
    public var algorithm: String?

    public var certId: Int64?

    public var certIdentifier: String?

    public var certName: String?

    public var commonName: String?

    public var domain: String?

    public var domainMatchCert: Bool?

    public var fingerprint: String?

    public var instanceId: String?

    public var isChainCompleted: Bool?

    public var issuer: String?

    public var keySize: String?

    public var md5: String?

    public var notAfterTimestamp: Int64?

    public var notBeforeTimestamp: Int64?

    public var sans: String?

    public var serialNo: String?

    public var sha2: String?

    public var signAlgorithm: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithm != nil {
            map["algorithm"] = self.algorithm!
        }
        if self.certId != nil {
            map["certId"] = self.certId!
        }
        if self.certIdentifier != nil {
            map["certIdentifier"] = self.certIdentifier!
        }
        if self.certName != nil {
            map["certName"] = self.certName!
        }
        if self.commonName != nil {
            map["commonName"] = self.commonName!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.domainMatchCert != nil {
            map["domainMatchCert"] = self.domainMatchCert!
        }
        if self.fingerprint != nil {
            map["fingerprint"] = self.fingerprint!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.isChainCompleted != nil {
            map["isChainCompleted"] = self.isChainCompleted!
        }
        if self.issuer != nil {
            map["issuer"] = self.issuer!
        }
        if self.keySize != nil {
            map["keySize"] = self.keySize!
        }
        if self.md5 != nil {
            map["md5"] = self.md5!
        }
        if self.notAfterTimestamp != nil {
            map["notAfterTimestamp"] = self.notAfterTimestamp!
        }
        if self.notBeforeTimestamp != nil {
            map["notBeforeTimestamp"] = self.notBeforeTimestamp!
        }
        if self.sans != nil {
            map["sans"] = self.sans!
        }
        if self.serialNo != nil {
            map["serialNo"] = self.serialNo!
        }
        if self.sha2 != nil {
            map["sha2"] = self.sha2!
        }
        if self.signAlgorithm != nil {
            map["signAlgorithm"] = self.signAlgorithm!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("algorithm") {
            self.algorithm = dict["algorithm"] as! String
        }
        if dict.keys.contains("certId") {
            self.certId = dict["certId"] as! Int64
        }
        if dict.keys.contains("certIdentifier") {
            self.certIdentifier = dict["certIdentifier"] as! String
        }
        if dict.keys.contains("certName") {
            self.certName = dict["certName"] as! String
        }
        if dict.keys.contains("commonName") {
            self.commonName = dict["commonName"] as! String
        }
        if dict.keys.contains("domain") {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("domainMatchCert") {
            self.domainMatchCert = dict["domainMatchCert"] as! Bool
        }
        if dict.keys.contains("fingerprint") {
            self.fingerprint = dict["fingerprint"] as! String
        }
        if dict.keys.contains("instanceId") {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("isChainCompleted") {
            self.isChainCompleted = dict["isChainCompleted"] as! Bool
        }
        if dict.keys.contains("issuer") {
            self.issuer = dict["issuer"] as! String
        }
        if dict.keys.contains("keySize") {
            self.keySize = dict["keySize"] as! String
        }
        if dict.keys.contains("md5") {
            self.md5 = dict["md5"] as! String
        }
        if dict.keys.contains("notAfterTimestamp") {
            self.notAfterTimestamp = dict["notAfterTimestamp"] as! Int64
        }
        if dict.keys.contains("notBeforeTimestamp") {
            self.notBeforeTimestamp = dict["notBeforeTimestamp"] as! Int64
        }
        if dict.keys.contains("sans") {
            self.sans = dict["sans"] as! String
        }
        if dict.keys.contains("serialNo") {
            self.serialNo = dict["serialNo"] as! String
        }
        if dict.keys.contains("sha2") {
            self.sha2 = dict["sha2"] as! String
        }
        if dict.keys.contains("signAlgorithm") {
            self.signAlgorithm = dict["signAlgorithm"] as! String
        }
    }
}

public class SubDomainInfo : Tea.TeaModel {
    public var domainId: String?

    public var name: String?

    public var networkType: String?

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
        if self.domainId != nil {
            map["domainId"] = self.domainId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.networkType != nil {
            map["networkType"] = self.networkType!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("domainId") {
            self.domainId = dict["domainId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("networkType") {
            self.networkType = dict["networkType"] as! String
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
    }
}

public class AddGatewaySecurityGroupRuleRequest : Tea.TeaModel {
    public var description_: String?

    public var portRanges: [String]?

    public var securityGroupId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.portRanges != nil {
            map["portRanges"] = self.portRanges!
        }
        if self.securityGroupId != nil {
            map["securityGroupId"] = self.securityGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("portRanges") {
            self.portRanges = dict["portRanges"] as! [String]
        }
        if dict.keys.contains("securityGroupId") {
            self.securityGroupId = dict["securityGroupId"] as! String
        }
    }
}

public class AddGatewaySecurityGroupRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class AddGatewaySecurityGroupRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddGatewaySecurityGroupRuleResponseBody?

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
            var model = AddGatewaySecurityGroupRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDomainRequest : Tea.TeaModel {
    public var caCertIndentifier: String?

    public var certIndentifier: String?

    public var forceHttps: Bool?

    public var http2Option: String?

    public var name: String?

    public var protocol_: String?

    public var tlsMax: String?

    public var tlsMin: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caCertIndentifier != nil {
            map["caCertIndentifier"] = self.caCertIndentifier!
        }
        if self.certIndentifier != nil {
            map["certIndentifier"] = self.certIndentifier!
        }
        if self.forceHttps != nil {
            map["forceHttps"] = self.forceHttps!
        }
        if self.http2Option != nil {
            map["http2Option"] = self.http2Option!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.tlsMax != nil {
            map["tlsMax"] = self.tlsMax!
        }
        if self.tlsMin != nil {
            map["tlsMin"] = self.tlsMin!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("caCertIndentifier") {
            self.caCertIndentifier = dict["caCertIndentifier"] as! String
        }
        if dict.keys.contains("certIndentifier") {
            self.certIndentifier = dict["certIndentifier"] as! String
        }
        if dict.keys.contains("forceHttps") {
            self.forceHttps = dict["forceHttps"] as! Bool
        }
        if dict.keys.contains("http2Option") {
            self.http2Option = dict["http2Option"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("tlsMax") {
            self.tlsMax = dict["tlsMax"] as! String
        }
        if dict.keys.contains("tlsMin") {
            self.tlsMin = dict["tlsMin"] as! String
        }
    }
}

public class CreateDomainResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var domainId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainId != nil {
                map["domainId"] = self.domainId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("domainId") {
                self.domainId = dict["domainId"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateDomainResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreateDomainResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDomainResponseBody?

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
            var model = CreateDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEnvironmentRequest : Tea.TeaModel {
    public var alias: String?

    public var description_: String?

    public var gatewayId: String?

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
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alias") {
            self.alias = dict["alias"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class CreateEnvironmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var environmentId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("environmentId") {
                self.environmentId = dict["environmentId"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateEnvironmentResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreateEnvironmentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEnvironmentResponseBody?

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
            var model = CreateEnvironmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGatewayRouteRequest : Tea.TeaModel {
    public var backendConfig: GatewayRouteBackendConfig?

    public var description_: String?

    public var domainConfig: GatewayRouteDomainConfig?

    public var match: HttpRouteMatch?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendConfig?.validate()
        try self.domainConfig?.validate()
        try self.match?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendConfig != nil {
            map["backendConfig"] = self.backendConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domainConfig != nil {
            map["domainConfig"] = self.domainConfig?.toMap()
        }
        if self.match != nil {
            map["match"] = self.match?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("backendConfig") {
            var model = GatewayRouteBackendConfig()
            model.fromMap(dict["backendConfig"] as! [String: Any])
            self.backendConfig = model
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("domainConfig") {
            var model = GatewayRouteDomainConfig()
            model.fromMap(dict["domainConfig"] as! [String: Any])
            self.domainConfig = model
        }
        if dict.keys.contains("match") {
            var model = HttpRouteMatch()
            model.fromMap(dict["match"] as! [String: Any])
            self.match = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class CreateGatewayRouteResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gatewayRouteId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gatewayRouteId != nil {
                map["gatewayRouteId"] = self.gatewayRouteId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gatewayRouteId") {
                self.gatewayRouteId = dict["gatewayRouteId"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateGatewayRouteResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreateGatewayRouteResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateGatewayRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayRouteResponseBody?

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
            var model = CreateGatewayRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGatewayServiceRequest : Tea.TeaModel {
    public class GatewayServiceConfigs : Tea.TeaModel {
        public var addresses: [String]?

        public var groupName: String?

        public var name: String?

        public var namespace: String?

        public var port: Int32?

        public var qualifier: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addresses != nil {
                map["addresses"] = self.addresses!
            }
            if self.groupName != nil {
                map["groupName"] = self.groupName!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.port != nil {
                map["port"] = self.port!
            }
            if self.qualifier != nil {
                map["qualifier"] = self.qualifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("addresses") {
                self.addresses = dict["addresses"] as! [String]
            }
            if dict.keys.contains("groupName") {
                self.groupName = dict["groupName"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("namespace") {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("port") {
                self.port = dict["port"] as! Int32
            }
            if dict.keys.contains("qualifier") {
                self.qualifier = dict["qualifier"] as! String
            }
        }
    }
    public var gatewayServiceConfigs: [CreateGatewayServiceRequest.GatewayServiceConfigs]?

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
        if self.gatewayServiceConfigs != nil {
            var tmp : [Any] = []
            for k in self.gatewayServiceConfigs! {
                tmp.append(k.toMap())
            }
            map["gatewayServiceConfigs"] = tmp
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("gatewayServiceConfigs") {
            var tmp : [CreateGatewayServiceRequest.GatewayServiceConfigs] = []
            for v in dict["gatewayServiceConfigs"] as! [Any] {
                var model = CreateGatewayServiceRequest.GatewayServiceConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.gatewayServiceConfigs = tmp
        }
        if dict.keys.contains("sourceType") {
            self.sourceType = dict["sourceType"] as! String
        }
    }
}

public class CreateGatewayServiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gatewayServiceIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gatewayServiceIds != nil {
                map["gatewayServiceIds"] = self.gatewayServiceIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gatewayServiceIds") {
                self.gatewayServiceIds = dict["gatewayServiceIds"] as! [String]
            }
        }
    }
    public var code: String?

    public var data: CreateGatewayServiceResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreateGatewayServiceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateGatewayServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayServiceResponseBody?

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
            var model = CreateGatewayServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGatewayServiceVersionRequest : Tea.TeaModel {
    public class Labels : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var labels: [CreateGatewayServiceVersionRequest.Labels]?

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
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["labels"] = tmp
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labels") {
            var tmp : [CreateGatewayServiceVersionRequest.Labels] = []
            for v in dict["labels"] as! [Any] {
                var model = CreateGatewayServiceVersionRequest.Labels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class CreateGatewayServiceVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateGatewayServiceVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayServiceVersionResponseBody?

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
            var model = CreateGatewayServiceVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateHttpApiRequest : Tea.TeaModel {
    public var basePath: String?

    public var description_: String?

    public var name: String?

    public var protocols: [String]?

    public var versionConfig: HttpApiVersionConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.versionConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basePath != nil {
            map["basePath"] = self.basePath!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protocols != nil {
            map["protocols"] = self.protocols!
        }
        if self.versionConfig != nil {
            map["versionConfig"] = self.versionConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("basePath") {
            self.basePath = dict["basePath"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("protocols") {
            self.protocols = dict["protocols"] as! [String]
        }
        if dict.keys.contains("versionConfig") {
            var model = HttpApiVersionConfig()
            model.fromMap(dict["versionConfig"] as! [String: Any])
            self.versionConfig = model
        }
    }
}

public class CreateHttpApiResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var httpApiId: String?

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
            if self.httpApiId != nil {
                map["httpApiId"] = self.httpApiId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("httpApiId") {
                self.httpApiId = dict["httpApiId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateHttpApiResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreateHttpApiResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateHttpApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHttpApiResponseBody?

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
            var model = CreateHttpApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateHttpApiOperationRequest : Tea.TeaModel {
    public var operations: [HttpApiOperation]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operations != nil {
            var tmp : [Any] = []
            for k in self.operations! {
                tmp.append(k.toMap())
            }
            map["operations"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("operations") {
            var tmp : [HttpApiOperation] = []
            for v in dict["operations"] as! [Any] {
                var model = HttpApiOperation()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.operations = tmp
        }
    }
}

public class CreateHttpApiOperationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Operations : Tea.TeaModel {
            public var operationId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.operationId != nil {
                    map["operationId"] = self.operationId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("operationId") {
                    self.operationId = dict["operationId"] as! String
                }
            }
        }
        public var operations: [CreateHttpApiOperationResponseBody.Data.Operations]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operations != nil {
                var tmp : [Any] = []
                for k in self.operations! {
                    tmp.append(k.toMap())
                }
                map["operations"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("operations") {
                var tmp : [CreateHttpApiOperationResponseBody.Data.Operations] = []
                for v in dict["operations"] as! [Any] {
                    var model = CreateHttpApiOperationResponseBody.Data.Operations()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.operations = tmp
            }
        }
    }
    public var code: String?

    public var data: CreateHttpApiOperationResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreateHttpApiOperationResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateHttpApiOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHttpApiOperationResponseBody?

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
            var model = CreateHttpApiOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceSourceRequest : Tea.TeaModel {
    public class K8sServiceSourceConfig : Tea.TeaModel {
        public class AuthorizeSecurityGroupRules : Tea.TeaModel {
            public var description_: String?

            public var portRanges: [String]?

            public var securityGroupId: String?

            public override init() {
                super.init()
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
                    map["description"] = self.description_!
                }
                if self.portRanges != nil {
                    map["portRanges"] = self.portRanges!
                }
                if self.securityGroupId != nil {
                    map["securityGroupId"] = self.securityGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("description") {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("portRanges") {
                    self.portRanges = dict["portRanges"] as! [String]
                }
                if dict.keys.contains("securityGroupId") {
                    self.securityGroupId = dict["securityGroupId"] as! String
                }
            }
        }
        public class IngressConfig : Tea.TeaModel {
            public var enable: Bool?

            public var ingressClass: String?

            public var overrideIngressIp: Bool?

            public var watchNamespace: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.ingressClass != nil {
                    map["ingressClass"] = self.ingressClass!
                }
                if self.overrideIngressIp != nil {
                    map["overrideIngressIp"] = self.overrideIngressIp!
                }
                if self.watchNamespace != nil {
                    map["watchNamespace"] = self.watchNamespace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enable") {
                    self.enable = dict["enable"] as! Bool
                }
                if dict.keys.contains("ingressClass") {
                    self.ingressClass = dict["ingressClass"] as! String
                }
                if dict.keys.contains("overrideIngressIp") {
                    self.overrideIngressIp = dict["overrideIngressIp"] as! Bool
                }
                if dict.keys.contains("watchNamespace") {
                    self.watchNamespace = dict["watchNamespace"] as! String
                }
            }
        }
        public var authorizeSecurityGroupRules: [CreateServiceSourceRequest.K8sServiceSourceConfig.AuthorizeSecurityGroupRules]?

        public var clusterId: String?

        public var ingressConfig: CreateServiceSourceRequest.K8sServiceSourceConfig.IngressConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ingressConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorizeSecurityGroupRules != nil {
                var tmp : [Any] = []
                for k in self.authorizeSecurityGroupRules! {
                    tmp.append(k.toMap())
                }
                map["authorizeSecurityGroupRules"] = tmp
            }
            if self.clusterId != nil {
                map["clusterId"] = self.clusterId!
            }
            if self.ingressConfig != nil {
                map["ingressConfig"] = self.ingressConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("authorizeSecurityGroupRules") {
                var tmp : [CreateServiceSourceRequest.K8sServiceSourceConfig.AuthorizeSecurityGroupRules] = []
                for v in dict["authorizeSecurityGroupRules"] as! [Any] {
                    var model = CreateServiceSourceRequest.K8sServiceSourceConfig.AuthorizeSecurityGroupRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.authorizeSecurityGroupRules = tmp
            }
            if dict.keys.contains("clusterId") {
                self.clusterId = dict["clusterId"] as! String
            }
            if dict.keys.contains("ingressConfig") {
                var model = CreateServiceSourceRequest.K8sServiceSourceConfig.IngressConfig()
                model.fromMap(dict["ingressConfig"] as! [String: Any])
                self.ingressConfig = model
            }
        }
    }
    public class NacosServiceSourceConfig : Tea.TeaModel {
        public var instanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
        }
    }
    public var k8sServiceSourceConfig: CreateServiceSourceRequest.K8sServiceSourceConfig?

    public var nacosServiceSourceConfig: CreateServiceSourceRequest.NacosServiceSourceConfig?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.k8sServiceSourceConfig?.validate()
        try self.nacosServiceSourceConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.k8sServiceSourceConfig != nil {
            map["k8sServiceSourceConfig"] = self.k8sServiceSourceConfig?.toMap()
        }
        if self.nacosServiceSourceConfig != nil {
            map["nacosServiceSourceConfig"] = self.nacosServiceSourceConfig?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("k8sServiceSourceConfig") {
            var model = CreateServiceSourceRequest.K8sServiceSourceConfig()
            model.fromMap(dict["k8sServiceSourceConfig"] as! [String: Any])
            self.k8sServiceSourceConfig = model
        }
        if dict.keys.contains("nacosServiceSourceConfig") {
            var model = CreateServiceSourceRequest.NacosServiceSourceConfig()
            model.fromMap(dict["nacosServiceSourceConfig"] as! [String: Any])
            self.nacosServiceSourceConfig = model
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateServiceSourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var serviceSourceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceSourceId != nil {
                map["serviceSourceId"] = self.serviceSourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("serviceSourceId") {
                self.serviceSourceId = dict["serviceSourceId"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateServiceSourceResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CreateServiceSourceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateServiceSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceSourceResponseBody?

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
            var model = CreateServiceSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDomainResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainResponseBody?

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
            var model = DeleteDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEnvironmentResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEnvironmentResponseBody?

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
            var model = DeleteEnvironmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGatewayResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayResponseBody?

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
            var model = DeleteGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGatewayRouteResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteGatewayRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayRouteResponseBody?

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
            var model = DeleteGatewayRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGatewayServiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteGatewayServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayServiceResponseBody?

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
            var model = DeleteGatewayServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGatewayServiceVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteGatewayServiceVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayServiceVersionResponseBody?

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
            var model = DeleteGatewayServiceVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteHttpApiResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteHttpApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHttpApiResponseBody?

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
            var model = DeleteHttpApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteHttpApiOperationResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteHttpApiOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHttpApiOperationResponseBody?

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
            var model = DeleteHttpApiOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteServiceSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteServiceSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceSourceResponseBody?

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
            var model = DeleteServiceSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDomainResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var algorithm: String?

        public var caCertIndentifier: String?

        public var certIndentifier: String?

        public var certName: String?

        public var createFrom: String?

        public var createTimestamp: Int64?

        public var default_: Bool?

        public var domainId: String?

        public var forceHttps: Bool?

        public var http2Option: String?

        public var issuer: String?

        public var name: String?

        public var notAfterTimstamp: Int64?

        public var notBeforeTimestamp: Int64?

        public var protocol_: String?

        public var sans: String?

        public var tlsMax: String?

        public var tlsMin: String?

        public var updatetimestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.algorithm != nil {
                map["algorithm"] = self.algorithm!
            }
            if self.caCertIndentifier != nil {
                map["caCertIndentifier"] = self.caCertIndentifier!
            }
            if self.certIndentifier != nil {
                map["certIndentifier"] = self.certIndentifier!
            }
            if self.certName != nil {
                map["certName"] = self.certName!
            }
            if self.createFrom != nil {
                map["createFrom"] = self.createFrom!
            }
            if self.createTimestamp != nil {
                map["createTimestamp"] = self.createTimestamp!
            }
            if self.default_ != nil {
                map["default"] = self.default_!
            }
            if self.domainId != nil {
                map["domainId"] = self.domainId!
            }
            if self.forceHttps != nil {
                map["forceHttps"] = self.forceHttps!
            }
            if self.http2Option != nil {
                map["http2Option"] = self.http2Option!
            }
            if self.issuer != nil {
                map["issuer"] = self.issuer!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.notAfterTimstamp != nil {
                map["notAfterTimstamp"] = self.notAfterTimstamp!
            }
            if self.notBeforeTimestamp != nil {
                map["notBeforeTimestamp"] = self.notBeforeTimestamp!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.sans != nil {
                map["sans"] = self.sans!
            }
            if self.tlsMax != nil {
                map["tlsMax"] = self.tlsMax!
            }
            if self.tlsMin != nil {
                map["tlsMin"] = self.tlsMin!
            }
            if self.updatetimestamp != nil {
                map["updatetimestamp"] = self.updatetimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("algorithm") {
                self.algorithm = dict["algorithm"] as! String
            }
            if dict.keys.contains("caCertIndentifier") {
                self.caCertIndentifier = dict["caCertIndentifier"] as! String
            }
            if dict.keys.contains("certIndentifier") {
                self.certIndentifier = dict["certIndentifier"] as! String
            }
            if dict.keys.contains("certName") {
                self.certName = dict["certName"] as! String
            }
            if dict.keys.contains("createFrom") {
                self.createFrom = dict["createFrom"] as! String
            }
            if dict.keys.contains("createTimestamp") {
                self.createTimestamp = dict["createTimestamp"] as! Int64
            }
            if dict.keys.contains("default") {
                self.default_ = dict["default"] as! Bool
            }
            if dict.keys.contains("domainId") {
                self.domainId = dict["domainId"] as! String
            }
            if dict.keys.contains("forceHttps") {
                self.forceHttps = dict["forceHttps"] as! Bool
            }
            if dict.keys.contains("http2Option") {
                self.http2Option = dict["http2Option"] as! String
            }
            if dict.keys.contains("issuer") {
                self.issuer = dict["issuer"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("notAfterTimstamp") {
                self.notAfterTimstamp = dict["notAfterTimstamp"] as! Int64
            }
            if dict.keys.contains("notBeforeTimestamp") {
                self.notBeforeTimestamp = dict["notBeforeTimestamp"] as! Int64
            }
            if dict.keys.contains("protocol") {
                self.protocol_ = dict["protocol"] as! String
            }
            if dict.keys.contains("sans") {
                self.sans = dict["sans"] as! String
            }
            if dict.keys.contains("tlsMax") {
                self.tlsMax = dict["tlsMax"] as! String
            }
            if dict.keys.contains("tlsMin") {
                self.tlsMin = dict["tlsMin"] as! String
            }
            if dict.keys.contains("updatetimestamp") {
                self.updatetimestamp = dict["updatetimestamp"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: GetDomainResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetDomainResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDomainResponseBody?

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
            var model = GetDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEnvironmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alias: String?

        public var createTimestamp: Int64?

        public var default_: Bool?

        public var description_: String?

        public var environmentId: String?

        public var gatewayInfo: GatewayInfo?

        public var name: String?

        public var subDomainInfos: [SubDomainInfo]?

        public var updateTimestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.gatewayInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["alias"] = self.alias!
            }
            if self.createTimestamp != nil {
                map["createTimestamp"] = self.createTimestamp!
            }
            if self.default_ != nil {
                map["default"] = self.default_!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            if self.gatewayInfo != nil {
                map["gatewayInfo"] = self.gatewayInfo?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.subDomainInfos != nil {
                var tmp : [Any] = []
                for k in self.subDomainInfos! {
                    tmp.append(k.toMap())
                }
                map["subDomainInfos"] = tmp
            }
            if self.updateTimestamp != nil {
                map["updateTimestamp"] = self.updateTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alias") {
                self.alias = dict["alias"] as! String
            }
            if dict.keys.contains("createTimestamp") {
                self.createTimestamp = dict["createTimestamp"] as! Int64
            }
            if dict.keys.contains("default") {
                self.default_ = dict["default"] as! Bool
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("environmentId") {
                self.environmentId = dict["environmentId"] as! String
            }
            if dict.keys.contains("gatewayInfo") {
                var model = GatewayInfo()
                model.fromMap(dict["gatewayInfo"] as! [String: Any])
                self.gatewayInfo = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("subDomainInfos") {
                var tmp : [SubDomainInfo] = []
                for v in dict["subDomainInfos"] as! [Any] {
                    var model = SubDomainInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subDomainInfos = tmp
            }
            if dict.keys.contains("updateTimestamp") {
                self.updateTimestamp = dict["updateTimestamp"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: GetEnvironmentResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetEnvironmentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEnvironmentResponseBody?

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
            var model = GetEnvironmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGatewayResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Environments : Tea.TeaModel {
            public var alias: String?

            public var environmentId: String?

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
                if self.alias != nil {
                    map["alias"] = self.alias!
                }
                if self.environmentId != nil {
                    map["environmentId"] = self.environmentId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("alias") {
                    self.alias = dict["alias"] as! String
                }
                if dict.keys.contains("environmentId") {
                    self.environmentId = dict["environmentId"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
            }
        }
        public class LoadBalancers : Tea.TeaModel {
            public class Ports : Tea.TeaModel {
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
                        map["port"] = self.port!
                    }
                    if self.protocol_ != nil {
                        map["protocol"] = self.protocol_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("port") {
                        self.port = dict["port"] as! Int32
                    }
                    if dict.keys.contains("protocol") {
                        self.protocol_ = dict["protocol"] as! String
                    }
                }
            }
            public var address: String?

            public var addressIpVersion: String?

            public var addressType: String?

            public var gatewayDefault: Bool?

            public var loadBalancerId: String?

            public var mode: String?

            public var ports: [GetGatewayResponseBody.Data.LoadBalancers.Ports]?

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
                if self.address != nil {
                    map["address"] = self.address!
                }
                if self.addressIpVersion != nil {
                    map["addressIpVersion"] = self.addressIpVersion!
                }
                if self.addressType != nil {
                    map["addressType"] = self.addressType!
                }
                if self.gatewayDefault != nil {
                    map["gatewayDefault"] = self.gatewayDefault!
                }
                if self.loadBalancerId != nil {
                    map["loadBalancerId"] = self.loadBalancerId!
                }
                if self.mode != nil {
                    map["mode"] = self.mode!
                }
                if self.ports != nil {
                    var tmp : [Any] = []
                    for k in self.ports! {
                        tmp.append(k.toMap())
                    }
                    map["ports"] = tmp
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("address") {
                    self.address = dict["address"] as! String
                }
                if dict.keys.contains("addressIpVersion") {
                    self.addressIpVersion = dict["addressIpVersion"] as! String
                }
                if dict.keys.contains("addressType") {
                    self.addressType = dict["addressType"] as! String
                }
                if dict.keys.contains("gatewayDefault") {
                    self.gatewayDefault = dict["gatewayDefault"] as! Bool
                }
                if dict.keys.contains("loadBalancerId") {
                    self.loadBalancerId = dict["loadBalancerId"] as! String
                }
                if dict.keys.contains("mode") {
                    self.mode = dict["mode"] as! String
                }
                if dict.keys.contains("ports") {
                    var tmp : [GetGatewayResponseBody.Data.LoadBalancers.Ports] = []
                    for v in dict["ports"] as! [Any] {
                        var model = GetGatewayResponseBody.Data.LoadBalancers.Ports()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.ports = tmp
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class SecurityGroup : Tea.TeaModel {
            public var name: String?

            public var securityGroupId: String?

            public override init() {
                super.init()
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
                    map["name"] = self.name!
                }
                if self.securityGroupId != nil {
                    map["securityGroupId"] = self.securityGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("securityGroupId") {
                    self.securityGroupId = dict["securityGroupId"] as! String
                }
            }
        }
        public class VSwitch : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.vSwitchId != nil {
                    map["vSwitchId"] = self.vSwitchId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("vSwitchId") {
                    self.vSwitchId = dict["vSwitchId"] as! String
                }
            }
        }
        public class Vpc : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.vpcId != nil {
                    map["vpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("vpcId") {
                    self.vpcId = dict["vpcId"] as! String
                }
            }
        }
        public class Zones : Tea.TeaModel {
            public class VSwitch : Tea.TeaModel {
                public var name: String?

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
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.vSwitchId != nil {
                        map["vSwitchId"] = self.vSwitchId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("vSwitchId") {
                        self.vSwitchId = dict["vSwitchId"] as! String
                    }
                }
            }
            public var name: String?

            public var vSwitch: GetGatewayResponseBody.Data.Zones.VSwitch?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.vSwitch?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.vSwitch != nil {
                    map["vSwitch"] = self.vSwitch?.toMap()
                }
                if self.zoneId != nil {
                    map["zoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("vSwitch") {
                    var model = GetGatewayResponseBody.Data.Zones.VSwitch()
                    model.fromMap(dict["vSwitch"] as! [String: Any])
                    self.vSwitch = model
                }
                if dict.keys.contains("zoneId") {
                    self.zoneId = dict["zoneId"] as! String
                }
            }
        }
        public var chargeType: String?

        public var createFrom: String?

        public var createTimestamp: Int64?

        public var environments: [GetGatewayResponseBody.Data.Environments]?

        public var expireTimestamp: Int64?

        public var gatewayId: String?

        public var loadBalancers: [GetGatewayResponseBody.Data.LoadBalancers]?

        public var name: String?

        public var replicas: String?

        public var securityGroup: GetGatewayResponseBody.Data.SecurityGroup?

        public var spec: String?

        public var status: String?

        public var targetVersion: String?

        public var updateTimestamp: Int64?

        public var vSwitch: GetGatewayResponseBody.Data.VSwitch?

        public var version: String?

        public var vpc: GetGatewayResponseBody.Data.Vpc?

        public var zones: [GetGatewayResponseBody.Data.Zones]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.securityGroup?.validate()
            try self.vSwitch?.validate()
            try self.vpc?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.createFrom != nil {
                map["createFrom"] = self.createFrom!
            }
            if self.createTimestamp != nil {
                map["createTimestamp"] = self.createTimestamp!
            }
            if self.environments != nil {
                var tmp : [Any] = []
                for k in self.environments! {
                    tmp.append(k.toMap())
                }
                map["environments"] = tmp
            }
            if self.expireTimestamp != nil {
                map["expireTimestamp"] = self.expireTimestamp!
            }
            if self.gatewayId != nil {
                map["gatewayId"] = self.gatewayId!
            }
            if self.loadBalancers != nil {
                var tmp : [Any] = []
                for k in self.loadBalancers! {
                    tmp.append(k.toMap())
                }
                map["loadBalancers"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.replicas != nil {
                map["replicas"] = self.replicas!
            }
            if self.securityGroup != nil {
                map["securityGroup"] = self.securityGroup?.toMap()
            }
            if self.spec != nil {
                map["spec"] = self.spec!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.targetVersion != nil {
                map["targetVersion"] = self.targetVersion!
            }
            if self.updateTimestamp != nil {
                map["updateTimestamp"] = self.updateTimestamp!
            }
            if self.vSwitch != nil {
                map["vSwitch"] = self.vSwitch?.toMap()
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            if self.vpc != nil {
                map["vpc"] = self.vpc?.toMap()
            }
            if self.zones != nil {
                var tmp : [Any] = []
                for k in self.zones! {
                    tmp.append(k.toMap())
                }
                map["zones"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chargeType") {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("createFrom") {
                self.createFrom = dict["createFrom"] as! String
            }
            if dict.keys.contains("createTimestamp") {
                self.createTimestamp = dict["createTimestamp"] as! Int64
            }
            if dict.keys.contains("environments") {
                var tmp : [GetGatewayResponseBody.Data.Environments] = []
                for v in dict["environments"] as! [Any] {
                    var model = GetGatewayResponseBody.Data.Environments()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.environments = tmp
            }
            if dict.keys.contains("expireTimestamp") {
                self.expireTimestamp = dict["expireTimestamp"] as! Int64
            }
            if dict.keys.contains("gatewayId") {
                self.gatewayId = dict["gatewayId"] as! String
            }
            if dict.keys.contains("loadBalancers") {
                var tmp : [GetGatewayResponseBody.Data.LoadBalancers] = []
                for v in dict["loadBalancers"] as! [Any] {
                    var model = GetGatewayResponseBody.Data.LoadBalancers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.loadBalancers = tmp
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("replicas") {
                self.replicas = dict["replicas"] as! String
            }
            if dict.keys.contains("securityGroup") {
                var model = GetGatewayResponseBody.Data.SecurityGroup()
                model.fromMap(dict["securityGroup"] as! [String: Any])
                self.securityGroup = model
            }
            if dict.keys.contains("spec") {
                self.spec = dict["spec"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("targetVersion") {
                self.targetVersion = dict["targetVersion"] as! String
            }
            if dict.keys.contains("updateTimestamp") {
                self.updateTimestamp = dict["updateTimestamp"] as! Int64
            }
            if dict.keys.contains("vSwitch") {
                var model = GetGatewayResponseBody.Data.VSwitch()
                model.fromMap(dict["vSwitch"] as! [String: Any])
                self.vSwitch = model
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
            if dict.keys.contains("vpc") {
                var model = GetGatewayResponseBody.Data.Vpc()
                model.fromMap(dict["vpc"] as! [String: Any])
                self.vpc = model
            }
            if dict.keys.contains("zones") {
                var tmp : [GetGatewayResponseBody.Data.Zones] = []
                for v in dict["zones"] as! [Any] {
                    var model = GetGatewayResponseBody.Data.Zones()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.zones = tmp
            }
        }
    }
    public var code: String?

    public var data: GetGatewayResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetGatewayResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGatewayResponseBody?

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
            var model = GetGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGatewayRouteResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var backend: GatewayRouteBackend?

        public var createTimestamp: Int64?

        public var description_: String?

        public var domainInfo: GatewayRouteDomainInfo?

        public var gatewayRouteId: String?

        public var match: HttpRouteMatch?

        public var name: String?

        public var status: String?

        public var updateTimestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.backend?.validate()
            try self.domainInfo?.validate()
            try self.match?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backend != nil {
                map["backend"] = self.backend?.toMap()
            }
            if self.createTimestamp != nil {
                map["createTimestamp"] = self.createTimestamp!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domainInfo != nil {
                map["domainInfo"] = self.domainInfo?.toMap()
            }
            if self.gatewayRouteId != nil {
                map["gatewayRouteId"] = self.gatewayRouteId!
            }
            if self.match != nil {
                map["match"] = self.match?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updateTimestamp != nil {
                map["updateTimestamp"] = self.updateTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("backend") {
                var model = GatewayRouteBackend()
                model.fromMap(dict["backend"] as! [String: Any])
                self.backend = model
            }
            if dict.keys.contains("createTimestamp") {
                self.createTimestamp = dict["createTimestamp"] as! Int64
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("domainInfo") {
                var model = GatewayRouteDomainInfo()
                model.fromMap(dict["domainInfo"] as! [String: Any])
                self.domainInfo = model
            }
            if dict.keys.contains("gatewayRouteId") {
                self.gatewayRouteId = dict["gatewayRouteId"] as! String
            }
            if dict.keys.contains("match") {
                var model = HttpRouteMatch()
                model.fromMap(dict["match"] as! [String: Any])
                self.match = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("updateTimestamp") {
                self.updateTimestamp = dict["updateTimestamp"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: GetGatewayRouteResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetGatewayRouteResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetGatewayRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGatewayRouteResponseBody?

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
            var model = GetGatewayRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGatewayServiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: GatewayService?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GatewayService()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetGatewayServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGatewayServiceResponseBody?

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
            var model = GetGatewayServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHttpApiResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: HttpApiApiInfo?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = HttpApiApiInfo()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetHttpApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHttpApiResponseBody?

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
            var model = GetHttpApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHttpApiOperationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: HttpApiOperationInfo?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = HttpApiOperationInfo()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetHttpApiOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHttpApiOperationResponseBody?

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
            var model = GetHttpApiOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDomainsRequest : Tea.TeaModel {
    public var nameLike: String?

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
        if self.nameLike != nil {
            map["nameLike"] = self.nameLike!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nameLike") {
            self.nameLike = dict["nameLike"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListDomainsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [DomainInfo]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [DomainInfo] = []
                for v in dict["items"] as! [Any] {
                    var model = DomainInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListDomainsResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListDomainsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDomainsResponseBody?

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
            var model = ListDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEnvironmentsRequest : Tea.TeaModel {
    public var aliasLike: String?

    public var gatewayId: String?

    public var gatewayNameLike: String?

    public var nameLike: String?

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
        if self.aliasLike != nil {
            map["aliasLike"] = self.aliasLike!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.gatewayNameLike != nil {
            map["gatewayNameLike"] = self.gatewayNameLike!
        }
        if self.nameLike != nil {
            map["nameLike"] = self.nameLike!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("aliasLike") {
            self.aliasLike = dict["aliasLike"] as! String
        }
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("gatewayNameLike") {
            self.gatewayNameLike = dict["gatewayNameLike"] as! String
        }
        if dict.keys.contains("nameLike") {
            self.nameLike = dict["nameLike"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListEnvironmentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [EnvironmentInfo]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [EnvironmentInfo] = []
                for v in dict["items"] as! [Any] {
                    var model = EnvironmentInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListEnvironmentsResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListEnvironmentsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListEnvironmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEnvironmentsResponseBody?

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
            var model = ListEnvironmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGatewayRoutesRequest : Tea.TeaModel {
    public var keyword: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var path: String?

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
            map["keyword"] = self.keyword!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
    }
}

public class ListGatewayRoutesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var backend: GatewayRouteBackend?

            public var createTimestamp: Int64?

            public var description_: String?

            public var domainInfo: GatewayRouteDomainInfo?

            public var gatewayRouteId: String?

            public var match: HttpRouteMatch?

            public var name: String?

            public var status: String?

            public var updateTimestamp: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.backend?.validate()
                try self.domainInfo?.validate()
                try self.match?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backend != nil {
                    map["backend"] = self.backend?.toMap()
                }
                if self.createTimestamp != nil {
                    map["createTimestamp"] = self.createTimestamp!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.domainInfo != nil {
                    map["domainInfo"] = self.domainInfo?.toMap()
                }
                if self.gatewayRouteId != nil {
                    map["gatewayRouteId"] = self.gatewayRouteId!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.updateTimestamp != nil {
                    map["updateTimestamp"] = self.updateTimestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("backend") {
                    var model = GatewayRouteBackend()
                    model.fromMap(dict["backend"] as! [String: Any])
                    self.backend = model
                }
                if dict.keys.contains("createTimestamp") {
                    self.createTimestamp = dict["createTimestamp"] as! Int64
                }
                if dict.keys.contains("description") {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("domainInfo") {
                    var model = GatewayRouteDomainInfo()
                    model.fromMap(dict["domainInfo"] as! [String: Any])
                    self.domainInfo = model
                }
                if dict.keys.contains("gatewayRouteId") {
                    self.gatewayRouteId = dict["gatewayRouteId"] as! String
                }
                if dict.keys.contains("match") {
                    var model = HttpRouteMatch()
                    model.fromMap(dict["match"] as! [String: Any])
                    self.match = model
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("updateTimestamp") {
                    self.updateTimestamp = dict["updateTimestamp"] as! Int64
                }
            }
        }
        public var items: [ListGatewayRoutesResponseBody.Data.Items]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [ListGatewayRoutesResponseBody.Data.Items] = []
                for v in dict["items"] as! [Any] {
                    var model = ListGatewayRoutesResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListGatewayRoutesResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListGatewayRoutesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListGatewayRoutesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewayRoutesResponseBody?

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
            var model = ListGatewayRoutesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGatewayServicesRequest : Tea.TeaModel {
    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("sourceType") {
            self.sourceType = dict["sourceType"] as! String
        }
    }
}

public class ListGatewayServicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [GatewayService]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [GatewayService] = []
                for v in dict["items"] as! [Any] {
                    var model = GatewayService()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ListGatewayServicesResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListGatewayServicesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListGatewayServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewayServicesResponseBody?

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
            var model = ListGatewayServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGatewaysRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var keyword: String?

    public var name: String?

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
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("gatewayId") {
            self.gatewayId = dict["gatewayId"] as! String
        }
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListGatewaysResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class LoadBalancers : Tea.TeaModel {
                public class Ports : Tea.TeaModel {
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
                            map["port"] = self.port!
                        }
                        if self.protocol_ != nil {
                            map["protocol"] = self.protocol_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("port") {
                            self.port = dict["port"] as! Int32
                        }
                        if dict.keys.contains("protocol") {
                            self.protocol_ = dict["protocol"] as! String
                        }
                    }
                }
                public var address: String?

                public var addressIpVersion: String?

                public var addressType: String?

                public var gatewayDefault: Bool?

                public var loadBalancerId: String?

                public var mode: String?

                public var ports: [ListGatewaysResponseBody.Data.Items.LoadBalancers.Ports]?

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
                    if self.address != nil {
                        map["address"] = self.address!
                    }
                    if self.addressIpVersion != nil {
                        map["addressIpVersion"] = self.addressIpVersion!
                    }
                    if self.addressType != nil {
                        map["addressType"] = self.addressType!
                    }
                    if self.gatewayDefault != nil {
                        map["gatewayDefault"] = self.gatewayDefault!
                    }
                    if self.loadBalancerId != nil {
                        map["loadBalancerId"] = self.loadBalancerId!
                    }
                    if self.mode != nil {
                        map["mode"] = self.mode!
                    }
                    if self.ports != nil {
                        var tmp : [Any] = []
                        for k in self.ports! {
                            tmp.append(k.toMap())
                        }
                        map["ports"] = tmp
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("address") {
                        self.address = dict["address"] as! String
                    }
                    if dict.keys.contains("addressIpVersion") {
                        self.addressIpVersion = dict["addressIpVersion"] as! String
                    }
                    if dict.keys.contains("addressType") {
                        self.addressType = dict["addressType"] as! String
                    }
                    if dict.keys.contains("gatewayDefault") {
                        self.gatewayDefault = dict["gatewayDefault"] as! Bool
                    }
                    if dict.keys.contains("loadBalancerId") {
                        self.loadBalancerId = dict["loadBalancerId"] as! String
                    }
                    if dict.keys.contains("mode") {
                        self.mode = dict["mode"] as! String
                    }
                    if dict.keys.contains("ports") {
                        var tmp : [ListGatewaysResponseBody.Data.Items.LoadBalancers.Ports] = []
                        for v in dict["ports"] as! [Any] {
                            var model = ListGatewaysResponseBody.Data.Items.LoadBalancers.Ports()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.ports = tmp
                    }
                    if dict.keys.contains("status") {
                        self.status = dict["status"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public var chargeType: String?

            public var createFrom: String?

            public var createTimestamp: Int64?

            public var expireTimestamp: Int64?

            public var gatewayId: String?

            public var loadBalancers: [ListGatewaysResponseBody.Data.Items.LoadBalancers]?

            public var name: String?

            public var replicas: String?

            public var spec: String?

            public var status: String?

            public var targetVersion: String?

            public var updateTimestamp: Int64?

            public var version: String?

            public override init() {
                super.init()
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
                    map["chargeType"] = self.chargeType!
                }
                if self.createFrom != nil {
                    map["createFrom"] = self.createFrom!
                }
                if self.createTimestamp != nil {
                    map["createTimestamp"] = self.createTimestamp!
                }
                if self.expireTimestamp != nil {
                    map["expireTimestamp"] = self.expireTimestamp!
                }
                if self.gatewayId != nil {
                    map["gatewayId"] = self.gatewayId!
                }
                if self.loadBalancers != nil {
                    var tmp : [Any] = []
                    for k in self.loadBalancers! {
                        tmp.append(k.toMap())
                    }
                    map["loadBalancers"] = tmp
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.replicas != nil {
                    map["replicas"] = self.replicas!
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.targetVersion != nil {
                    map["targetVersion"] = self.targetVersion!
                }
                if self.updateTimestamp != nil {
                    map["updateTimestamp"] = self.updateTimestamp!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chargeType") {
                    self.chargeType = dict["chargeType"] as! String
                }
                if dict.keys.contains("createFrom") {
                    self.createFrom = dict["createFrom"] as! String
                }
                if dict.keys.contains("createTimestamp") {
                    self.createTimestamp = dict["createTimestamp"] as! Int64
                }
                if dict.keys.contains("expireTimestamp") {
                    self.expireTimestamp = dict["expireTimestamp"] as! Int64
                }
                if dict.keys.contains("gatewayId") {
                    self.gatewayId = dict["gatewayId"] as! String
                }
                if dict.keys.contains("loadBalancers") {
                    var tmp : [ListGatewaysResponseBody.Data.Items.LoadBalancers] = []
                    for v in dict["loadBalancers"] as! [Any] {
                        var model = ListGatewaysResponseBody.Data.Items.LoadBalancers()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.loadBalancers = tmp
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("replicas") {
                    self.replicas = dict["replicas"] as! String
                }
                if dict.keys.contains("spec") {
                    self.spec = dict["spec"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("targetVersion") {
                    self.targetVersion = dict["targetVersion"] as! String
                }
                if dict.keys.contains("updateTimestamp") {
                    self.updateTimestamp = dict["updateTimestamp"] as! Int64
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var items: [ListGatewaysResponseBody.Data.Items]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [ListGatewaysResponseBody.Data.Items] = []
                for v in dict["items"] as! [Any] {
                    var model = ListGatewaysResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ListGatewaysResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListGatewaysResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListGatewaysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewaysResponseBody?

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
            var model = ListGatewaysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHttpApiOperationsRequest : Tea.TeaModel {
    public var method: String?

    public var nameLike: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pathLike: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.method != nil {
            map["method"] = self.method!
        }
        if self.nameLike != nil {
            map["nameLike"] = self.nameLike!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.pathLike != nil {
            map["pathLike"] = self.pathLike!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("method") {
            self.method = dict["method"] as! String
        }
        if dict.keys.contains("nameLike") {
            self.nameLike = dict["nameLike"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("pathLike") {
            self.pathLike = dict["pathLike"] as! String
        }
    }
}

public class ListHttpApiOperationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [HttpApiOperationInfo]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [HttpApiOperationInfo] = []
                for v in dict["items"] as! [Any] {
                    var model = HttpApiOperationInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListHttpApiOperationsResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListHttpApiOperationsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListHttpApiOperationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHttpApiOperationsResponseBody?

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
            var model = ListHttpApiOperationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHttpApisRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var publishedOnly: Bool?

    public override init() {
        super.init()
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
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.publishedOnly != nil {
            map["publishedOnly"] = self.publishedOnly!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("publishedOnly") {
            self.publishedOnly = dict["publishedOnly"] as! Bool
        }
    }
}

public class ListHttpApisResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [HttpApiInfoByName]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [HttpApiInfoByName] = []
                for v in dict["items"] as! [Any] {
                    var model = HttpApiInfoByName()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalSize") {
                self.totalSize = dict["totalSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListHttpApisResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListHttpApisResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListHttpApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHttpApisResponseBody?

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
            var model = ListHttpApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OfflineGatewayRouteResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class OfflineGatewayRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OfflineGatewayRouteResponseBody?

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
            var model = OfflineGatewayRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OfflineHttpApiRequest : Tea.TeaModel {
    public var environmentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("environmentId") {
            self.environmentId = dict["environmentId"] as! String
        }
    }
}

public class OfflineHttpApiResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class OfflineHttpApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OfflineHttpApiResponseBody?

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
            var model = OfflineHttpApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishGatewayRouteResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class PublishGatewayRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishGatewayRouteResponseBody?

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
            var model = PublishGatewayRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishHttpApiRequest : Tea.TeaModel {
    public class Environment : Tea.TeaModel {
        public class CloudProductConfig : Tea.TeaModel {
            public class ContainerServiceConfigs : Tea.TeaModel {
                public var match: HttpApiBackendMatchConditions?

                public var name: String?

                public var namespace: String?

                public var port: Int32?

                public var protocol_: String?

                public var weight: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.match?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.match != nil {
                        map["match"] = self.match?.toMap()
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.namespace != nil {
                        map["namespace"] = self.namespace!
                    }
                    if self.port != nil {
                        map["port"] = self.port!
                    }
                    if self.protocol_ != nil {
                        map["protocol"] = self.protocol_!
                    }
                    if self.weight != nil {
                        map["weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("match") {
                        var model = HttpApiBackendMatchConditions()
                        model.fromMap(dict["match"] as! [String: Any])
                        self.match = model
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("namespace") {
                        self.namespace = dict["namespace"] as! String
                    }
                    if dict.keys.contains("port") {
                        self.port = dict["port"] as! Int32
                    }
                    if dict.keys.contains("protocol") {
                        self.protocol_ = dict["protocol"] as! String
                    }
                    if dict.keys.contains("weight") {
                        self.weight = dict["weight"] as! Int32
                    }
                }
            }
            public class FunctionConfigs : Tea.TeaModel {
                public var match: HttpApiBackendMatchConditions?

                public var name: String?

                public var quanlifer: String?

                public var weight: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.match?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.match != nil {
                        map["match"] = self.match?.toMap()
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.quanlifer != nil {
                        map["quanlifer"] = self.quanlifer!
                    }
                    if self.weight != nil {
                        map["weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("match") {
                        var model = HttpApiBackendMatchConditions()
                        model.fromMap(dict["match"] as! [String: Any])
                        self.match = model
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("quanlifer") {
                        self.quanlifer = dict["quanlifer"] as! String
                    }
                    if dict.keys.contains("weight") {
                        self.weight = dict["weight"] as! Int32
                    }
                }
            }
            public class MseNacosConfigs : Tea.TeaModel {
                public var groupName: String?

                public var match: HttpApiBackendMatchConditions?

                public var name: String?

                public var namespace: String?

                public var weight: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.match?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.groupName != nil {
                        map["groupName"] = self.groupName!
                    }
                    if self.match != nil {
                        map["match"] = self.match?.toMap()
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.namespace != nil {
                        map["namespace"] = self.namespace!
                    }
                    if self.weight != nil {
                        map["weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("groupName") {
                        self.groupName = dict["groupName"] as! String
                    }
                    if dict.keys.contains("match") {
                        var model = HttpApiBackendMatchConditions()
                        model.fromMap(dict["match"] as! [String: Any])
                        self.match = model
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("namespace") {
                        self.namespace = dict["namespace"] as! String
                    }
                    if dict.keys.contains("weight") {
                        self.weight = dict["weight"] as! String
                    }
                }
            }
            public var cloudProductType: String?

            public var containerServiceConfigs: [PublishHttpApiRequest.Environment.CloudProductConfig.ContainerServiceConfigs]?

            public var functionConfigs: [PublishHttpApiRequest.Environment.CloudProductConfig.FunctionConfigs]?

            public var mseNacosConfigs: [PublishHttpApiRequest.Environment.CloudProductConfig.MseNacosConfigs]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cloudProductType != nil {
                    map["cloudProductType"] = self.cloudProductType!
                }
                if self.containerServiceConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.containerServiceConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["containerServiceConfigs"] = tmp
                }
                if self.functionConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.functionConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["functionConfigs"] = tmp
                }
                if self.mseNacosConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.mseNacosConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["mseNacosConfigs"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cloudProductType") {
                    self.cloudProductType = dict["cloudProductType"] as! String
                }
                if dict.keys.contains("containerServiceConfigs") {
                    var tmp : [PublishHttpApiRequest.Environment.CloudProductConfig.ContainerServiceConfigs] = []
                    for v in dict["containerServiceConfigs"] as! [Any] {
                        var model = PublishHttpApiRequest.Environment.CloudProductConfig.ContainerServiceConfigs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.containerServiceConfigs = tmp
                }
                if dict.keys.contains("functionConfigs") {
                    var tmp : [PublishHttpApiRequest.Environment.CloudProductConfig.FunctionConfigs] = []
                    for v in dict["functionConfigs"] as! [Any] {
                        var model = PublishHttpApiRequest.Environment.CloudProductConfig.FunctionConfigs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.functionConfigs = tmp
                }
                if dict.keys.contains("mseNacosConfigs") {
                    var tmp : [PublishHttpApiRequest.Environment.CloudProductConfig.MseNacosConfigs] = []
                    for v in dict["mseNacosConfigs"] as! [Any] {
                        var model = PublishHttpApiRequest.Environment.CloudProductConfig.MseNacosConfigs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.mseNacosConfigs = tmp
                }
            }
        }
        public class DnsConfigs : Tea.TeaModel {
            public var dnsList: [String]?

            public var match: HttpApiBackendMatchConditions?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.match?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dnsList != nil {
                    map["dnsList"] = self.dnsList!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("dnsList") {
                    self.dnsList = dict["dnsList"] as! [String]
                }
                if dict.keys.contains("match") {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(dict["match"] as! [String: Any])
                    self.match = model
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! Int32
                }
            }
        }
        public class ServiceConfigs : Tea.TeaModel {
            public var gatewayServiceId: String?

            public var match: HttpApiBackendMatchConditions?

            public var port: Int32?

            public var protocol_: String?

            public var version: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.match?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gatewayServiceId != nil {
                    map["gatewayServiceId"] = self.gatewayServiceId!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.port != nil {
                    map["port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["protocol"] = self.protocol_!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gatewayServiceId") {
                    self.gatewayServiceId = dict["gatewayServiceId"] as! String
                }
                if dict.keys.contains("match") {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(dict["match"] as! [String: Any])
                    self.match = model
                }
                if dict.keys.contains("port") {
                    self.port = dict["port"] as! Int32
                }
                if dict.keys.contains("protocol") {
                    self.protocol_ = dict["protocol"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! Int32
                }
            }
        }
        public class VipConfigs : Tea.TeaModel {
            public var endpoints: [String]?

            public var match: HttpApiBackendMatchConditions?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.match?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpoints != nil {
                    map["endpoints"] = self.endpoints!
                }
                if self.match != nil {
                    map["match"] = self.match?.toMap()
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("endpoints") {
                    self.endpoints = dict["endpoints"] as! [String]
                }
                if dict.keys.contains("match") {
                    var model = HttpApiBackendMatchConditions()
                    model.fromMap(dict["match"] as! [String: Any])
                    self.match = model
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! Int32
                }
            }
        }
        public var backendScene: String?

        public var backendType: String?

        public var cloudProductConfig: PublishHttpApiRequest.Environment.CloudProductConfig?

        public var customDomainIds: [String]?

        public var dnsConfigs: [PublishHttpApiRequest.Environment.DnsConfigs]?

        public var environmentId: String?

        public var serviceConfigs: [PublishHttpApiRequest.Environment.ServiceConfigs]?

        public var vipConfigs: [PublishHttpApiRequest.Environment.VipConfigs]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cloudProductConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendScene != nil {
                map["backendScene"] = self.backendScene!
            }
            if self.backendType != nil {
                map["backendType"] = self.backendType!
            }
            if self.cloudProductConfig != nil {
                map["cloudProductConfig"] = self.cloudProductConfig?.toMap()
            }
            if self.customDomainIds != nil {
                map["customDomainIds"] = self.customDomainIds!
            }
            if self.dnsConfigs != nil {
                var tmp : [Any] = []
                for k in self.dnsConfigs! {
                    tmp.append(k.toMap())
                }
                map["dnsConfigs"] = tmp
            }
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            if self.serviceConfigs != nil {
                var tmp : [Any] = []
                for k in self.serviceConfigs! {
                    tmp.append(k.toMap())
                }
                map["serviceConfigs"] = tmp
            }
            if self.vipConfigs != nil {
                var tmp : [Any] = []
                for k in self.vipConfigs! {
                    tmp.append(k.toMap())
                }
                map["vipConfigs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("backendScene") {
                self.backendScene = dict["backendScene"] as! String
            }
            if dict.keys.contains("backendType") {
                self.backendType = dict["backendType"] as! String
            }
            if dict.keys.contains("cloudProductConfig") {
                var model = PublishHttpApiRequest.Environment.CloudProductConfig()
                model.fromMap(dict["cloudProductConfig"] as! [String: Any])
                self.cloudProductConfig = model
            }
            if dict.keys.contains("customDomainIds") {
                self.customDomainIds = dict["customDomainIds"] as! [String]
            }
            if dict.keys.contains("dnsConfigs") {
                var tmp : [PublishHttpApiRequest.Environment.DnsConfigs] = []
                for v in dict["dnsConfigs"] as! [Any] {
                    var model = PublishHttpApiRequest.Environment.DnsConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dnsConfigs = tmp
            }
            if dict.keys.contains("environmentId") {
                self.environmentId = dict["environmentId"] as! String
            }
            if dict.keys.contains("serviceConfigs") {
                var tmp : [PublishHttpApiRequest.Environment.ServiceConfigs] = []
                for v in dict["serviceConfigs"] as! [Any] {
                    var model = PublishHttpApiRequest.Environment.ServiceConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceConfigs = tmp
            }
            if dict.keys.contains("vipConfigs") {
                var tmp : [PublishHttpApiRequest.Environment.VipConfigs] = []
                for v in dict["vipConfigs"] as! [Any] {
                    var model = PublishHttpApiRequest.Environment.VipConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.vipConfigs = tmp
            }
        }
    }
    public var allowOverwrite: Bool?

    public var description_: String?

    public var environment: PublishHttpApiRequest.Environment?

    public var revisionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.environment?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowOverwrite != nil {
            map["allowOverwrite"] = self.allowOverwrite!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.environment != nil {
            map["environment"] = self.environment?.toMap()
        }
        if self.revisionId != nil {
            map["revisionId"] = self.revisionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("allowOverwrite") {
            self.allowOverwrite = dict["allowOverwrite"] as! Bool
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("environment") {
            var model = PublishHttpApiRequest.Environment()
            model.fromMap(dict["environment"] as! [String: Any])
            self.environment = model
        }
        if dict.keys.contains("revisionId") {
            self.revisionId = dict["revisionId"] as! String
        }
    }
}

public class PublishHttpApiResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class PublishHttpApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishHttpApiResponseBody?

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
            var model = PublishHttpApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDomainRequest : Tea.TeaModel {
    public var caCertIndentifier: String?

    public var certIndentifier: String?

    public var forceHttps: Bool?

    public var http2Option: String?

    public var protocol_: String?

    public var tlsMax: String?

    public var tlsMin: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caCertIndentifier != nil {
            map["caCertIndentifier"] = self.caCertIndentifier!
        }
        if self.certIndentifier != nil {
            map["certIndentifier"] = self.certIndentifier!
        }
        if self.forceHttps != nil {
            map["forceHttps"] = self.forceHttps!
        }
        if self.http2Option != nil {
            map["http2Option"] = self.http2Option!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.tlsMax != nil {
            map["tlsMax"] = self.tlsMax!
        }
        if self.tlsMin != nil {
            map["tlsMin"] = self.tlsMin!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("caCertIndentifier") {
            self.caCertIndentifier = dict["caCertIndentifier"] as! String
        }
        if dict.keys.contains("certIndentifier") {
            self.certIndentifier = dict["certIndentifier"] as! String
        }
        if dict.keys.contains("forceHttps") {
            self.forceHttps = dict["forceHttps"] as! Bool
        }
        if dict.keys.contains("http2Option") {
            self.http2Option = dict["http2Option"] as! String
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("tlsMax") {
            self.tlsMax = dict["tlsMax"] as! String
        }
        if dict.keys.contains("tlsMin") {
            self.tlsMin = dict["tlsMin"] as! String
        }
    }
}

public class UpdateDomainResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDomainResponseBody?

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
            var model = UpdateDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEnvironmentRequest : Tea.TeaModel {
    public var alias: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alias") {
            self.alias = dict["alias"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
    }
}

public class UpdateEnvironmentResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEnvironmentResponseBody?

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
            var model = UpdateEnvironmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGatewayRouteRequest : Tea.TeaModel {
    public var backendConfig: GatewayRouteBackendConfig?

    public var description_: String?

    public var domainConfig: GatewayRouteDomainConfig?

    public var match: HttpRouteMatch?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendConfig?.validate()
        try self.domainConfig?.validate()
        try self.match?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendConfig != nil {
            map["backendConfig"] = self.backendConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domainConfig != nil {
            map["domainConfig"] = self.domainConfig?.toMap()
        }
        if self.match != nil {
            map["match"] = self.match?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("backendConfig") {
            var model = GatewayRouteBackendConfig()
            model.fromMap(dict["backendConfig"] as! [String: Any])
            self.backendConfig = model
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("domainConfig") {
            var model = GatewayRouteDomainConfig()
            model.fromMap(dict["domainConfig"] as! [String: Any])
            self.domainConfig = model
        }
        if dict.keys.contains("match") {
            var model = HttpRouteMatch()
            model.fromMap(dict["match"] as! [String: Any])
            self.match = model
        }
    }
}

public class UpdateGatewayRouteResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateGatewayRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGatewayRouteResponseBody?

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
            var model = UpdateGatewayRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGatewayServiceRequest : Tea.TeaModel {
    public var addresses: [String]?

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
        if self.addresses != nil {
            map["addresses"] = self.addresses!
        }
        if self.port != nil {
            map["port"] = self.port!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("addresses") {
            self.addresses = dict["addresses"] as! [String]
        }
        if dict.keys.contains("port") {
            self.port = dict["port"] as! Int32
        }
    }
}

public class UpdateGatewayServiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateGatewayServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGatewayServiceResponseBody?

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
            var model = UpdateGatewayServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGatewayServiceVersionRequest : Tea.TeaModel {
    public class Labels : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var labels: [UpdateGatewayServiceVersionRequest.Labels]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["labels"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labels") {
            var tmp : [UpdateGatewayServiceVersionRequest.Labels] = []
            for v in dict["labels"] as! [Any] {
                var model = UpdateGatewayServiceVersionRequest.Labels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
    }
}

public class UpdateGatewayServiceVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateGatewayServiceVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGatewayServiceVersionResponseBody?

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
            var model = UpdateGatewayServiceVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateHttpApiRequest : Tea.TeaModel {
    public var basePath: String?

    public var description_: String?

    public var protocols: [String]?

    public var versionConfig: HttpApiVersionConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.versionConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basePath != nil {
            map["basePath"] = self.basePath!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.protocols != nil {
            map["protocols"] = self.protocols!
        }
        if self.versionConfig != nil {
            map["versionConfig"] = self.versionConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("basePath") {
            self.basePath = dict["basePath"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("protocols") {
            self.protocols = dict["protocols"] as! [String]
        }
        if dict.keys.contains("versionConfig") {
            var model = HttpApiVersionConfig()
            model.fromMap(dict["versionConfig"] as! [String: Any])
            self.versionConfig = model
        }
    }
}

public class UpdateHttpApiResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateHttpApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateHttpApiResponseBody?

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
            var model = UpdateHttpApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateHttpApiOperationRequest : Tea.TeaModel {
    public var operation: HttpApiOperation?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operation != nil {
            map["operation"] = self.operation?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("operation") {
            var model = HttpApiOperation()
            model.fromMap(dict["operation"] as! [String: Any])
            self.operation = model
        }
    }
}

public class UpdateHttpApiOperationResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateHttpApiOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateHttpApiOperationResponseBody?

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
            var model = UpdateHttpApiOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateServiceSourceRequest : Tea.TeaModel {
    public class K8sServiceSourceConfig : Tea.TeaModel {
        public class IngressConfig : Tea.TeaModel {
            public var enable: Bool?

            public var ingressClass: String?

            public var overrideIngressIp: Bool?

            public var watchNamespace: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.ingressClass != nil {
                    map["ingressClass"] = self.ingressClass!
                }
                if self.overrideIngressIp != nil {
                    map["overrideIngressIp"] = self.overrideIngressIp!
                }
                if self.watchNamespace != nil {
                    map["watchNamespace"] = self.watchNamespace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enable") {
                    self.enable = dict["enable"] as! Bool
                }
                if dict.keys.contains("ingressClass") {
                    self.ingressClass = dict["ingressClass"] as! String
                }
                if dict.keys.contains("overrideIngressIp") {
                    self.overrideIngressIp = dict["overrideIngressIp"] as! Bool
                }
                if dict.keys.contains("watchNamespace") {
                    self.watchNamespace = dict["watchNamespace"] as! String
                }
            }
        }
        public var ingressConfig: UpdateServiceSourceRequest.K8sServiceSourceConfig.IngressConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ingressConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ingressConfig != nil {
                map["ingressConfig"] = self.ingressConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ingressConfig") {
                var model = UpdateServiceSourceRequest.K8sServiceSourceConfig.IngressConfig()
                model.fromMap(dict["ingressConfig"] as! [String: Any])
                self.ingressConfig = model
            }
        }
    }
    public var k8sServiceSourceConfig: UpdateServiceSourceRequest.K8sServiceSourceConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.k8sServiceSourceConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.k8sServiceSourceConfig != nil {
            map["k8sServiceSourceConfig"] = self.k8sServiceSourceConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("k8sServiceSourceConfig") {
            var model = UpdateServiceSourceRequest.K8sServiceSourceConfig()
            model.fromMap(dict["k8sServiceSourceConfig"] as! [String: Any])
            self.k8sServiceSourceConfig = model
        }
    }
}

public class UpdateServiceSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateServiceSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceSourceResponseBody?

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
            var model = UpdateServiceSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
