import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddBackendServersRequest : Tea.TeaModel {
    public var backendServers: String?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: String?

    public var accessKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.accessKeyId != nil {
            map["access_key_id"] = self.accessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? String {
            self.backendServers = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["access_key_id"] as? String {
            self.accessKeyId = value
        }
    }
}

public class AddBackendServersResponseBody : Tea.TeaModel {
    public class BackendServers : Tea.TeaModel {
        public class BackendServer : Tea.TeaModel {
            public var serverId: String?

            public var weight: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["Weight"] as? String {
                    self.weight = value
                }
            }
        }
        public var backendServer: [AddBackendServersResponseBody.BackendServers.BackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendServer != nil {
                var tmp : [Any] = []
                for k in self.backendServer! {
                    tmp.append(k.toMap())
                }
                map["BackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendServer"] as? [Any?] {
                var tmp : [AddBackendServersResponseBody.BackendServers.BackendServer] = []
                for v in value {
                    if v != nil {
                        var model = AddBackendServersResponseBody.BackendServers.BackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.backendServer = tmp
            }
        }
    }
    public var backendServers: AddBackendServersResponseBody.BackendServers?

    public var loadBalancerId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers?.toMap()
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? [String: Any?] {
            var model = AddBackendServersResponseBody.BackendServers()
            model.fromMap(value)
            self.backendServers = model
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddBackendServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddBackendServersResponseBody?

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
            var model = AddBackendServersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLoadBalancerRequest : Tea.TeaModel {
    public var address: String?

    public var clientToken: String?

    public var isPublicAddress: String?

    public var loadBalancerMode: String?

    public var loadBalancerName: String?

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
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.isPublicAddress != nil {
            map["IsPublicAddress"] = self.isPublicAddress!
        }
        if self.loadBalancerMode != nil {
            map["LoadBalancerMode"] = self.loadBalancerMode!
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["IsPublicAddress"] as? String {
            self.isPublicAddress = value
        }
        if let value = dict["LoadBalancerMode"] as? String {
            self.loadBalancerMode = value
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateLoadBalancerResponseBody : Tea.TeaModel {
    public var address: String?

    public var loadBalancerId: String?

    public var loadBalancerName: String?

    public var requestId: String?

    public override init() {
        super.init()
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
            map["Address"] = self.address!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
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

public class CreateLoadBalancerHTTPListenerRequest : Tea.TeaModel {
    public var backendServerPort: Int32?

    public var bandwidth: Int32?

    public var cookie: String?

    public var cookieTimeout: Int32?

    public var domain: String?

    public var healthCheck: String?

    public var healthCheckTimeout: Int32?

    public var healthyThreshold: Int32?

    public var hostId: String?

    public var interval: Int32?

    public var listenerPort: Int32?

    public var listenerStatus: String?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: String?

    public var resourceOwnerId: Int64?

    public var scheduler: String?

    public var stickySession: String?

    public var stickySessionType: String?

    public var URI: String?

    public var unhealthyThreshold: Int32?

    public var XForwardedFor: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServerPort != nil {
            map["BackendServerPort"] = self.backendServerPort!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.cookie != nil {
            map["Cookie"] = self.cookie!
        }
        if self.cookieTimeout != nil {
            map["CookieTimeout"] = self.cookieTimeout!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckTimeout != nil {
            map["HealthCheckTimeout"] = self.healthCheckTimeout!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerStatus != nil {
            map["ListenerStatus"] = self.listenerStatus!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.stickySession != nil {
            map["StickySession"] = self.stickySession!
        }
        if self.stickySessionType != nil {
            map["StickySessionType"] = self.stickySessionType!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.XForwardedFor != nil {
            map["XForwardedFor"] = self.XForwardedFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServerPort"] as? Int32 {
            self.backendServerPort = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["Cookie"] as? String {
            self.cookie = value
        }
        if let value = dict["CookieTimeout"] as? Int32 {
            self.cookieTimeout = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckTimeout"] as? Int32 {
            self.healthCheckTimeout = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["HostId"] as? String {
            self.hostId = value
        }
        if let value = dict["Interval"] as? Int32 {
            self.interval = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerStatus"] as? String {
            self.listenerStatus = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["StickySession"] as? String {
            self.stickySession = value
        }
        if let value = dict["StickySessionType"] as? String {
            self.stickySessionType = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["XForwardedFor"] as? String {
            self.XForwardedFor = value
        }
    }
}

public class CreateLoadBalancerHTTPListenerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateLoadBalancerHTTPListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLoadBalancerHTTPListenerResponseBody?

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
            var model = CreateLoadBalancerHTTPListenerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLoadBalancerTCPListenerRequest : Tea.TeaModel {
    public var backendServerPort: Int32?

    public var bandwidth: Int32?

    public var connectPort: Int32?

    public var connectTimeout: Int32?

    public var establishedTimeout: Int32?

    public var healthCheck: String?

    public var healthCheckDomain: String?

    public var healthCheckHttpCode: String?

    public var healthCheckType: String?

    public var healthCheckURI: String?

    public var healthyThreshold: Int32?

    public var interval: Int32?

    public var listenerPort: Int32?

    public var listenerStatus: String?

    public var loadBalancerId: String?

    public var masterSlaveServerGroupId: String?

    public var maxConnection: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var persistenceTimeout: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scheduler: String?

    public var tags: String?

    public var unhealthyThreshold: Int32?

    public var VServerGroupId: String?

    public var accessKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServerPort != nil {
            map["BackendServerPort"] = self.backendServerPort!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.connectPort != nil {
            map["ConnectPort"] = self.connectPort!
        }
        if self.connectTimeout != nil {
            map["ConnectTimeout"] = self.connectTimeout!
        }
        if self.establishedTimeout != nil {
            map["EstablishedTimeout"] = self.establishedTimeout!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckDomain != nil {
            map["HealthCheckDomain"] = self.healthCheckDomain!
        }
        if self.healthCheckHttpCode != nil {
            map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
        }
        if self.healthCheckType != nil {
            map["HealthCheckType"] = self.healthCheckType!
        }
        if self.healthCheckURI != nil {
            map["HealthCheckURI"] = self.healthCheckURI!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerStatus != nil {
            map["ListenerStatus"] = self.listenerStatus!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.masterSlaveServerGroupId != nil {
            map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
        }
        if self.maxConnection != nil {
            map["MaxConnection"] = self.maxConnection!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.persistenceTimeout != nil {
            map["PersistenceTimeout"] = self.persistenceTimeout!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        if self.accessKeyId != nil {
            map["access_key_id"] = self.accessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServerPort"] as? Int32 {
            self.backendServerPort = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["ConnectPort"] as? Int32 {
            self.connectPort = value
        }
        if let value = dict["ConnectTimeout"] as? Int32 {
            self.connectTimeout = value
        }
        if let value = dict["EstablishedTimeout"] as? Int32 {
            self.establishedTimeout = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckDomain"] as? String {
            self.healthCheckDomain = value
        }
        if let value = dict["HealthCheckHttpCode"] as? String {
            self.healthCheckHttpCode = value
        }
        if let value = dict["HealthCheckType"] as? String {
            self.healthCheckType = value
        }
        if let value = dict["HealthCheckURI"] as? String {
            self.healthCheckURI = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["Interval"] as? Int32 {
            self.interval = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerStatus"] as? String {
            self.listenerStatus = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["MasterSlaveServerGroupId"] as? String {
            self.masterSlaveServerGroupId = value
        }
        if let value = dict["MaxConnection"] as? Int32 {
            self.maxConnection = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PersistenceTimeout"] as? Int32 {
            self.persistenceTimeout = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
        if let value = dict["access_key_id"] as? String {
            self.accessKeyId = value
        }
    }
}

public class CreateLoadBalancerTCPListenerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateLoadBalancerTCPListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLoadBalancerTCPListenerResponseBody?

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
            var model = CreateLoadBalancerTCPListenerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLoadBalancerRequest : Tea.TeaModel {
    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: String?

    public var accessKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.accessKeyId != nil {
            map["access_key_id"] = self.accessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["access_key_id"] as? String {
            self.accessKeyId = value
        }
    }
}

public class DeleteLoadBalancerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteLoadBalancerListenerRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: String?

    public var accessKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.accessKeyId != nil {
            map["access_key_id"] = self.accessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["access_key_id"] as? String {
            self.accessKeyId = value
        }
    }
}

public class DeleteLoadBalancerListenerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteLoadBalancerListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLoadBalancerListenerResponseBody?

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
            var model = DeleteLoadBalancerListenerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackendServersRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: String?

    public var accessKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.accessKeyId != nil {
            map["access_key_id"] = self.accessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["access_key_id"] as? String {
            self.accessKeyId = value
        }
    }
}

public class DescribeBackendServersResponseBody : Tea.TeaModel {
    public class Listeners : Tea.TeaModel {
        public class Listener : Tea.TeaModel {
            public class BackendServers : Tea.TeaModel {
                public class BackendServer : Tea.TeaModel {
                    public var serverHealthStatus: String?

                    public var serverId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.serverHealthStatus != nil {
                            map["ServerHealthStatus"] = self.serverHealthStatus!
                        }
                        if self.serverId != nil {
                            map["ServerId"] = self.serverId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ServerHealthStatus"] as? String {
                            self.serverHealthStatus = value
                        }
                        if let value = dict["ServerId"] as? String {
                            self.serverId = value
                        }
                    }
                }
                public var backendServer: [DescribeBackendServersResponseBody.Listeners.Listener.BackendServers.BackendServer]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.backendServer != nil {
                        var tmp : [Any] = []
                        for k in self.backendServer! {
                            tmp.append(k.toMap())
                        }
                        map["BackendServer"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BackendServer"] as? [Any?] {
                        var tmp : [DescribeBackendServersResponseBody.Listeners.Listener.BackendServers.BackendServer] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeBackendServersResponseBody.Listeners.Listener.BackendServers.BackendServer()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.backendServer = tmp
                    }
                }
            }
            public var backendServers: DescribeBackendServersResponseBody.Listeners.Listener.BackendServers?

            public var listenerPort: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.backendServers?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backendServers != nil {
                    map["BackendServers"] = self.backendServers?.toMap()
                }
                if self.listenerPort != nil {
                    map["ListenerPort"] = self.listenerPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BackendServers"] as? [String: Any?] {
                    var model = DescribeBackendServersResponseBody.Listeners.Listener.BackendServers()
                    model.fromMap(value)
                    self.backendServers = model
                }
                if let value = dict["ListenerPort"] as? Int32 {
                    self.listenerPort = value
                }
            }
        }
        public var listener: [DescribeBackendServersResponseBody.Listeners.Listener]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.listener != nil {
                var tmp : [Any] = []
                for k in self.listener! {
                    tmp.append(k.toMap())
                }
                map["Listener"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Listener"] as? [Any?] {
                var tmp : [DescribeBackendServersResponseBody.Listeners.Listener] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackendServersResponseBody.Listeners.Listener()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.listener = tmp
            }
        }
    }
    public var listeners: DescribeBackendServersResponseBody.Listeners?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listeners?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listeners != nil {
            map["Listeners"] = self.listeners?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Listeners"] as? [String: Any?] {
            var model = DescribeBackendServersResponseBody.Listeners()
            model.fromMap(value)
            self.listeners = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeBackendServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackendServersResponseBody?

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
            var model = DescribeBackendServersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLoadBalancerAttributeRequest : Tea.TeaModel {
    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: String?

    public var accessKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.accessKeyId != nil {
            map["access_key_id"] = self.accessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["access_key_id"] as? String {
            self.accessKeyId = value
        }
    }
}

public class DescribeLoadBalancerAttributeResponseBody : Tea.TeaModel {
    public class BackendServers : Tea.TeaModel {
        public class BackendServer : Tea.TeaModel {
            public var serverId: String?

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
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var backendServer: [DescribeLoadBalancerAttributeResponseBody.BackendServers.BackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendServer != nil {
                var tmp : [Any] = []
                for k in self.backendServer! {
                    tmp.append(k.toMap())
                }
                map["BackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendServer"] as? [Any?] {
                var tmp : [DescribeLoadBalancerAttributeResponseBody.BackendServers.BackendServer] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerAttributeResponseBody.BackendServers.BackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.backendServer = tmp
            }
        }
    }
    public class ListenerPorts : Tea.TeaModel {
        public var listenerPort: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.listenerPort != nil {
                map["ListenerPort"] = self.listenerPort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ListenerPort"] as? [String] {
                self.listenerPort = value
            }
        }
    }
    public class ListenerPortsAndProtocal : Tea.TeaModel {
        public class ListenerPortAndProtocal : Tea.TeaModel {
            public var listenerPort: Int32?

            public var listenerProtocal: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.listenerPort != nil {
                    map["ListenerPort"] = self.listenerPort!
                }
                if self.listenerProtocal != nil {
                    map["ListenerProtocal"] = self.listenerProtocal!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ListenerPort"] as? Int32 {
                    self.listenerPort = value
                }
                if let value = dict["ListenerProtocal"] as? String {
                    self.listenerProtocal = value
                }
            }
        }
        public var listenerPortAndProtocal: [DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocal.ListenerPortAndProtocal]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.listenerPortAndProtocal != nil {
                var tmp : [Any] = []
                for k in self.listenerPortAndProtocal! {
                    tmp.append(k.toMap())
                }
                map["ListenerPortAndProtocal"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ListenerPortAndProtocal"] as? [Any?] {
                var tmp : [DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocal.ListenerPortAndProtocal] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocal.ListenerPortAndProtocal()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.listenerPortAndProtocal = tmp
            }
        }
    }
    public class ListenerPortsAndProtocol : Tea.TeaModel {
        public class ListenerPortAndProtocol : Tea.TeaModel {
            public var listenerPort: Int32?

            public var listenerProtocol: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.listenerPort != nil {
                    map["ListenerPort"] = self.listenerPort!
                }
                if self.listenerProtocol != nil {
                    map["ListenerProtocol"] = self.listenerProtocol!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ListenerPort"] as? Int32 {
                    self.listenerPort = value
                }
                if let value = dict["ListenerProtocol"] as? String {
                    self.listenerProtocol = value
                }
            }
        }
        public var listenerPortAndProtocol: [DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocol.ListenerPortAndProtocol]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.listenerPortAndProtocol != nil {
                var tmp : [Any] = []
                for k in self.listenerPortAndProtocol! {
                    tmp.append(k.toMap())
                }
                map["ListenerPortAndProtocol"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ListenerPortAndProtocol"] as? [Any?] {
                var tmp : [DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocol.ListenerPortAndProtocol] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocol.ListenerPortAndProtocol()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.listenerPortAndProtocol = tmp
            }
        }
    }
    public var address: String?

    public var addressType: String?

    public var autoReleaseTime: Int64?

    public var backendServers: DescribeLoadBalancerAttributeResponseBody.BackendServers?

    public var bandwidth: Int32?

    public var createTime: String?

    public var createTimeStamp: Int64?

    public var endTime: String?

    public var endTimeStamp: Int64?

    public var internetChargeType: String?

    public var isPublicAddress: String?

    public var listenerPorts: DescribeLoadBalancerAttributeResponseBody.ListenerPorts?

    public var listenerPortsAndProtocal: DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocal?

    public var listenerPortsAndProtocol: DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocol?

    public var loadBalancerId: String?

    public var loadBalancerName: String?

    public var loadBalancerSpec: String?

    public var loadBalancerStatus: String?

    public var masterZoneId: String?

    public var networkType: String?

    public var payType: String?

    public var regionId: String?

    public var regionIdAlias: String?

    public var requestId: String?

    public var slaveZoneId: String?

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
        try self.backendServers?.validate()
        try self.listenerPorts?.validate()
        try self.listenerPortsAndProtocal?.validate()
        try self.listenerPortsAndProtocol?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.autoReleaseTime != nil {
            map["AutoReleaseTime"] = self.autoReleaseTime!
        }
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers?.toMap()
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createTimeStamp != nil {
            map["CreateTimeStamp"] = self.createTimeStamp!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.endTimeStamp != nil {
            map["EndTimeStamp"] = self.endTimeStamp!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.isPublicAddress != nil {
            map["IsPublicAddress"] = self.isPublicAddress!
        }
        if self.listenerPorts != nil {
            map["ListenerPorts"] = self.listenerPorts?.toMap()
        }
        if self.listenerPortsAndProtocal != nil {
            map["ListenerPortsAndProtocal"] = self.listenerPortsAndProtocal?.toMap()
        }
        if self.listenerPortsAndProtocol != nil {
            map["ListenerPortsAndProtocol"] = self.listenerPortsAndProtocol?.toMap()
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
        }
        if self.loadBalancerSpec != nil {
            map["LoadBalancerSpec"] = self.loadBalancerSpec!
        }
        if self.loadBalancerStatus != nil {
            map["LoadBalancerStatus"] = self.loadBalancerStatus!
        }
        if self.masterZoneId != nil {
            map["MasterZoneId"] = self.masterZoneId!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regionIdAlias != nil {
            map["RegionIdAlias"] = self.regionIdAlias!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slaveZoneId != nil {
            map["SlaveZoneId"] = self.slaveZoneId!
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
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["AddressType"] as? String {
            self.addressType = value
        }
        if let value = dict["AutoReleaseTime"] as? Int64 {
            self.autoReleaseTime = value
        }
        if let value = dict["BackendServers"] as? [String: Any?] {
            var model = DescribeLoadBalancerAttributeResponseBody.BackendServers()
            model.fromMap(value)
            self.backendServers = model
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateTimeStamp"] as? Int64 {
            self.createTimeStamp = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EndTimeStamp"] as? Int64 {
            self.endTimeStamp = value
        }
        if let value = dict["InternetChargeType"] as? String {
            self.internetChargeType = value
        }
        if let value = dict["IsPublicAddress"] as? String {
            self.isPublicAddress = value
        }
        if let value = dict["ListenerPorts"] as? [String: Any?] {
            var model = DescribeLoadBalancerAttributeResponseBody.ListenerPorts()
            model.fromMap(value)
            self.listenerPorts = model
        }
        if let value = dict["ListenerPortsAndProtocal"] as? [String: Any?] {
            var model = DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocal()
            model.fromMap(value)
            self.listenerPortsAndProtocal = model
        }
        if let value = dict["ListenerPortsAndProtocol"] as? [String: Any?] {
            var model = DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocol()
            model.fromMap(value)
            self.listenerPortsAndProtocol = model
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
        }
        if let value = dict["LoadBalancerSpec"] as? String {
            self.loadBalancerSpec = value
        }
        if let value = dict["LoadBalancerStatus"] as? String {
            self.loadBalancerStatus = value
        }
        if let value = dict["MasterZoneId"] as? String {
            self.masterZoneId = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegionIdAlias"] as? String {
            self.regionIdAlias = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlaveZoneId"] as? String {
            self.slaveZoneId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DescribeLoadBalancerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLoadBalancerAttributeResponseBody?

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
            var model = DescribeLoadBalancerAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLoadBalancerHTTPListenerAttributeRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: String?

    public var accessKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.accessKeyId != nil {
            map["access_key_id"] = self.accessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["access_key_id"] as? String {
            self.accessKeyId = value
        }
    }
}

public class DescribeLoadBalancerHTTPListenerAttributeResponseBody : Tea.TeaModel {
    public var backendServerPort: Int32?

    public var bandwidth: Int32?

    public var cookie: String?

    public var cookieTimeout: Int32?

    public var domain: String?

    public var gzip: String?

    public var healthCheck: String?

    public var healthCheckConnectPort: Int32?

    public var healthCheckHttpCode: String?

    public var healthCheckTimeout: Int32?

    public var healthyThreshold: Int32?

    public var interval: Int32?

    public var listenerPort: Int32?

    public var maxConnection: Int32?

    public var requestId: String?

    public var scheduler: String?

    public var securityStatus: String?

    public var status: String?

    public var stickySession: String?

    public var stickySessionType: String?

    public var URI: String?

    public var unhealthyThreshold: Int32?

    public var VServerGroupId: String?

    public var XForwardedFor: String?

    public var XForwardedFor_SLBID: String?

    public var XForwardedFor_SLBIP: String?

    public var XForwardedFor_proto: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServerPort != nil {
            map["BackendServerPort"] = self.backendServerPort!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.cookie != nil {
            map["Cookie"] = self.cookie!
        }
        if self.cookieTimeout != nil {
            map["CookieTimeout"] = self.cookieTimeout!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.gzip != nil {
            map["Gzip"] = self.gzip!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckHttpCode != nil {
            map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
        }
        if self.healthCheckTimeout != nil {
            map["HealthCheckTimeout"] = self.healthCheckTimeout!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.maxConnection != nil {
            map["MaxConnection"] = self.maxConnection!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.securityStatus != nil {
            map["SecurityStatus"] = self.securityStatus!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.stickySession != nil {
            map["StickySession"] = self.stickySession!
        }
        if self.stickySessionType != nil {
            map["StickySessionType"] = self.stickySessionType!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        if self.XForwardedFor != nil {
            map["XForwardedFor"] = self.XForwardedFor!
        }
        if self.XForwardedFor_SLBID != nil {
            map["XForwardedFor_SLBID"] = self.XForwardedFor_SLBID!
        }
        if self.XForwardedFor_SLBIP != nil {
            map["XForwardedFor_SLBIP"] = self.XForwardedFor_SLBIP!
        }
        if self.XForwardedFor_proto != nil {
            map["XForwardedFor_proto"] = self.XForwardedFor_proto!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServerPort"] as? Int32 {
            self.backendServerPort = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["Cookie"] as? String {
            self.cookie = value
        }
        if let value = dict["CookieTimeout"] as? Int32 {
            self.cookieTimeout = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Gzip"] as? String {
            self.gzip = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckHttpCode"] as? String {
            self.healthCheckHttpCode = value
        }
        if let value = dict["HealthCheckTimeout"] as? Int32 {
            self.healthCheckTimeout = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["Interval"] as? Int32 {
            self.interval = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["MaxConnection"] as? Int32 {
            self.maxConnection = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["SecurityStatus"] as? String {
            self.securityStatus = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StickySession"] as? String {
            self.stickySession = value
        }
        if let value = dict["StickySessionType"] as? String {
            self.stickySessionType = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
        if let value = dict["XForwardedFor"] as? String {
            self.XForwardedFor = value
        }
        if let value = dict["XForwardedFor_SLBID"] as? String {
            self.XForwardedFor_SLBID = value
        }
        if let value = dict["XForwardedFor_SLBIP"] as? String {
            self.XForwardedFor_SLBIP = value
        }
        if let value = dict["XForwardedFor_proto"] as? String {
            self.XForwardedFor_proto = value
        }
    }
}

public class DescribeLoadBalancerHTTPListenerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLoadBalancerHTTPListenerAttributeResponseBody?

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
            var model = DescribeLoadBalancerHTTPListenerAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLoadBalancerTCPListenerAttributeRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: String?

    public var accessKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.accessKeyId != nil {
            map["access_key_id"] = self.accessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["access_key_id"] as? String {
            self.accessKeyId = value
        }
    }
}

public class DescribeLoadBalancerTCPListenerAttributeResponseBody : Tea.TeaModel {
    public var backendServerPort: Int32?

    public var bandwidth: Int32?

    public var connectPort: Int32?

    public var connectTimeout: Int32?

    public var establishedTimeout: Int32?

    public var healthCheck: String?

    public var healthCheckDomain: String?

    public var healthCheckHttpCode: String?

    public var healthCheckType: String?

    public var healthCheckURI: String?

    public var healthyThreshold: Int32?

    public var interval: Int32?

    public var listenerPort: Int32?

    public var masterSlaveServerGroupId: String?

    public var maxConnection: Int32?

    public var persistenceTimeout: Int32?

    public var requestId: String?

    public var scheduler: String?

    public var status: String?

    public var synProxy: String?

    public var unhealthyThreshold: Int32?

    public var VServerGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServerPort != nil {
            map["BackendServerPort"] = self.backendServerPort!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.connectPort != nil {
            map["ConnectPort"] = self.connectPort!
        }
        if self.connectTimeout != nil {
            map["ConnectTimeout"] = self.connectTimeout!
        }
        if self.establishedTimeout != nil {
            map["EstablishedTimeout"] = self.establishedTimeout!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckDomain != nil {
            map["HealthCheckDomain"] = self.healthCheckDomain!
        }
        if self.healthCheckHttpCode != nil {
            map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
        }
        if self.healthCheckType != nil {
            map["HealthCheckType"] = self.healthCheckType!
        }
        if self.healthCheckURI != nil {
            map["HealthCheckURI"] = self.healthCheckURI!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.masterSlaveServerGroupId != nil {
            map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
        }
        if self.maxConnection != nil {
            map["MaxConnection"] = self.maxConnection!
        }
        if self.persistenceTimeout != nil {
            map["PersistenceTimeout"] = self.persistenceTimeout!
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
        if self.synProxy != nil {
            map["SynProxy"] = self.synProxy!
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServerPort"] as? Int32 {
            self.backendServerPort = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["ConnectPort"] as? Int32 {
            self.connectPort = value
        }
        if let value = dict["ConnectTimeout"] as? Int32 {
            self.connectTimeout = value
        }
        if let value = dict["EstablishedTimeout"] as? Int32 {
            self.establishedTimeout = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckDomain"] as? String {
            self.healthCheckDomain = value
        }
        if let value = dict["HealthCheckHttpCode"] as? String {
            self.healthCheckHttpCode = value
        }
        if let value = dict["HealthCheckType"] as? String {
            self.healthCheckType = value
        }
        if let value = dict["HealthCheckURI"] as? String {
            self.healthCheckURI = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["Interval"] as? Int32 {
            self.interval = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["MasterSlaveServerGroupId"] as? String {
            self.masterSlaveServerGroupId = value
        }
        if let value = dict["MaxConnection"] as? Int32 {
            self.maxConnection = value
        }
        if let value = dict["PersistenceTimeout"] as? Int32 {
            self.persistenceTimeout = value
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
        if let value = dict["SynProxy"] as? String {
            self.synProxy = value
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
    }
}

public class DescribeLoadBalancerTCPListenerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLoadBalancerTCPListenerAttributeResponseBody?

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
            var model = DescribeLoadBalancerTCPListenerAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLoadBalancersRequest : Tea.TeaModel {
    public var address: String?

    public var addressType: String?

    public var internetChargeType: String?

    public var loadBalancerId: String?

    public var loadBalancerName: String?

    public var masterZoneId: String?

    public var networkType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var payType: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var serverId: String?

    public var serverIntranetAddress: String?

    public var slaveZoneId: String?

    public var tags: String?

    public var vSwitchId: String?

    public var vpcId: String?

    public var accessKeyId: String?

    public override init() {
        super.init()
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
            map["Address"] = self.address!
        }
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
        }
        if self.masterZoneId != nil {
            map["MasterZoneId"] = self.masterZoneId!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
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
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        if self.serverIntranetAddress != nil {
            map["ServerIntranetAddress"] = self.serverIntranetAddress!
        }
        if self.slaveZoneId != nil {
            map["SlaveZoneId"] = self.slaveZoneId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.accessKeyId != nil {
            map["access_key_id"] = self.accessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["AddressType"] as? String {
            self.addressType = value
        }
        if let value = dict["InternetChargeType"] as? String {
            self.internetChargeType = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
        }
        if let value = dict["MasterZoneId"] as? String {
            self.masterZoneId = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ServerId"] as? String {
            self.serverId = value
        }
        if let value = dict["ServerIntranetAddress"] as? String {
            self.serverIntranetAddress = value
        }
        if let value = dict["SlaveZoneId"] as? String {
            self.slaveZoneId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["access_key_id"] as? String {
            self.accessKeyId = value
        }
    }
}

public class DescribeLoadBalancersResponseBody : Tea.TeaModel {
    public class LoadBalancers : Tea.TeaModel {
        public class LoadBalancer : Tea.TeaModel {
            public var address: String?

            public var addressType: String?

            public var createTime: String?

            public var createTimeStamp: Int64?

            public var internetChargeType: String?

            public var loadBalancerId: String?

            public var loadBalancerName: String?

            public var loadBalancerStatus: String?

            public var masterZoneId: String?

            public var networkType: String?

            public var payType: String?

            public var regionId: String?

            public var regionIdAlias: String?

            public var resourceGroupId: String?

            public var slaveZoneId: String?

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
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.addressType != nil {
                    map["AddressType"] = self.addressType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createTimeStamp != nil {
                    map["CreateTimeStamp"] = self.createTimeStamp!
                }
                if self.internetChargeType != nil {
                    map["InternetChargeType"] = self.internetChargeType!
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
                if self.masterZoneId != nil {
                    map["MasterZoneId"] = self.masterZoneId!
                }
                if self.networkType != nil {
                    map["NetworkType"] = self.networkType!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.regionIdAlias != nil {
                    map["RegionIdAlias"] = self.regionIdAlias!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.slaveZoneId != nil {
                    map["SlaveZoneId"] = self.slaveZoneId!
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
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["AddressType"] as? String {
                    self.addressType = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["CreateTimeStamp"] as? Int64 {
                    self.createTimeStamp = value
                }
                if let value = dict["InternetChargeType"] as? String {
                    self.internetChargeType = value
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
                if let value = dict["MasterZoneId"] as? String {
                    self.masterZoneId = value
                }
                if let value = dict["NetworkType"] as? String {
                    self.networkType = value
                }
                if let value = dict["PayType"] as? String {
                    self.payType = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RegionIdAlias"] as? String {
                    self.regionIdAlias = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["SlaveZoneId"] as? String {
                    self.slaveZoneId = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public var loadBalancer: [DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.loadBalancer != nil {
                var tmp : [Any] = []
                for k in self.loadBalancer! {
                    tmp.append(k.toMap())
                }
                map["LoadBalancer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LoadBalancer"] as? [Any?] {
                var tmp : [DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.loadBalancer = tmp
            }
        }
    }
    public var loadBalancers: DescribeLoadBalancersResponseBody.LoadBalancers?

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
        try self.loadBalancers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loadBalancers != nil {
            map["LoadBalancers"] = self.loadBalancers?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancers"] as? [String: Any?] {
            var model = DescribeLoadBalancersResponseBody.LoadBalancers()
            model.fromMap(value)
            self.loadBalancers = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeLoadBalancersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLoadBalancersResponseBody?

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
            var model = DescribeLoadBalancersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: String?

    public var accessKeyId: String?

    public override init() {
        super.init()
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
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.accessKeyId != nil {
            map["access_key_id"] = self.accessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["access_key_id"] as? String {
            self.accessKeyId = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? [Any?] {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsResponseBody.Regions.Region()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(value)
            self.regions = model
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

public class RemoveBackendServersRequest : Tea.TeaModel {
    public var backendServers: String?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: String?

    public var accessKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.accessKeyId != nil {
            map["access_key_id"] = self.accessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? String {
            self.backendServers = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["access_key_id"] as? String {
            self.accessKeyId = value
        }
    }
}

public class RemoveBackendServersResponseBody : Tea.TeaModel {
    public class BackendServers : Tea.TeaModel {
        public class BackendServer : Tea.TeaModel {
            public var serverId: String?

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
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var backendServer: [RemoveBackendServersResponseBody.BackendServers.BackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendServer != nil {
                var tmp : [Any] = []
                for k in self.backendServer! {
                    tmp.append(k.toMap())
                }
                map["BackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendServer"] as? [Any?] {
                var tmp : [RemoveBackendServersResponseBody.BackendServers.BackendServer] = []
                for v in value {
                    if v != nil {
                        var model = RemoveBackendServersResponseBody.BackendServers.BackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.backendServer = tmp
            }
        }
    }
    public var backendServers: RemoveBackendServersResponseBody.BackendServers?

    public var loadBalancerId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers?.toMap()
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? [String: Any?] {
            var model = RemoveBackendServersResponseBody.BackendServers()
            model.fromMap(value)
            self.backendServers = model
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RemoveBackendServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveBackendServersResponseBody?

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
            var model = RemoveBackendServersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetLoadBalancerHTTPListenerAttributeRequest : Tea.TeaModel {
    public var cookie: String?

    public var cookieTimeout: Int32?

    public var domain: String?

    public var healthCheck: String?

    public var healthCheckTimeout: Int32?

    public var healthyThreshold: Int32?

    public var hostId: String?

    public var interval: Int32?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: String?

    public var scheduler: String?

    public var stickySession: String?

    public var stickySessionType: String?

    public var URI: String?

    public var unhealthyThreshold: Int32?

    public var XForwardedFor: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cookie != nil {
            map["Cookie"] = self.cookie!
        }
        if self.cookieTimeout != nil {
            map["CookieTimeout"] = self.cookieTimeout!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckTimeout != nil {
            map["HealthCheckTimeout"] = self.healthCheckTimeout!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.stickySession != nil {
            map["StickySession"] = self.stickySession!
        }
        if self.stickySessionType != nil {
            map["StickySessionType"] = self.stickySessionType!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.XForwardedFor != nil {
            map["XForwardedFor"] = self.XForwardedFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cookie"] as? String {
            self.cookie = value
        }
        if let value = dict["CookieTimeout"] as? Int32 {
            self.cookieTimeout = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckTimeout"] as? Int32 {
            self.healthCheckTimeout = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["HostId"] as? String {
            self.hostId = value
        }
        if let value = dict["Interval"] as? Int32 {
            self.interval = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["StickySession"] as? String {
            self.stickySession = value
        }
        if let value = dict["StickySessionType"] as? String {
            self.stickySessionType = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["XForwardedFor"] as? String {
            self.XForwardedFor = value
        }
    }
}

public class SetLoadBalancerHTTPListenerAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class SetLoadBalancerHTTPListenerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetLoadBalancerHTTPListenerAttributeResponseBody?

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
            var model = SetLoadBalancerHTTPListenerAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetLoadBalancerListenerStatusRequest : Tea.TeaModel {
    public var hostId: String?

    public var listenerPort: Int32?

    public var listenerStatus: String?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerStatus != nil {
            map["ListenerStatus"] = self.listenerStatus!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostId"] as? String {
            self.hostId = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerStatus"] as? String {
            self.listenerStatus = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class SetLoadBalancerListenerStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class SetLoadBalancerListenerStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetLoadBalancerListenerStatusResponseBody?

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
            var model = SetLoadBalancerListenerStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetLoadBalancerNameRequest : Tea.TeaModel {
    public var loadBalancerId: String?

    public var loadBalancerName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: String?

    public var accessKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.accessKeyId != nil {
            map["access_key_id"] = self.accessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["access_key_id"] as? String {
            self.accessKeyId = value
        }
    }
}

public class SetLoadBalancerNameResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class SetLoadBalancerNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetLoadBalancerNameResponseBody?

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
            var model = SetLoadBalancerNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetLoadBalancerStatusRequest : Tea.TeaModel {
    public var loadBalancerId: String?

    public var loadBalancerStatus: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: String?

    public var accessKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerStatus != nil {
            map["LoadBalancerStatus"] = self.loadBalancerStatus!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.accessKeyId != nil {
            map["access_key_id"] = self.accessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerStatus"] as? String {
            self.loadBalancerStatus = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["access_key_id"] as? String {
            self.accessKeyId = value
        }
    }
}

public class SetLoadBalancerStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class SetLoadBalancerStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetLoadBalancerStatusResponseBody?

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
            var model = SetLoadBalancerStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetLoadBalancerTCPListenerAttributeRequest : Tea.TeaModel {
    public var connectPort: Int32?

    public var connectTimeout: Int32?

    public var healthCheck: String?

    public var healthyThreshold: Int32?

    public var hostId: String?

    public var interval: Int32?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: String?

    public var persistenceTimeout: Int32?

    public var scheduler: String?

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
        if self.connectPort != nil {
            map["ConnectPort"] = self.connectPort!
        }
        if self.connectTimeout != nil {
            map["ConnectTimeout"] = self.connectTimeout!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.persistenceTimeout != nil {
            map["PersistenceTimeout"] = self.persistenceTimeout!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConnectPort"] as? Int32 {
            self.connectPort = value
        }
        if let value = dict["ConnectTimeout"] as? Int32 {
            self.connectTimeout = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["HostId"] as? String {
            self.hostId = value
        }
        if let value = dict["Interval"] as? Int32 {
            self.interval = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PersistenceTimeout"] as? Int32 {
            self.persistenceTimeout = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
    }
}

public class SetLoadBalancerTCPListenerAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class SetLoadBalancerTCPListenerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetLoadBalancerTCPListenerAttributeResponseBody?

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
            var model = SetLoadBalancerTCPListenerAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
